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
$ docker pull ros@sha256:d390f37f8f1c7d09bb7f4b59c1d0f0809e65252f5cff8b69b45924e11fea82f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:8c85d3dfd16bc3cde54469eba4aff1d01a333c1fbf0911489d87c009decdde96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313719114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32db3b934782c82dfff6f872fb8497191784241eea26f4aabcd7cef16152a7b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:35:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:41:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:41:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:42:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:42:33 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:42:34 GMT
ENV ROS_DISTRO=indigo
# Wed, 22 Aug 2018 19:45:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:45:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:45:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:45:30 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 19:46:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebf088c95975c5015ae52790de60b05c135d99e4ab7c090f982ca287bbbd70e`  
		Last Modified: Wed, 22 Aug 2018 19:22:13 GMT  
		Size: 18.0 MB (18035326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bf9a80c88854e663c21b8c44b4781d1d14f72a903543e20501bde89f3e0333`  
		Last Modified: Wed, 22 Aug 2018 20:39:01 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56033e90ffd85f2f2471fcac69a81ffa01bb58778c77bcc47c486ee623cec3a8`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 260.3 KB (260329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cfed3750b6bc22f33071ff5dfbb69e61276cd45400a5503d9305651a04ba3b`  
		Last Modified: Wed, 22 Aug 2018 20:39:13 GMT  
		Size: 30.9 MB (30946528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd1b8ad9380a3bfe86a0f2e02f05bcbe988e43701a9b2e28a73e36900826f0`  
		Last Modified: Wed, 22 Aug 2018 20:38:58 GMT  
		Size: 801.4 KB (801392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf292d48b14aa2e7f0c9140c61e20b5ccde015bd9df71e010ca0f7f685f276`  
		Last Modified: Wed, 22 Aug 2018 20:39:54 GMT  
		Size: 149.7 MB (149685816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2b1719e64815d204a701f7ec3448406af93c26bf2f87fa52b8938268735605`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431aedae5280212b806968ceaff20699ed92931ffac6aae7e05f78ab23bcdce8`  
		Last Modified: Wed, 22 Aug 2018 20:41:00 GMT  
		Size: 46.8 MB (46775673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:caa165f6a19ff2ead7e83db51974be4fa8555439eb58776789a34c5f9357eb65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284708047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2300de99c655400db5bde5785dc822e3abc874cf1f9bfee2c066940a61f15d24`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:23:05 GMT
ADD file:7bbac98bb65c84c77ea4e287e758111798edcdc61c0d78672c1623bdf729ac11 in / 
# Tue, 17 Jul 2018 13:23:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:23:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:23:12 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 17:11:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:11:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 17:11:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 17:12:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 17:12:57 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 17:13:05 GMT
ENV ROS_DISTRO=indigo
# Tue, 17 Jul 2018 17:14:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 17:14:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 17:14:38 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 17:15:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9c2a082512cf3a8830b91d42bb98b629740d5fd24b80d72fcb6c02420898b67e`  
		Last Modified: Tue, 17 Jul 2018 13:26:24 GMT  
		Size: 61.5 MB (61468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b41e83acf679b5d2b57b403be2a7fdf6356f920904951de07f61716c83bbee`  
		Last Modified: Tue, 17 Jul 2018 13:26:07 GMT  
		Size: 76.8 KB (76769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a277efdf4041c4ff20411bf58600b676449a65a799fd39c199aefb9040b13`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6618850e175b633967a0128ec1cc0f3bf4a3271fb8e6411d574048a9ed6428`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef7a8d6ef97dbddd26f5c20d0b650717aca5f798f1b286dc6ed527eb06965`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b82069b2a50c353e905bfcae17380b32a9656c8952682843864c514b39b5f9`  
		Last Modified: Tue, 17 Jul 2018 17:46:57 GMT  
		Size: 16.0 MB (15992494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b843c2b3653e0a697a51a8d54fcf3450a45b21c53e5342723e978625aff4d`  
		Last Modified: Tue, 17 Jul 2018 17:46:50 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559d5bfca42baff179f33fe4a7c6524796727057eef2b5e7abdc4079d670b2e4`  
		Last Modified: Tue, 17 Jul 2018 17:46:52 GMT  
		Size: 260.3 KB (260336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58327eb1e7e55e9e0f6b0a144ae9d2c8ab6713dc67fb22a1078034a34536b7b6`  
		Last Modified: Tue, 17 Jul 2018 17:46:59 GMT  
		Size: 28.4 MB (28387811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be067005e48ca5e4ecca2a5034fbda0751956d874b39632fa9d21411b65eb41`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 794.7 KB (794660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acba3fdb189895142a71fb0a4b350fa86870da50084bf85a7fcbb344bcf3b3a`  
		Last Modified: Tue, 17 Jul 2018 17:47:33 GMT  
		Size: 137.3 MB (137326483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d550e74d4a543e2acc3cf5ad99afad3ba7291cba002c687bb45a305841935758`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed521622f24c54a706b444f17d89f01b4c68b813e1e6fec240303f18c03c677`  
		Last Modified: Tue, 17 Jul 2018 17:48:37 GMT  
		Size: 40.4 MB (40386111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:86d0c807fb0c72e5738b94254a49b6a09d551a3d88b1b8f5477978e79dbc1756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:02c666b8691fda816b27080d6af718a8f8e87de8da306229dbbeb4f61c435395
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.0 MB (549973027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230507c44d96020e3b064f02c6160d32c4e68a4cbb0331cac4003182ec3ee922`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:35:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:41:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:41:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:42:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:42:33 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:42:34 GMT
ENV ROS_DISTRO=indigo
# Wed, 22 Aug 2018 19:45:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:45:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:45:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:45:30 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 19:46:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:08 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebf088c95975c5015ae52790de60b05c135d99e4ab7c090f982ca287bbbd70e`  
		Last Modified: Wed, 22 Aug 2018 19:22:13 GMT  
		Size: 18.0 MB (18035326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bf9a80c88854e663c21b8c44b4781d1d14f72a903543e20501bde89f3e0333`  
		Last Modified: Wed, 22 Aug 2018 20:39:01 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56033e90ffd85f2f2471fcac69a81ffa01bb58778c77bcc47c486ee623cec3a8`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 260.3 KB (260329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cfed3750b6bc22f33071ff5dfbb69e61276cd45400a5503d9305651a04ba3b`  
		Last Modified: Wed, 22 Aug 2018 20:39:13 GMT  
		Size: 30.9 MB (30946528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd1b8ad9380a3bfe86a0f2e02f05bcbe988e43701a9b2e28a73e36900826f0`  
		Last Modified: Wed, 22 Aug 2018 20:38:58 GMT  
		Size: 801.4 KB (801392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf292d48b14aa2e7f0c9140c61e20b5ccde015bd9df71e010ca0f7f685f276`  
		Last Modified: Wed, 22 Aug 2018 20:39:54 GMT  
		Size: 149.7 MB (149685816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2b1719e64815d204a701f7ec3448406af93c26bf2f87fa52b8938268735605`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431aedae5280212b806968ceaff20699ed92931ffac6aae7e05f78ab23bcdce8`  
		Last Modified: Wed, 22 Aug 2018 20:41:00 GMT  
		Size: 46.8 MB (46775673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba18837ab061856b4b4868856dddc6faf93ba42b64af91671918b50e82984a0`  
		Last Modified: Wed, 22 Aug 2018 20:44:38 GMT  
		Size: 236.3 MB (236253913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:f8b78c07cac96b81c003d1b8c7e8ec51ffe70a42b5d3403a2d93cef71bd444ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 MB (496489547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a860c41fb758d7fee27b44de81f979502b15dfeec4ce4f0bc9e6e7b02525c3fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:23:05 GMT
ADD file:7bbac98bb65c84c77ea4e287e758111798edcdc61c0d78672c1623bdf729ac11 in / 
# Tue, 17 Jul 2018 13:23:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:23:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:23:12 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 17:11:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:11:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 17:11:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 17:12:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 17:12:57 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 17:13:05 GMT
ENV ROS_DISTRO=indigo
# Tue, 17 Jul 2018 17:14:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 17:14:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 17:14:38 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 17:15:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:19:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9c2a082512cf3a8830b91d42bb98b629740d5fd24b80d72fcb6c02420898b67e`  
		Last Modified: Tue, 17 Jul 2018 13:26:24 GMT  
		Size: 61.5 MB (61468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b41e83acf679b5d2b57b403be2a7fdf6356f920904951de07f61716c83bbee`  
		Last Modified: Tue, 17 Jul 2018 13:26:07 GMT  
		Size: 76.8 KB (76769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a277efdf4041c4ff20411bf58600b676449a65a799fd39c199aefb9040b13`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6618850e175b633967a0128ec1cc0f3bf4a3271fb8e6411d574048a9ed6428`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef7a8d6ef97dbddd26f5c20d0b650717aca5f798f1b286dc6ed527eb06965`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b82069b2a50c353e905bfcae17380b32a9656c8952682843864c514b39b5f9`  
		Last Modified: Tue, 17 Jul 2018 17:46:57 GMT  
		Size: 16.0 MB (15992494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b843c2b3653e0a697a51a8d54fcf3450a45b21c53e5342723e978625aff4d`  
		Last Modified: Tue, 17 Jul 2018 17:46:50 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559d5bfca42baff179f33fe4a7c6524796727057eef2b5e7abdc4079d670b2e4`  
		Last Modified: Tue, 17 Jul 2018 17:46:52 GMT  
		Size: 260.3 KB (260336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58327eb1e7e55e9e0f6b0a144ae9d2c8ab6713dc67fb22a1078034a34536b7b6`  
		Last Modified: Tue, 17 Jul 2018 17:46:59 GMT  
		Size: 28.4 MB (28387811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be067005e48ca5e4ecca2a5034fbda0751956d874b39632fa9d21411b65eb41`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 794.7 KB (794660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acba3fdb189895142a71fb0a4b350fa86870da50084bf85a7fcbb344bcf3b3a`  
		Last Modified: Tue, 17 Jul 2018 17:47:33 GMT  
		Size: 137.3 MB (137326483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d550e74d4a543e2acc3cf5ad99afad3ba7291cba002c687bb45a305841935758`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed521622f24c54a706b444f17d89f01b4c68b813e1e6fec240303f18c03c677`  
		Last Modified: Tue, 17 Jul 2018 17:48:37 GMT  
		Size: 40.4 MB (40386111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f654ebcefb441ee521db385c1f52f336f41d2573e23a8d3fbef9ea19a91e230`  
		Last Modified: Tue, 17 Jul 2018 17:51:37 GMT  
		Size: 211.8 MB (211781500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:86d0c807fb0c72e5738b94254a49b6a09d551a3d88b1b8f5477978e79dbc1756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:02c666b8691fda816b27080d6af718a8f8e87de8da306229dbbeb4f61c435395
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.0 MB (549973027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230507c44d96020e3b064f02c6160d32c4e68a4cbb0331cac4003182ec3ee922`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:35:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:41:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:41:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:42:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:42:33 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:42:34 GMT
ENV ROS_DISTRO=indigo
# Wed, 22 Aug 2018 19:45:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:45:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:45:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:45:30 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 19:46:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:08 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebf088c95975c5015ae52790de60b05c135d99e4ab7c090f982ca287bbbd70e`  
		Last Modified: Wed, 22 Aug 2018 19:22:13 GMT  
		Size: 18.0 MB (18035326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bf9a80c88854e663c21b8c44b4781d1d14f72a903543e20501bde89f3e0333`  
		Last Modified: Wed, 22 Aug 2018 20:39:01 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56033e90ffd85f2f2471fcac69a81ffa01bb58778c77bcc47c486ee623cec3a8`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 260.3 KB (260329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cfed3750b6bc22f33071ff5dfbb69e61276cd45400a5503d9305651a04ba3b`  
		Last Modified: Wed, 22 Aug 2018 20:39:13 GMT  
		Size: 30.9 MB (30946528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd1b8ad9380a3bfe86a0f2e02f05bcbe988e43701a9b2e28a73e36900826f0`  
		Last Modified: Wed, 22 Aug 2018 20:38:58 GMT  
		Size: 801.4 KB (801392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf292d48b14aa2e7f0c9140c61e20b5ccde015bd9df71e010ca0f7f685f276`  
		Last Modified: Wed, 22 Aug 2018 20:39:54 GMT  
		Size: 149.7 MB (149685816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2b1719e64815d204a701f7ec3448406af93c26bf2f87fa52b8938268735605`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431aedae5280212b806968ceaff20699ed92931ffac6aae7e05f78ab23bcdce8`  
		Last Modified: Wed, 22 Aug 2018 20:41:00 GMT  
		Size: 46.8 MB (46775673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba18837ab061856b4b4868856dddc6faf93ba42b64af91671918b50e82984a0`  
		Last Modified: Wed, 22 Aug 2018 20:44:38 GMT  
		Size: 236.3 MB (236253913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:f8b78c07cac96b81c003d1b8c7e8ec51ffe70a42b5d3403a2d93cef71bd444ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 MB (496489547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a860c41fb758d7fee27b44de81f979502b15dfeec4ce4f0bc9e6e7b02525c3fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:23:05 GMT
ADD file:7bbac98bb65c84c77ea4e287e758111798edcdc61c0d78672c1623bdf729ac11 in / 
# Tue, 17 Jul 2018 13:23:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:23:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:23:12 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 17:11:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:11:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 17:11:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 17:12:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 17:12:57 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 17:13:05 GMT
ENV ROS_DISTRO=indigo
# Tue, 17 Jul 2018 17:14:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 17:14:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 17:14:38 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 17:15:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:19:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9c2a082512cf3a8830b91d42bb98b629740d5fd24b80d72fcb6c02420898b67e`  
		Last Modified: Tue, 17 Jul 2018 13:26:24 GMT  
		Size: 61.5 MB (61468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b41e83acf679b5d2b57b403be2a7fdf6356f920904951de07f61716c83bbee`  
		Last Modified: Tue, 17 Jul 2018 13:26:07 GMT  
		Size: 76.8 KB (76769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a277efdf4041c4ff20411bf58600b676449a65a799fd39c199aefb9040b13`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6618850e175b633967a0128ec1cc0f3bf4a3271fb8e6411d574048a9ed6428`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef7a8d6ef97dbddd26f5c20d0b650717aca5f798f1b286dc6ed527eb06965`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b82069b2a50c353e905bfcae17380b32a9656c8952682843864c514b39b5f9`  
		Last Modified: Tue, 17 Jul 2018 17:46:57 GMT  
		Size: 16.0 MB (15992494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b843c2b3653e0a697a51a8d54fcf3450a45b21c53e5342723e978625aff4d`  
		Last Modified: Tue, 17 Jul 2018 17:46:50 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559d5bfca42baff179f33fe4a7c6524796727057eef2b5e7abdc4079d670b2e4`  
		Last Modified: Tue, 17 Jul 2018 17:46:52 GMT  
		Size: 260.3 KB (260336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58327eb1e7e55e9e0f6b0a144ae9d2c8ab6713dc67fb22a1078034a34536b7b6`  
		Last Modified: Tue, 17 Jul 2018 17:46:59 GMT  
		Size: 28.4 MB (28387811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be067005e48ca5e4ecca2a5034fbda0751956d874b39632fa9d21411b65eb41`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 794.7 KB (794660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acba3fdb189895142a71fb0a4b350fa86870da50084bf85a7fcbb344bcf3b3a`  
		Last Modified: Tue, 17 Jul 2018 17:47:33 GMT  
		Size: 137.3 MB (137326483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d550e74d4a543e2acc3cf5ad99afad3ba7291cba002c687bb45a305841935758`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed521622f24c54a706b444f17d89f01b4c68b813e1e6fec240303f18c03c677`  
		Last Modified: Tue, 17 Jul 2018 17:48:37 GMT  
		Size: 40.4 MB (40386111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f654ebcefb441ee521db385c1f52f336f41d2573e23a8d3fbef9ea19a91e230`  
		Last Modified: Tue, 17 Jul 2018 17:51:37 GMT  
		Size: 211.8 MB (211781500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:1fd4bea2e91cda6a9e95d9a938009fe3c783770cce67c8c0a9e1940d3b11ee19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:0200da09b954ec908ca72bc639196ed38219e314c57c3e8cb2193d3f6d602db2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.7 MB (332748898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d969fd1aff4abfc2f226344c733708e6dc2ec03a3526afa1b2fe13ce5b51fa7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:35:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:41:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:41:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:42:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:42:33 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:42:34 GMT
ENV ROS_DISTRO=indigo
# Wed, 22 Aug 2018 19:45:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:45:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:45:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:45:30 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 19:46:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:48:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebf088c95975c5015ae52790de60b05c135d99e4ab7c090f982ca287bbbd70e`  
		Last Modified: Wed, 22 Aug 2018 19:22:13 GMT  
		Size: 18.0 MB (18035326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bf9a80c88854e663c21b8c44b4781d1d14f72a903543e20501bde89f3e0333`  
		Last Modified: Wed, 22 Aug 2018 20:39:01 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56033e90ffd85f2f2471fcac69a81ffa01bb58778c77bcc47c486ee623cec3a8`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 260.3 KB (260329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cfed3750b6bc22f33071ff5dfbb69e61276cd45400a5503d9305651a04ba3b`  
		Last Modified: Wed, 22 Aug 2018 20:39:13 GMT  
		Size: 30.9 MB (30946528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd1b8ad9380a3bfe86a0f2e02f05bcbe988e43701a9b2e28a73e36900826f0`  
		Last Modified: Wed, 22 Aug 2018 20:38:58 GMT  
		Size: 801.4 KB (801392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf292d48b14aa2e7f0c9140c61e20b5ccde015bd9df71e010ca0f7f685f276`  
		Last Modified: Wed, 22 Aug 2018 20:39:54 GMT  
		Size: 149.7 MB (149685816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2b1719e64815d204a701f7ec3448406af93c26bf2f87fa52b8938268735605`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431aedae5280212b806968ceaff20699ed92931ffac6aae7e05f78ab23bcdce8`  
		Last Modified: Wed, 22 Aug 2018 20:41:00 GMT  
		Size: 46.8 MB (46775673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bfc4368ff1964b754700d596383afddbaeee853c1b46eee7457ab57862a582`  
		Last Modified: Wed, 22 Aug 2018 20:42:24 GMT  
		Size: 19.0 MB (19029784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:b20022af12ba0aa57e56abb28493df05099a2b082106418c152005222857497e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302391831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01608070aa7d7f4f6a493672452ecc5922c60c71b03da9d9c6fd31f8e9f407a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:23:05 GMT
ADD file:7bbac98bb65c84c77ea4e287e758111798edcdc61c0d78672c1623bdf729ac11 in / 
# Tue, 17 Jul 2018 13:23:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:23:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:23:12 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 17:11:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:11:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 17:11:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 17:12:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 17:12:57 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 17:13:05 GMT
ENV ROS_DISTRO=indigo
# Tue, 17 Jul 2018 17:14:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 17:14:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 17:14:38 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 17:15:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:16:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9c2a082512cf3a8830b91d42bb98b629740d5fd24b80d72fcb6c02420898b67e`  
		Last Modified: Tue, 17 Jul 2018 13:26:24 GMT  
		Size: 61.5 MB (61468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b41e83acf679b5d2b57b403be2a7fdf6356f920904951de07f61716c83bbee`  
		Last Modified: Tue, 17 Jul 2018 13:26:07 GMT  
		Size: 76.8 KB (76769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a277efdf4041c4ff20411bf58600b676449a65a799fd39c199aefb9040b13`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6618850e175b633967a0128ec1cc0f3bf4a3271fb8e6411d574048a9ed6428`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef7a8d6ef97dbddd26f5c20d0b650717aca5f798f1b286dc6ed527eb06965`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b82069b2a50c353e905bfcae17380b32a9656c8952682843864c514b39b5f9`  
		Last Modified: Tue, 17 Jul 2018 17:46:57 GMT  
		Size: 16.0 MB (15992494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b843c2b3653e0a697a51a8d54fcf3450a45b21c53e5342723e978625aff4d`  
		Last Modified: Tue, 17 Jul 2018 17:46:50 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559d5bfca42baff179f33fe4a7c6524796727057eef2b5e7abdc4079d670b2e4`  
		Last Modified: Tue, 17 Jul 2018 17:46:52 GMT  
		Size: 260.3 KB (260336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58327eb1e7e55e9e0f6b0a144ae9d2c8ab6713dc67fb22a1078034a34536b7b6`  
		Last Modified: Tue, 17 Jul 2018 17:46:59 GMT  
		Size: 28.4 MB (28387811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be067005e48ca5e4ecca2a5034fbda0751956d874b39632fa9d21411b65eb41`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 794.7 KB (794660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acba3fdb189895142a71fb0a4b350fa86870da50084bf85a7fcbb344bcf3b3a`  
		Last Modified: Tue, 17 Jul 2018 17:47:33 GMT  
		Size: 137.3 MB (137326483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d550e74d4a543e2acc3cf5ad99afad3ba7291cba002c687bb45a305841935758`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed521622f24c54a706b444f17d89f01b4c68b813e1e6fec240303f18c03c677`  
		Last Modified: Tue, 17 Jul 2018 17:48:37 GMT  
		Size: 40.4 MB (40386111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fcfa35a001223b10dc25556724a265ec65cfff22c550bdc53f2883ee81a5154`  
		Last Modified: Tue, 17 Jul 2018 17:49:59 GMT  
		Size: 17.7 MB (17683784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:1fd4bea2e91cda6a9e95d9a938009fe3c783770cce67c8c0a9e1940d3b11ee19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:0200da09b954ec908ca72bc639196ed38219e314c57c3e8cb2193d3f6d602db2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.7 MB (332748898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d969fd1aff4abfc2f226344c733708e6dc2ec03a3526afa1b2fe13ce5b51fa7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:35:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:41:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:41:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:42:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:42:33 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:42:34 GMT
ENV ROS_DISTRO=indigo
# Wed, 22 Aug 2018 19:45:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:45:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:45:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:45:30 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 19:46:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:48:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebf088c95975c5015ae52790de60b05c135d99e4ab7c090f982ca287bbbd70e`  
		Last Modified: Wed, 22 Aug 2018 19:22:13 GMT  
		Size: 18.0 MB (18035326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bf9a80c88854e663c21b8c44b4781d1d14f72a903543e20501bde89f3e0333`  
		Last Modified: Wed, 22 Aug 2018 20:39:01 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56033e90ffd85f2f2471fcac69a81ffa01bb58778c77bcc47c486ee623cec3a8`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 260.3 KB (260329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cfed3750b6bc22f33071ff5dfbb69e61276cd45400a5503d9305651a04ba3b`  
		Last Modified: Wed, 22 Aug 2018 20:39:13 GMT  
		Size: 30.9 MB (30946528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd1b8ad9380a3bfe86a0f2e02f05bcbe988e43701a9b2e28a73e36900826f0`  
		Last Modified: Wed, 22 Aug 2018 20:38:58 GMT  
		Size: 801.4 KB (801392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf292d48b14aa2e7f0c9140c61e20b5ccde015bd9df71e010ca0f7f685f276`  
		Last Modified: Wed, 22 Aug 2018 20:39:54 GMT  
		Size: 149.7 MB (149685816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2b1719e64815d204a701f7ec3448406af93c26bf2f87fa52b8938268735605`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431aedae5280212b806968ceaff20699ed92931ffac6aae7e05f78ab23bcdce8`  
		Last Modified: Wed, 22 Aug 2018 20:41:00 GMT  
		Size: 46.8 MB (46775673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bfc4368ff1964b754700d596383afddbaeee853c1b46eee7457ab57862a582`  
		Last Modified: Wed, 22 Aug 2018 20:42:24 GMT  
		Size: 19.0 MB (19029784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:b20022af12ba0aa57e56abb28493df05099a2b082106418c152005222857497e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302391831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01608070aa7d7f4f6a493672452ecc5922c60c71b03da9d9c6fd31f8e9f407a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:23:05 GMT
ADD file:7bbac98bb65c84c77ea4e287e758111798edcdc61c0d78672c1623bdf729ac11 in / 
# Tue, 17 Jul 2018 13:23:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:23:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:23:12 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 17:11:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:11:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 17:11:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 17:12:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 17:12:57 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 17:13:05 GMT
ENV ROS_DISTRO=indigo
# Tue, 17 Jul 2018 17:14:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 17:14:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 17:14:38 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 17:15:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:16:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9c2a082512cf3a8830b91d42bb98b629740d5fd24b80d72fcb6c02420898b67e`  
		Last Modified: Tue, 17 Jul 2018 13:26:24 GMT  
		Size: 61.5 MB (61468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b41e83acf679b5d2b57b403be2a7fdf6356f920904951de07f61716c83bbee`  
		Last Modified: Tue, 17 Jul 2018 13:26:07 GMT  
		Size: 76.8 KB (76769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a277efdf4041c4ff20411bf58600b676449a65a799fd39c199aefb9040b13`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6618850e175b633967a0128ec1cc0f3bf4a3271fb8e6411d574048a9ed6428`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef7a8d6ef97dbddd26f5c20d0b650717aca5f798f1b286dc6ed527eb06965`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b82069b2a50c353e905bfcae17380b32a9656c8952682843864c514b39b5f9`  
		Last Modified: Tue, 17 Jul 2018 17:46:57 GMT  
		Size: 16.0 MB (15992494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b843c2b3653e0a697a51a8d54fcf3450a45b21c53e5342723e978625aff4d`  
		Last Modified: Tue, 17 Jul 2018 17:46:50 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559d5bfca42baff179f33fe4a7c6524796727057eef2b5e7abdc4079d670b2e4`  
		Last Modified: Tue, 17 Jul 2018 17:46:52 GMT  
		Size: 260.3 KB (260336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58327eb1e7e55e9e0f6b0a144ae9d2c8ab6713dc67fb22a1078034a34536b7b6`  
		Last Modified: Tue, 17 Jul 2018 17:46:59 GMT  
		Size: 28.4 MB (28387811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be067005e48ca5e4ecca2a5034fbda0751956d874b39632fa9d21411b65eb41`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 794.7 KB (794660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acba3fdb189895142a71fb0a4b350fa86870da50084bf85a7fcbb344bcf3b3a`  
		Last Modified: Tue, 17 Jul 2018 17:47:33 GMT  
		Size: 137.3 MB (137326483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d550e74d4a543e2acc3cf5ad99afad3ba7291cba002c687bb45a305841935758`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed521622f24c54a706b444f17d89f01b4c68b813e1e6fec240303f18c03c677`  
		Last Modified: Tue, 17 Jul 2018 17:48:37 GMT  
		Size: 40.4 MB (40386111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fcfa35a001223b10dc25556724a265ec65cfff22c550bdc53f2883ee81a5154`  
		Last Modified: Tue, 17 Jul 2018 17:49:59 GMT  
		Size: 17.7 MB (17683784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:d390f37f8f1c7d09bb7f4b59c1d0f0809e65252f5cff8b69b45924e11fea82f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:8c85d3dfd16bc3cde54469eba4aff1d01a333c1fbf0911489d87c009decdde96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313719114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32db3b934782c82dfff6f872fb8497191784241eea26f4aabcd7cef16152a7b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:35:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:41:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:41:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:42:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:42:33 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:42:34 GMT
ENV ROS_DISTRO=indigo
# Wed, 22 Aug 2018 19:45:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:45:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:45:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:45:30 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 19:46:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebf088c95975c5015ae52790de60b05c135d99e4ab7c090f982ca287bbbd70e`  
		Last Modified: Wed, 22 Aug 2018 19:22:13 GMT  
		Size: 18.0 MB (18035326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bf9a80c88854e663c21b8c44b4781d1d14f72a903543e20501bde89f3e0333`  
		Last Modified: Wed, 22 Aug 2018 20:39:01 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56033e90ffd85f2f2471fcac69a81ffa01bb58778c77bcc47c486ee623cec3a8`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 260.3 KB (260329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cfed3750b6bc22f33071ff5dfbb69e61276cd45400a5503d9305651a04ba3b`  
		Last Modified: Wed, 22 Aug 2018 20:39:13 GMT  
		Size: 30.9 MB (30946528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd1b8ad9380a3bfe86a0f2e02f05bcbe988e43701a9b2e28a73e36900826f0`  
		Last Modified: Wed, 22 Aug 2018 20:38:58 GMT  
		Size: 801.4 KB (801392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf292d48b14aa2e7f0c9140c61e20b5ccde015bd9df71e010ca0f7f685f276`  
		Last Modified: Wed, 22 Aug 2018 20:39:54 GMT  
		Size: 149.7 MB (149685816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2b1719e64815d204a701f7ec3448406af93c26bf2f87fa52b8938268735605`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431aedae5280212b806968ceaff20699ed92931ffac6aae7e05f78ab23bcdce8`  
		Last Modified: Wed, 22 Aug 2018 20:41:00 GMT  
		Size: 46.8 MB (46775673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:caa165f6a19ff2ead7e83db51974be4fa8555439eb58776789a34c5f9357eb65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284708047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2300de99c655400db5bde5785dc822e3abc874cf1f9bfee2c066940a61f15d24`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:23:05 GMT
ADD file:7bbac98bb65c84c77ea4e287e758111798edcdc61c0d78672c1623bdf729ac11 in / 
# Tue, 17 Jul 2018 13:23:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:23:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:23:12 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 17:11:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:11:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 17:11:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 17:12:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 17:12:57 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 17:13:05 GMT
ENV ROS_DISTRO=indigo
# Tue, 17 Jul 2018 17:14:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 17:14:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 17:14:38 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 17:15:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9c2a082512cf3a8830b91d42bb98b629740d5fd24b80d72fcb6c02420898b67e`  
		Last Modified: Tue, 17 Jul 2018 13:26:24 GMT  
		Size: 61.5 MB (61468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b41e83acf679b5d2b57b403be2a7fdf6356f920904951de07f61716c83bbee`  
		Last Modified: Tue, 17 Jul 2018 13:26:07 GMT  
		Size: 76.8 KB (76769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a277efdf4041c4ff20411bf58600b676449a65a799fd39c199aefb9040b13`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6618850e175b633967a0128ec1cc0f3bf4a3271fb8e6411d574048a9ed6428`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef7a8d6ef97dbddd26f5c20d0b650717aca5f798f1b286dc6ed527eb06965`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b82069b2a50c353e905bfcae17380b32a9656c8952682843864c514b39b5f9`  
		Last Modified: Tue, 17 Jul 2018 17:46:57 GMT  
		Size: 16.0 MB (15992494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b843c2b3653e0a697a51a8d54fcf3450a45b21c53e5342723e978625aff4d`  
		Last Modified: Tue, 17 Jul 2018 17:46:50 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559d5bfca42baff179f33fe4a7c6524796727057eef2b5e7abdc4079d670b2e4`  
		Last Modified: Tue, 17 Jul 2018 17:46:52 GMT  
		Size: 260.3 KB (260336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58327eb1e7e55e9e0f6b0a144ae9d2c8ab6713dc67fb22a1078034a34536b7b6`  
		Last Modified: Tue, 17 Jul 2018 17:46:59 GMT  
		Size: 28.4 MB (28387811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be067005e48ca5e4ecca2a5034fbda0751956d874b39632fa9d21411b65eb41`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 794.7 KB (794660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acba3fdb189895142a71fb0a4b350fa86870da50084bf85a7fcbb344bcf3b3a`  
		Last Modified: Tue, 17 Jul 2018 17:47:33 GMT  
		Size: 137.3 MB (137326483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d550e74d4a543e2acc3cf5ad99afad3ba7291cba002c687bb45a305841935758`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed521622f24c54a706b444f17d89f01b4c68b813e1e6fec240303f18c03c677`  
		Last Modified: Tue, 17 Jul 2018 17:48:37 GMT  
		Size: 40.4 MB (40386111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:d390f37f8f1c7d09bb7f4b59c1d0f0809e65252f5cff8b69b45924e11fea82f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:8c85d3dfd16bc3cde54469eba4aff1d01a333c1fbf0911489d87c009decdde96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313719114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32db3b934782c82dfff6f872fb8497191784241eea26f4aabcd7cef16152a7b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:35:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:41:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:41:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:42:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:42:33 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:42:34 GMT
ENV ROS_DISTRO=indigo
# Wed, 22 Aug 2018 19:45:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:45:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:45:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:45:30 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 19:46:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebf088c95975c5015ae52790de60b05c135d99e4ab7c090f982ca287bbbd70e`  
		Last Modified: Wed, 22 Aug 2018 19:22:13 GMT  
		Size: 18.0 MB (18035326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bf9a80c88854e663c21b8c44b4781d1d14f72a903543e20501bde89f3e0333`  
		Last Modified: Wed, 22 Aug 2018 20:39:01 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56033e90ffd85f2f2471fcac69a81ffa01bb58778c77bcc47c486ee623cec3a8`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 260.3 KB (260329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cfed3750b6bc22f33071ff5dfbb69e61276cd45400a5503d9305651a04ba3b`  
		Last Modified: Wed, 22 Aug 2018 20:39:13 GMT  
		Size: 30.9 MB (30946528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd1b8ad9380a3bfe86a0f2e02f05bcbe988e43701a9b2e28a73e36900826f0`  
		Last Modified: Wed, 22 Aug 2018 20:38:58 GMT  
		Size: 801.4 KB (801392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf292d48b14aa2e7f0c9140c61e20b5ccde015bd9df71e010ca0f7f685f276`  
		Last Modified: Wed, 22 Aug 2018 20:39:54 GMT  
		Size: 149.7 MB (149685816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2b1719e64815d204a701f7ec3448406af93c26bf2f87fa52b8938268735605`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431aedae5280212b806968ceaff20699ed92931ffac6aae7e05f78ab23bcdce8`  
		Last Modified: Wed, 22 Aug 2018 20:41:00 GMT  
		Size: 46.8 MB (46775673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:caa165f6a19ff2ead7e83db51974be4fa8555439eb58776789a34c5f9357eb65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284708047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2300de99c655400db5bde5785dc822e3abc874cf1f9bfee2c066940a61f15d24`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:23:05 GMT
ADD file:7bbac98bb65c84c77ea4e287e758111798edcdc61c0d78672c1623bdf729ac11 in / 
# Tue, 17 Jul 2018 13:23:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:23:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:23:12 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 17:11:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:11:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 17:11:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 17:12:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 17:12:57 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 17:13:05 GMT
ENV ROS_DISTRO=indigo
# Tue, 17 Jul 2018 17:14:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 17:14:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 17:14:38 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 17:15:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9c2a082512cf3a8830b91d42bb98b629740d5fd24b80d72fcb6c02420898b67e`  
		Last Modified: Tue, 17 Jul 2018 13:26:24 GMT  
		Size: 61.5 MB (61468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b41e83acf679b5d2b57b403be2a7fdf6356f920904951de07f61716c83bbee`  
		Last Modified: Tue, 17 Jul 2018 13:26:07 GMT  
		Size: 76.8 KB (76769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a277efdf4041c4ff20411bf58600b676449a65a799fd39c199aefb9040b13`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6618850e175b633967a0128ec1cc0f3bf4a3271fb8e6411d574048a9ed6428`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef7a8d6ef97dbddd26f5c20d0b650717aca5f798f1b286dc6ed527eb06965`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b82069b2a50c353e905bfcae17380b32a9656c8952682843864c514b39b5f9`  
		Last Modified: Tue, 17 Jul 2018 17:46:57 GMT  
		Size: 16.0 MB (15992494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b843c2b3653e0a697a51a8d54fcf3450a45b21c53e5342723e978625aff4d`  
		Last Modified: Tue, 17 Jul 2018 17:46:50 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559d5bfca42baff179f33fe4a7c6524796727057eef2b5e7abdc4079d670b2e4`  
		Last Modified: Tue, 17 Jul 2018 17:46:52 GMT  
		Size: 260.3 KB (260336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58327eb1e7e55e9e0f6b0a144ae9d2c8ab6713dc67fb22a1078034a34536b7b6`  
		Last Modified: Tue, 17 Jul 2018 17:46:59 GMT  
		Size: 28.4 MB (28387811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be067005e48ca5e4ecca2a5034fbda0751956d874b39632fa9d21411b65eb41`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 794.7 KB (794660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acba3fdb189895142a71fb0a4b350fa86870da50084bf85a7fcbb344bcf3b3a`  
		Last Modified: Tue, 17 Jul 2018 17:47:33 GMT  
		Size: 137.3 MB (137326483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d550e74d4a543e2acc3cf5ad99afad3ba7291cba002c687bb45a305841935758`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed521622f24c54a706b444f17d89f01b4c68b813e1e6fec240303f18c03c677`  
		Last Modified: Tue, 17 Jul 2018 17:48:37 GMT  
		Size: 40.4 MB (40386111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:e5a44574395620ed8f41e36d7d0ff49fd222603a03fe14936d3adb5ff401c4b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:9ee5e8be4eee7c5d96fec1179d4515920f9fb501a03bfdd38fa87ba07edadb9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266943441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf6efb795ea3b3e2dbff94243ab88e94aad93b91f573417a2d00460432f0ddf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:35:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:41:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:41:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:42:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:42:33 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:42:34 GMT
ENV ROS_DISTRO=indigo
# Wed, 22 Aug 2018 19:45:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:45:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:45:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:45:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebf088c95975c5015ae52790de60b05c135d99e4ab7c090f982ca287bbbd70e`  
		Last Modified: Wed, 22 Aug 2018 19:22:13 GMT  
		Size: 18.0 MB (18035326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bf9a80c88854e663c21b8c44b4781d1d14f72a903543e20501bde89f3e0333`  
		Last Modified: Wed, 22 Aug 2018 20:39:01 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56033e90ffd85f2f2471fcac69a81ffa01bb58778c77bcc47c486ee623cec3a8`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 260.3 KB (260329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cfed3750b6bc22f33071ff5dfbb69e61276cd45400a5503d9305651a04ba3b`  
		Last Modified: Wed, 22 Aug 2018 20:39:13 GMT  
		Size: 30.9 MB (30946528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd1b8ad9380a3bfe86a0f2e02f05bcbe988e43701a9b2e28a73e36900826f0`  
		Last Modified: Wed, 22 Aug 2018 20:38:58 GMT  
		Size: 801.4 KB (801392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf292d48b14aa2e7f0c9140c61e20b5ccde015bd9df71e010ca0f7f685f276`  
		Last Modified: Wed, 22 Aug 2018 20:39:54 GMT  
		Size: 149.7 MB (149685816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2b1719e64815d204a701f7ec3448406af93c26bf2f87fa52b8938268735605`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:be2e52c26e9d6331452de63386f173841771aee529b8f5076fd394bb9b73ba7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244321936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348c2308718650f24ed79414c93115b76bd85e0dc3ad87565bb1a88f93ccd346`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:23:05 GMT
ADD file:7bbac98bb65c84c77ea4e287e758111798edcdc61c0d78672c1623bdf729ac11 in / 
# Tue, 17 Jul 2018 13:23:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:23:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:23:12 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 17:11:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:11:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 17:11:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 17:12:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 17:12:57 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 17:13:05 GMT
ENV ROS_DISTRO=indigo
# Tue, 17 Jul 2018 17:14:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 17:14:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 17:14:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9c2a082512cf3a8830b91d42bb98b629740d5fd24b80d72fcb6c02420898b67e`  
		Last Modified: Tue, 17 Jul 2018 13:26:24 GMT  
		Size: 61.5 MB (61468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b41e83acf679b5d2b57b403be2a7fdf6356f920904951de07f61716c83bbee`  
		Last Modified: Tue, 17 Jul 2018 13:26:07 GMT  
		Size: 76.8 KB (76769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a277efdf4041c4ff20411bf58600b676449a65a799fd39c199aefb9040b13`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6618850e175b633967a0128ec1cc0f3bf4a3271fb8e6411d574048a9ed6428`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef7a8d6ef97dbddd26f5c20d0b650717aca5f798f1b286dc6ed527eb06965`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b82069b2a50c353e905bfcae17380b32a9656c8952682843864c514b39b5f9`  
		Last Modified: Tue, 17 Jul 2018 17:46:57 GMT  
		Size: 16.0 MB (15992494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b843c2b3653e0a697a51a8d54fcf3450a45b21c53e5342723e978625aff4d`  
		Last Modified: Tue, 17 Jul 2018 17:46:50 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559d5bfca42baff179f33fe4a7c6524796727057eef2b5e7abdc4079d670b2e4`  
		Last Modified: Tue, 17 Jul 2018 17:46:52 GMT  
		Size: 260.3 KB (260336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58327eb1e7e55e9e0f6b0a144ae9d2c8ab6713dc67fb22a1078034a34536b7b6`  
		Last Modified: Tue, 17 Jul 2018 17:46:59 GMT  
		Size: 28.4 MB (28387811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be067005e48ca5e4ecca2a5034fbda0751956d874b39632fa9d21411b65eb41`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 794.7 KB (794660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acba3fdb189895142a71fb0a4b350fa86870da50084bf85a7fcbb344bcf3b3a`  
		Last Modified: Tue, 17 Jul 2018 17:47:33 GMT  
		Size: 137.3 MB (137326483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d550e74d4a543e2acc3cf5ad99afad3ba7291cba002c687bb45a305841935758`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:e5a44574395620ed8f41e36d7d0ff49fd222603a03fe14936d3adb5ff401c4b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:9ee5e8be4eee7c5d96fec1179d4515920f9fb501a03bfdd38fa87ba07edadb9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266943441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf6efb795ea3b3e2dbff94243ab88e94aad93b91f573417a2d00460432f0ddf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:35:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:41:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:41:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:42:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:42:33 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:42:34 GMT
ENV ROS_DISTRO=indigo
# Wed, 22 Aug 2018 19:45:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:45:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:45:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:45:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebf088c95975c5015ae52790de60b05c135d99e4ab7c090f982ca287bbbd70e`  
		Last Modified: Wed, 22 Aug 2018 19:22:13 GMT  
		Size: 18.0 MB (18035326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bf9a80c88854e663c21b8c44b4781d1d14f72a903543e20501bde89f3e0333`  
		Last Modified: Wed, 22 Aug 2018 20:39:01 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56033e90ffd85f2f2471fcac69a81ffa01bb58778c77bcc47c486ee623cec3a8`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 260.3 KB (260329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cfed3750b6bc22f33071ff5dfbb69e61276cd45400a5503d9305651a04ba3b`  
		Last Modified: Wed, 22 Aug 2018 20:39:13 GMT  
		Size: 30.9 MB (30946528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd1b8ad9380a3bfe86a0f2e02f05bcbe988e43701a9b2e28a73e36900826f0`  
		Last Modified: Wed, 22 Aug 2018 20:38:58 GMT  
		Size: 801.4 KB (801392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf292d48b14aa2e7f0c9140c61e20b5ccde015bd9df71e010ca0f7f685f276`  
		Last Modified: Wed, 22 Aug 2018 20:39:54 GMT  
		Size: 149.7 MB (149685816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2b1719e64815d204a701f7ec3448406af93c26bf2f87fa52b8938268735605`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:be2e52c26e9d6331452de63386f173841771aee529b8f5076fd394bb9b73ba7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244321936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348c2308718650f24ed79414c93115b76bd85e0dc3ad87565bb1a88f93ccd346`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:23:05 GMT
ADD file:7bbac98bb65c84c77ea4e287e758111798edcdc61c0d78672c1623bdf729ac11 in / 
# Tue, 17 Jul 2018 13:23:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:23:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:23:12 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 17:11:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:11:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 17:11:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 17:12:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 17:12:57 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 17:13:05 GMT
ENV ROS_DISTRO=indigo
# Tue, 17 Jul 2018 17:14:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 17:14:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 17:14:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9c2a082512cf3a8830b91d42bb98b629740d5fd24b80d72fcb6c02420898b67e`  
		Last Modified: Tue, 17 Jul 2018 13:26:24 GMT  
		Size: 61.5 MB (61468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b41e83acf679b5d2b57b403be2a7fdf6356f920904951de07f61716c83bbee`  
		Last Modified: Tue, 17 Jul 2018 13:26:07 GMT  
		Size: 76.8 KB (76769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a277efdf4041c4ff20411bf58600b676449a65a799fd39c199aefb9040b13`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6618850e175b633967a0128ec1cc0f3bf4a3271fb8e6411d574048a9ed6428`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef7a8d6ef97dbddd26f5c20d0b650717aca5f798f1b286dc6ed527eb06965`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b82069b2a50c353e905bfcae17380b32a9656c8952682843864c514b39b5f9`  
		Last Modified: Tue, 17 Jul 2018 17:46:57 GMT  
		Size: 16.0 MB (15992494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b843c2b3653e0a697a51a8d54fcf3450a45b21c53e5342723e978625aff4d`  
		Last Modified: Tue, 17 Jul 2018 17:46:50 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559d5bfca42baff179f33fe4a7c6524796727057eef2b5e7abdc4079d670b2e4`  
		Last Modified: Tue, 17 Jul 2018 17:46:52 GMT  
		Size: 260.3 KB (260336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58327eb1e7e55e9e0f6b0a144ae9d2c8ab6713dc67fb22a1078034a34536b7b6`  
		Last Modified: Tue, 17 Jul 2018 17:46:59 GMT  
		Size: 28.4 MB (28387811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be067005e48ca5e4ecca2a5034fbda0751956d874b39632fa9d21411b65eb41`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 794.7 KB (794660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acba3fdb189895142a71fb0a4b350fa86870da50084bf85a7fcbb344bcf3b3a`  
		Last Modified: Tue, 17 Jul 2018 17:47:33 GMT  
		Size: 137.3 MB (137326483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d550e74d4a543e2acc3cf5ad99afad3ba7291cba002c687bb45a305841935758`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:f58bd71528cbb9086c6d36f08e2c97c13a3b94c28b6388a41d3680b9259a9d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:87e72603b396bea55a87e779b5f4fba9c73f9a68b48b27f398123af554d03f99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.6 MB (384555547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:575bc11e5a8d48dbb2c4214896985722897382c0978e4edb3eebbb0b3fe600db`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:55:50 GMT
ENV ROS_DISTRO=kinetic
# Wed, 22 Aug 2018 19:59:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:59:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:59:07 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:01:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94794380affab3a572d89a81d7eccf2b113e01a4c85b72d7dbb2eba7aec47fc2`  
		Last Modified: Wed, 22 Aug 2018 20:46:47 GMT  
		Size: 193.3 MB (193265398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2c9a7d310a6c676ba85f7b16078d4dad5f593b7b3a79bb2b66506e7c941e53`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0b34c971ce3b84a3cdaf435e1bb3ef9cd7d5c806b337791e22ba49affda97`  
		Last Modified: Wed, 22 Aug 2018 20:48:23 GMT  
		Size: 85.7 MB (85692193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:09d84f626f744bbad3579d996b5d1e5637a314585e3771c2ed93c4c7bed834fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336056077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d973db24b15ed8fb9ec6455f37e5019254173022d69568ba4273979244d8bf66`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:04:26 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:05:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:05:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:05:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:05:42 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:06:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d798aacc2c265bea952a3bb040c8c59612ad6f25a515a2db96930dc622457d`  
		Last Modified: Fri, 27 Jul 2018 13:28:03 GMT  
		Size: 164.6 MB (164612763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213b91a76c4bae60c888702229a5a6b6491812686b3f2296692b8fa84fc8b3b4`  
		Last Modified: Fri, 27 Jul 2018 13:27:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5603af74606ca2e69043978a416777871d849c1f02eb1ff395324ca06970edbc`  
		Last Modified: Fri, 27 Jul 2018 13:28:50 GMT  
		Size: 76.5 MB (76466714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:81599af061e3801c43dbf2a22cd8af02e4b62c0244810d8db50f177ddd348bd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349871425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c922e4088234b15e934011517f2003547da4ead2a53836db6ba04776b4165c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:22:22 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:30:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:30:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:30:59 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:36:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdeed115e25669d12b6d78aaf5a3866ad160f22dbfc03f6cd742596eaa666c`  
		Last Modified: Fri, 27 Jul 2018 15:27:04 GMT  
		Size: 173.9 MB (173875316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c40824c31a1a192ee8b2c77376232677006c44d807ca21763005ce16270dce`  
		Last Modified: Fri, 27 Jul 2018 15:25:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde69529da7ee24883b9848b69b6fa5c77896bca661e78cfd43a397fdab2e6b5`  
		Last Modified: Fri, 27 Jul 2018 15:28:46 GMT  
		Size: 78.0 MB (77972326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:39e479eb17707c89cfdf33854feed0145d63d523b1170d95d464f1bce774b8e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:45e3b1e9baa4b073833b45fc949d0e8ce4ff8a9be6df4601ccdf48698d4a4e6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.2 MB (725212505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649127611cfcdefe36c156b7fe792e3f4e7dde23b6995c6feace395a04885ef2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:55:50 GMT
ENV ROS_DISTRO=kinetic
# Wed, 22 Aug 2018 19:59:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:59:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:59:07 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:01:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:09:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94794380affab3a572d89a81d7eccf2b113e01a4c85b72d7dbb2eba7aec47fc2`  
		Last Modified: Wed, 22 Aug 2018 20:46:47 GMT  
		Size: 193.3 MB (193265398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2c9a7d310a6c676ba85f7b16078d4dad5f593b7b3a79bb2b66506e7c941e53`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0b34c971ce3b84a3cdaf435e1bb3ef9cd7d5c806b337791e22ba49affda97`  
		Last Modified: Wed, 22 Aug 2018 20:48:23 GMT  
		Size: 85.7 MB (85692193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ebc25a2d17f3190974e485b8aa3949c1a115a057c57745bddcea748c79d3fe`  
		Last Modified: Wed, 22 Aug 2018 20:53:04 GMT  
		Size: 340.7 MB (340656958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:f4e115f34b369f273aa4e760c14be842ce9c2be92b8a92c328f231bea2829429
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.7 MB (616749132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a512f86c0fe23b2c1cf0db28e7ecdda62b9c2213ab2b71c18e603c4972ae9523`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:04:26 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:05:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:05:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:05:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:05:42 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:06:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:10:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d798aacc2c265bea952a3bb040c8c59612ad6f25a515a2db96930dc622457d`  
		Last Modified: Fri, 27 Jul 2018 13:28:03 GMT  
		Size: 164.6 MB (164612763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213b91a76c4bae60c888702229a5a6b6491812686b3f2296692b8fa84fc8b3b4`  
		Last Modified: Fri, 27 Jul 2018 13:27:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5603af74606ca2e69043978a416777871d849c1f02eb1ff395324ca06970edbc`  
		Last Modified: Fri, 27 Jul 2018 13:28:50 GMT  
		Size: 76.5 MB (76466714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5949877f051a7b030c187795bb63fa20c03a855ba45cfa65663289a22d5c8474`  
		Last Modified: Fri, 27 Jul 2018 13:32:04 GMT  
		Size: 280.7 MB (280693055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:17503bc389f25160eaa80259e6b47e5eab4eab3168fc87d8f5fd38d4b779f9fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.1 MB (641070044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e116d152557589990585472838af78cf7a14cd55b31820e759290045b6d4458`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:22:22 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:30:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:30:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:30:59 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:36:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:57:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdeed115e25669d12b6d78aaf5a3866ad160f22dbfc03f6cd742596eaa666c`  
		Last Modified: Fri, 27 Jul 2018 15:27:04 GMT  
		Size: 173.9 MB (173875316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c40824c31a1a192ee8b2c77376232677006c44d807ca21763005ce16270dce`  
		Last Modified: Fri, 27 Jul 2018 15:25:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde69529da7ee24883b9848b69b6fa5c77896bca661e78cfd43a397fdab2e6b5`  
		Last Modified: Fri, 27 Jul 2018 15:28:46 GMT  
		Size: 78.0 MB (77972326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed9ba0ace322616d6f5d8c786afa868a5f2c55e5fdd38071d6cbed039cdb270`  
		Last Modified: Fri, 27 Jul 2018 15:33:24 GMT  
		Size: 291.2 MB (291198619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:39e479eb17707c89cfdf33854feed0145d63d523b1170d95d464f1bce774b8e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:45e3b1e9baa4b073833b45fc949d0e8ce4ff8a9be6df4601ccdf48698d4a4e6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.2 MB (725212505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649127611cfcdefe36c156b7fe792e3f4e7dde23b6995c6feace395a04885ef2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:55:50 GMT
ENV ROS_DISTRO=kinetic
# Wed, 22 Aug 2018 19:59:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:59:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:59:07 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:01:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:09:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94794380affab3a572d89a81d7eccf2b113e01a4c85b72d7dbb2eba7aec47fc2`  
		Last Modified: Wed, 22 Aug 2018 20:46:47 GMT  
		Size: 193.3 MB (193265398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2c9a7d310a6c676ba85f7b16078d4dad5f593b7b3a79bb2b66506e7c941e53`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0b34c971ce3b84a3cdaf435e1bb3ef9cd7d5c806b337791e22ba49affda97`  
		Last Modified: Wed, 22 Aug 2018 20:48:23 GMT  
		Size: 85.7 MB (85692193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ebc25a2d17f3190974e485b8aa3949c1a115a057c57745bddcea748c79d3fe`  
		Last Modified: Wed, 22 Aug 2018 20:53:04 GMT  
		Size: 340.7 MB (340656958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:f4e115f34b369f273aa4e760c14be842ce9c2be92b8a92c328f231bea2829429
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.7 MB (616749132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a512f86c0fe23b2c1cf0db28e7ecdda62b9c2213ab2b71c18e603c4972ae9523`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:04:26 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:05:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:05:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:05:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:05:42 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:06:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:10:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d798aacc2c265bea952a3bb040c8c59612ad6f25a515a2db96930dc622457d`  
		Last Modified: Fri, 27 Jul 2018 13:28:03 GMT  
		Size: 164.6 MB (164612763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213b91a76c4bae60c888702229a5a6b6491812686b3f2296692b8fa84fc8b3b4`  
		Last Modified: Fri, 27 Jul 2018 13:27:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5603af74606ca2e69043978a416777871d849c1f02eb1ff395324ca06970edbc`  
		Last Modified: Fri, 27 Jul 2018 13:28:50 GMT  
		Size: 76.5 MB (76466714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5949877f051a7b030c187795bb63fa20c03a855ba45cfa65663289a22d5c8474`  
		Last Modified: Fri, 27 Jul 2018 13:32:04 GMT  
		Size: 280.7 MB (280693055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:17503bc389f25160eaa80259e6b47e5eab4eab3168fc87d8f5fd38d4b779f9fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.1 MB (641070044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e116d152557589990585472838af78cf7a14cd55b31820e759290045b6d4458`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:22:22 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:30:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:30:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:30:59 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:36:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:57:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdeed115e25669d12b6d78aaf5a3866ad160f22dbfc03f6cd742596eaa666c`  
		Last Modified: Fri, 27 Jul 2018 15:27:04 GMT  
		Size: 173.9 MB (173875316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c40824c31a1a192ee8b2c77376232677006c44d807ca21763005ce16270dce`  
		Last Modified: Fri, 27 Jul 2018 15:25:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde69529da7ee24883b9848b69b6fa5c77896bca661e78cfd43a397fdab2e6b5`  
		Last Modified: Fri, 27 Jul 2018 15:28:46 GMT  
		Size: 78.0 MB (77972326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed9ba0ace322616d6f5d8c786afa868a5f2c55e5fdd38071d6cbed039cdb270`  
		Last Modified: Fri, 27 Jul 2018 15:33:24 GMT  
		Size: 291.2 MB (291198619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:c4dcbfb56a1abbad16b696e5b722f6571ffba34fd64659d997b87563ceee76d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:20a1ff1f825c1e46622f6365ff953291b3a8c3226bc71a60c20694c603062427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.2 MB (488204730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3656451e146ec21a7221daaa138e46e5fb3cf6d70143ead8678a01ba1622471`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:55:50 GMT
ENV ROS_DISTRO=kinetic
# Wed, 22 Aug 2018 19:59:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:59:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:59:07 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:01:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:04:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94794380affab3a572d89a81d7eccf2b113e01a4c85b72d7dbb2eba7aec47fc2`  
		Last Modified: Wed, 22 Aug 2018 20:46:47 GMT  
		Size: 193.3 MB (193265398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2c9a7d310a6c676ba85f7b16078d4dad5f593b7b3a79bb2b66506e7c941e53`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0b34c971ce3b84a3cdaf435e1bb3ef9cd7d5c806b337791e22ba49affda97`  
		Last Modified: Wed, 22 Aug 2018 20:48:23 GMT  
		Size: 85.7 MB (85692193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2428d50282e3f7cfeaff2ab811d6b47138405790cde447121572d88a58bfabe2`  
		Last Modified: Wed, 22 Aug 2018 20:50:10 GMT  
		Size: 103.6 MB (103649183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:52bfb1060f4b7924b792c5e4a372a53ac6d3885c66937922d715302f7754a051
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426064447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6069fae6aa310e9be3ea83814d2e3afdfb5c0b87461c28f11b2f8b481ca7245f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:04:26 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:05:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:05:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:05:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:05:42 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:06:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:08:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d798aacc2c265bea952a3bb040c8c59612ad6f25a515a2db96930dc622457d`  
		Last Modified: Fri, 27 Jul 2018 13:28:03 GMT  
		Size: 164.6 MB (164612763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213b91a76c4bae60c888702229a5a6b6491812686b3f2296692b8fa84fc8b3b4`  
		Last Modified: Fri, 27 Jul 2018 13:27:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5603af74606ca2e69043978a416777871d849c1f02eb1ff395324ca06970edbc`  
		Last Modified: Fri, 27 Jul 2018 13:28:50 GMT  
		Size: 76.5 MB (76466714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dc2b2015550b6a7582b021f5b4c8148a5e4d1f7e9b6c2c76a3d9bfabd5f981`  
		Last Modified: Fri, 27 Jul 2018 13:30:21 GMT  
		Size: 90.0 MB (90008370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6f9cb1cc644b51aeac12a7e2899128c06312d1e32698f931c242cd936f382181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443781171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bcf9b03f8bdc61b70e04702cfc11a6b177bc67c9a62948ddfabd90bf5f6ccb2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:22:22 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:30:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:30:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:30:59 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:36:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:42:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdeed115e25669d12b6d78aaf5a3866ad160f22dbfc03f6cd742596eaa666c`  
		Last Modified: Fri, 27 Jul 2018 15:27:04 GMT  
		Size: 173.9 MB (173875316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c40824c31a1a192ee8b2c77376232677006c44d807ca21763005ce16270dce`  
		Last Modified: Fri, 27 Jul 2018 15:25:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde69529da7ee24883b9848b69b6fa5c77896bca661e78cfd43a397fdab2e6b5`  
		Last Modified: Fri, 27 Jul 2018 15:28:46 GMT  
		Size: 78.0 MB (77972326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b19a72818f372beb469c1ba9e35e93437054396d880849ae14f7c3ecd4af3b`  
		Last Modified: Fri, 27 Jul 2018 15:30:29 GMT  
		Size: 93.9 MB (93909746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:c4dcbfb56a1abbad16b696e5b722f6571ffba34fd64659d997b87563ceee76d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:20a1ff1f825c1e46622f6365ff953291b3a8c3226bc71a60c20694c603062427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.2 MB (488204730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3656451e146ec21a7221daaa138e46e5fb3cf6d70143ead8678a01ba1622471`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:55:50 GMT
ENV ROS_DISTRO=kinetic
# Wed, 22 Aug 2018 19:59:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:59:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:59:07 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:01:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:04:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94794380affab3a572d89a81d7eccf2b113e01a4c85b72d7dbb2eba7aec47fc2`  
		Last Modified: Wed, 22 Aug 2018 20:46:47 GMT  
		Size: 193.3 MB (193265398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2c9a7d310a6c676ba85f7b16078d4dad5f593b7b3a79bb2b66506e7c941e53`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0b34c971ce3b84a3cdaf435e1bb3ef9cd7d5c806b337791e22ba49affda97`  
		Last Modified: Wed, 22 Aug 2018 20:48:23 GMT  
		Size: 85.7 MB (85692193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2428d50282e3f7cfeaff2ab811d6b47138405790cde447121572d88a58bfabe2`  
		Last Modified: Wed, 22 Aug 2018 20:50:10 GMT  
		Size: 103.6 MB (103649183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:52bfb1060f4b7924b792c5e4a372a53ac6d3885c66937922d715302f7754a051
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426064447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6069fae6aa310e9be3ea83814d2e3afdfb5c0b87461c28f11b2f8b481ca7245f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:04:26 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:05:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:05:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:05:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:05:42 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:06:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:08:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d798aacc2c265bea952a3bb040c8c59612ad6f25a515a2db96930dc622457d`  
		Last Modified: Fri, 27 Jul 2018 13:28:03 GMT  
		Size: 164.6 MB (164612763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213b91a76c4bae60c888702229a5a6b6491812686b3f2296692b8fa84fc8b3b4`  
		Last Modified: Fri, 27 Jul 2018 13:27:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5603af74606ca2e69043978a416777871d849c1f02eb1ff395324ca06970edbc`  
		Last Modified: Fri, 27 Jul 2018 13:28:50 GMT  
		Size: 76.5 MB (76466714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dc2b2015550b6a7582b021f5b4c8148a5e4d1f7e9b6c2c76a3d9bfabd5f981`  
		Last Modified: Fri, 27 Jul 2018 13:30:21 GMT  
		Size: 90.0 MB (90008370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6f9cb1cc644b51aeac12a7e2899128c06312d1e32698f931c242cd936f382181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443781171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bcf9b03f8bdc61b70e04702cfc11a6b177bc67c9a62948ddfabd90bf5f6ccb2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:22:22 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:30:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:30:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:30:59 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:36:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:42:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdeed115e25669d12b6d78aaf5a3866ad160f22dbfc03f6cd742596eaa666c`  
		Last Modified: Fri, 27 Jul 2018 15:27:04 GMT  
		Size: 173.9 MB (173875316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c40824c31a1a192ee8b2c77376232677006c44d807ca21763005ce16270dce`  
		Last Modified: Fri, 27 Jul 2018 15:25:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde69529da7ee24883b9848b69b6fa5c77896bca661e78cfd43a397fdab2e6b5`  
		Last Modified: Fri, 27 Jul 2018 15:28:46 GMT  
		Size: 78.0 MB (77972326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b19a72818f372beb469c1ba9e35e93437054396d880849ae14f7c3ecd4af3b`  
		Last Modified: Fri, 27 Jul 2018 15:30:29 GMT  
		Size: 93.9 MB (93909746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:f58bd71528cbb9086c6d36f08e2c97c13a3b94c28b6388a41d3680b9259a9d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:87e72603b396bea55a87e779b5f4fba9c73f9a68b48b27f398123af554d03f99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.6 MB (384555547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:575bc11e5a8d48dbb2c4214896985722897382c0978e4edb3eebbb0b3fe600db`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:55:50 GMT
ENV ROS_DISTRO=kinetic
# Wed, 22 Aug 2018 19:59:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:59:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:59:07 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:01:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94794380affab3a572d89a81d7eccf2b113e01a4c85b72d7dbb2eba7aec47fc2`  
		Last Modified: Wed, 22 Aug 2018 20:46:47 GMT  
		Size: 193.3 MB (193265398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2c9a7d310a6c676ba85f7b16078d4dad5f593b7b3a79bb2b66506e7c941e53`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0b34c971ce3b84a3cdaf435e1bb3ef9cd7d5c806b337791e22ba49affda97`  
		Last Modified: Wed, 22 Aug 2018 20:48:23 GMT  
		Size: 85.7 MB (85692193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:09d84f626f744bbad3579d996b5d1e5637a314585e3771c2ed93c4c7bed834fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336056077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d973db24b15ed8fb9ec6455f37e5019254173022d69568ba4273979244d8bf66`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:04:26 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:05:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:05:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:05:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:05:42 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:06:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d798aacc2c265bea952a3bb040c8c59612ad6f25a515a2db96930dc622457d`  
		Last Modified: Fri, 27 Jul 2018 13:28:03 GMT  
		Size: 164.6 MB (164612763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213b91a76c4bae60c888702229a5a6b6491812686b3f2296692b8fa84fc8b3b4`  
		Last Modified: Fri, 27 Jul 2018 13:27:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5603af74606ca2e69043978a416777871d849c1f02eb1ff395324ca06970edbc`  
		Last Modified: Fri, 27 Jul 2018 13:28:50 GMT  
		Size: 76.5 MB (76466714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:81599af061e3801c43dbf2a22cd8af02e4b62c0244810d8db50f177ddd348bd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349871425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c922e4088234b15e934011517f2003547da4ead2a53836db6ba04776b4165c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:22:22 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:30:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:30:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:30:59 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:36:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdeed115e25669d12b6d78aaf5a3866ad160f22dbfc03f6cd742596eaa666c`  
		Last Modified: Fri, 27 Jul 2018 15:27:04 GMT  
		Size: 173.9 MB (173875316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c40824c31a1a192ee8b2c77376232677006c44d807ca21763005ce16270dce`  
		Last Modified: Fri, 27 Jul 2018 15:25:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde69529da7ee24883b9848b69b6fa5c77896bca661e78cfd43a397fdab2e6b5`  
		Last Modified: Fri, 27 Jul 2018 15:28:46 GMT  
		Size: 78.0 MB (77972326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:f58bd71528cbb9086c6d36f08e2c97c13a3b94c28b6388a41d3680b9259a9d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:87e72603b396bea55a87e779b5f4fba9c73f9a68b48b27f398123af554d03f99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.6 MB (384555547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:575bc11e5a8d48dbb2c4214896985722897382c0978e4edb3eebbb0b3fe600db`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:55:50 GMT
ENV ROS_DISTRO=kinetic
# Wed, 22 Aug 2018 19:59:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:59:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:59:07 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:01:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94794380affab3a572d89a81d7eccf2b113e01a4c85b72d7dbb2eba7aec47fc2`  
		Last Modified: Wed, 22 Aug 2018 20:46:47 GMT  
		Size: 193.3 MB (193265398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2c9a7d310a6c676ba85f7b16078d4dad5f593b7b3a79bb2b66506e7c941e53`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0b34c971ce3b84a3cdaf435e1bb3ef9cd7d5c806b337791e22ba49affda97`  
		Last Modified: Wed, 22 Aug 2018 20:48:23 GMT  
		Size: 85.7 MB (85692193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:09d84f626f744bbad3579d996b5d1e5637a314585e3771c2ed93c4c7bed834fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336056077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d973db24b15ed8fb9ec6455f37e5019254173022d69568ba4273979244d8bf66`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:04:26 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:05:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:05:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:05:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:05:42 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:06:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d798aacc2c265bea952a3bb040c8c59612ad6f25a515a2db96930dc622457d`  
		Last Modified: Fri, 27 Jul 2018 13:28:03 GMT  
		Size: 164.6 MB (164612763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213b91a76c4bae60c888702229a5a6b6491812686b3f2296692b8fa84fc8b3b4`  
		Last Modified: Fri, 27 Jul 2018 13:27:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5603af74606ca2e69043978a416777871d849c1f02eb1ff395324ca06970edbc`  
		Last Modified: Fri, 27 Jul 2018 13:28:50 GMT  
		Size: 76.5 MB (76466714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:81599af061e3801c43dbf2a22cd8af02e4b62c0244810d8db50f177ddd348bd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349871425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c922e4088234b15e934011517f2003547da4ead2a53836db6ba04776b4165c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:22:22 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:30:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:30:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:30:59 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:36:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdeed115e25669d12b6d78aaf5a3866ad160f22dbfc03f6cd742596eaa666c`  
		Last Modified: Fri, 27 Jul 2018 15:27:04 GMT  
		Size: 173.9 MB (173875316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c40824c31a1a192ee8b2c77376232677006c44d807ca21763005ce16270dce`  
		Last Modified: Fri, 27 Jul 2018 15:25:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde69529da7ee24883b9848b69b6fa5c77896bca661e78cfd43a397fdab2e6b5`  
		Last Modified: Fri, 27 Jul 2018 15:28:46 GMT  
		Size: 78.0 MB (77972326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:a91b46daaa97e09b362e9f94c6ecaf759385f4883b9295ab28ab4513db0ba7d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:76b67d25d813b0def79646a5cd7c0c1391b90d7b36623be351b2808890b0d950
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 MB (298863354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8243a352155edfa7cd0777ad057828cc25504f6a32d76a9923f3e1c2c13058d1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:55:50 GMT
ENV ROS_DISTRO=kinetic
# Wed, 22 Aug 2018 19:59:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:59:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:59:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94794380affab3a572d89a81d7eccf2b113e01a4c85b72d7dbb2eba7aec47fc2`  
		Last Modified: Wed, 22 Aug 2018 20:46:47 GMT  
		Size: 193.3 MB (193265398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2c9a7d310a6c676ba85f7b16078d4dad5f593b7b3a79bb2b66506e7c941e53`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:dde0cf4dcfcddc4237f0141b961a562a95a103809f482b2bad787e76072fc653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259589363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e991f28c6a730480d2ea0140e5d2455febaa63775a62b5c33e5ddf074e412d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:04:26 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:05:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:05:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:05:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:05:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d798aacc2c265bea952a3bb040c8c59612ad6f25a515a2db96930dc622457d`  
		Last Modified: Fri, 27 Jul 2018 13:28:03 GMT  
		Size: 164.6 MB (164612763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213b91a76c4bae60c888702229a5a6b6491812686b3f2296692b8fa84fc8b3b4`  
		Last Modified: Fri, 27 Jul 2018 13:27:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e2631a3a9c92dbefad45eae4a5aec049119406e46d2ef6e9d809c2e0c39bf159
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271899099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a4001d7b03f7846188f5cdd64d5290cc67dae33644e499cedebf2ad849e4634`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:22:22 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:30:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:30:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:30:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdeed115e25669d12b6d78aaf5a3866ad160f22dbfc03f6cd742596eaa666c`  
		Last Modified: Fri, 27 Jul 2018 15:27:04 GMT  
		Size: 173.9 MB (173875316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c40824c31a1a192ee8b2c77376232677006c44d807ca21763005ce16270dce`  
		Last Modified: Fri, 27 Jul 2018 15:25:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:a91b46daaa97e09b362e9f94c6ecaf759385f4883b9295ab28ab4513db0ba7d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:76b67d25d813b0def79646a5cd7c0c1391b90d7b36623be351b2808890b0d950
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 MB (298863354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8243a352155edfa7cd0777ad057828cc25504f6a32d76a9923f3e1c2c13058d1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:55:50 GMT
ENV ROS_DISTRO=kinetic
# Wed, 22 Aug 2018 19:59:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:59:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:59:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94794380affab3a572d89a81d7eccf2b113e01a4c85b72d7dbb2eba7aec47fc2`  
		Last Modified: Wed, 22 Aug 2018 20:46:47 GMT  
		Size: 193.3 MB (193265398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2c9a7d310a6c676ba85f7b16078d4dad5f593b7b3a79bb2b66506e7c941e53`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:dde0cf4dcfcddc4237f0141b961a562a95a103809f482b2bad787e76072fc653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259589363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e991f28c6a730480d2ea0140e5d2455febaa63775a62b5c33e5ddf074e412d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:04:26 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:05:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:05:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:05:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:05:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d798aacc2c265bea952a3bb040c8c59612ad6f25a515a2db96930dc622457d`  
		Last Modified: Fri, 27 Jul 2018 13:28:03 GMT  
		Size: 164.6 MB (164612763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213b91a76c4bae60c888702229a5a6b6491812686b3f2296692b8fa84fc8b3b4`  
		Last Modified: Fri, 27 Jul 2018 13:27:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e2631a3a9c92dbefad45eae4a5aec049119406e46d2ef6e9d809c2e0c39bf159
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271899099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a4001d7b03f7846188f5cdd64d5290cc67dae33644e499cedebf2ad849e4634`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:22:22 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 13:30:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:30:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:30:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:30:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bdeed115e25669d12b6d78aaf5a3866ad160f22dbfc03f6cd742596eaa666c`  
		Last Modified: Fri, 27 Jul 2018 15:27:04 GMT  
		Size: 173.9 MB (173875316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c40824c31a1a192ee8b2c77376232677006c44d807ca21763005ce16270dce`  
		Last Modified: Fri, 27 Jul 2018 15:25:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:c2e130e3f254fae0932ea18f9039346036b2fe63d52aa69030b13d017a7c9cb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:855851b272e29874fcf275ede7af71eb4394fb5c51e9d47fd820f32276679ddc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.8 MB (380806594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008168826141d80644c8023866a2f81129dc7c70f90b453fcd058f517402204c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 00:26:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:26:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:26:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 00:26:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 00:27:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:27:38 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 00:27:39 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 00:27:52 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 00:27:52 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 00:32:31 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:32:32 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 00:32:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 00:32:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 00:35:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34953669e579024bb7efba737dc44c5fafdc1717b295b6705953f97e9d8a7e78`  
		Last Modified: Fri, 27 Jul 2018 01:03:14 GMT  
		Size: 832.9 KB (832931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae99436d200ca0be6685d57b9b9522411dec5d9100f89b423b6a011eaf17f19`  
		Last Modified: Fri, 27 Jul 2018 01:03:17 GMT  
		Size: 14.6 MB (14611413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca37ca9da132ca3963e56c3c76f858b634116e2fc1a76e207567b35ca4454ff`  
		Last Modified: Fri, 27 Jul 2018 01:03:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ce34662cac576f99fb5a5568a4a04e40f102bbfc9e98e365e048eafa397d6c`  
		Last Modified: Fri, 27 Jul 2018 01:03:06 GMT  
		Size: 5.4 KB (5417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1998a6397218256c0929fe64a19999b84760f68f69ab1cd30b4d057319aec1e`  
		Last Modified: Fri, 27 Jul 2018 01:03:30 GMT  
		Size: 49.4 MB (49388587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac8e5dabb3991d72916093531ec8d8b84e5b727bd7000e2511f1f2b5cd4ef5b`  
		Last Modified: Fri, 27 Jul 2018 01:03:07 GMT  
		Size: 798.2 KB (798183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f11eb6b0b29e8b5f4c63d58cc8a7182afa34bd5462ead7b988187323637b6`  
		Last Modified: Fri, 27 Jul 2018 01:04:47 GMT  
		Size: 215.3 MB (215334471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be064c6b1801346e28aabc5eedbeb486699d526de94e2d51872f6151c4aa10`  
		Last Modified: Fri, 27 Jul 2018 01:03:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eac4a8ae614977911853178ab95b0f897f11dcbd33566b9c279fb1a615702e9`  
		Last Modified: Fri, 27 Jul 2018 01:06:08 GMT  
		Size: 68.2 MB (68172798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:7d6276f8975a253b0a95e3bd22c9160e7adcf1740622d3ab338854410281c44a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.7 MB (334713591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b01b8bcc6ad35a7a26b47dea7fb04d275e1690c3206d2bba92ac8fae5a3dd16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:19:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:19:39 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:19:40 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 13:21:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:21:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:21:20 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:22:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4c89648227081ec4bfab5dba523c1db2348660a617b137e5c6ade577bdbed5`  
		Last Modified: Fri, 27 Jul 2018 13:37:34 GMT  
		Size: 832.9 KB (832876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e6240343d19c3e6ef4412526f96559383a54a118f39348132d9b1d95c4990`  
		Last Modified: Fri, 27 Jul 2018 13:37:37 GMT  
		Size: 13.0 MB (13024507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1ad5d7bda2ca715aec64cf551d221d6f77f172b2f5385d869f44d6e08e6412`  
		Last Modified: Fri, 27 Jul 2018 13:37:33 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f074d61e28133dfd12d1fb7d976ec8ced0dd3f3648e08f0d7e65757fc69dff`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 5.4 KB (5447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870348448753ec48af9281b395dc720d12db14763125c05b2a2025a9f93c4758`  
		Last Modified: Fri, 27 Jul 2018 13:37:43 GMT  
		Size: 45.0 MB (45014747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73afb661f4ade1ececbf21bb5fa8bb964587f4436119d0dbdee96a7f879f6a18`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 800.1 KB (800077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34aefd8bd75ac2d462b2a9bec1566b12e88df3f8644864138d6164e3dff2f129`  
		Last Modified: Fri, 27 Jul 2018 13:38:21 GMT  
		Size: 188.0 MB (187961709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42374ffbbc4b7f6e64324c23b35610f283892694ea1294c01d57c061bb066b4a`  
		Last Modified: Fri, 27 Jul 2018 13:37:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf32452d17d1395451a8df29c2adcf075bd932c3dface643cac455ed27eee9fb`  
		Last Modified: Fri, 27 Jul 2018 13:39:07 GMT  
		Size: 60.0 MB (59982428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3facc4f3f9273ed9d8c29f8be7e4930318866236ae1c3f940f91f98857b215c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.8 MB (357811664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ea97fc0e2af28ab57a9ef91de9d415ffbb399c4c7c531c5d6e1b54778ecd65`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 14:40:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 14:42:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 14:44:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 14:45:49 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 14:46:01 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 14:55:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:55:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:55:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:55:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:58:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7826547d795dba0887aa3960c6af162b49027573e2bdb42bd733f77c82b52a72`  
		Last Modified: Fri, 27 Jul 2018 15:42:15 GMT  
		Size: 832.6 KB (832628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b6bccccd30880c1742f5ac854544c945f7529ac0f7d831df505e467730c72`  
		Last Modified: Fri, 27 Jul 2018 15:42:21 GMT  
		Size: 13.8 MB (13820756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6916c225b8d096dd61f0025089516db203ae3ff6a0bd419f2dc78e27913ebed`  
		Last Modified: Fri, 27 Jul 2018 15:42:12 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c651169f1d2a8008383f1f637bbe15b3d94bab31afc0230257e768e3f9709`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0265426265df43dc414a2f8d15383c4028715a9872e8f9b5f973ea4cd66488`  
		Last Modified: Fri, 27 Jul 2018 15:42:36 GMT  
		Size: 47.6 MB (47608143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3da1b6ebef29ecf90d0c35f87d91e577a36991bb18ac62668e3e47a8d450f54`  
		Last Modified: Fri, 27 Jul 2018 15:42:11 GMT  
		Size: 800.1 KB (800057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98f5b759ffad3c0b75cf56444202ee63378975ed12015bb8ef99ab80ace4298`  
		Last Modified: Fri, 27 Jul 2018 15:43:40 GMT  
		Size: 202.8 MB (202820921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263ced09bea82cd64f1448f0f714207559a34514f08129aaea324ccf7104a576`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ab435a7ba15c977f8ab0a340b5e2cc0f19973429b66a133518515efea130e`  
		Last Modified: Fri, 27 Jul 2018 15:44:47 GMT  
		Size: 63.4 MB (63378029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:996c1990e4bf54ed3e40395b51ff880a16b44064985a282ff22195d423697b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:6e5160dc483d1ff502b727c0069874b2363926f1d97915fcc5f34f243f608897
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.5 MB (384476052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51389abf49233209c41c87b83abaa558ca6f4856162f01ae6b719c7c0f41d1a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:10:24 GMT
ENV ROS_DISTRO=lunar
# Wed, 22 Aug 2018 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:11:46 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:11:47 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:13:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e0a311d20b46354addfe6004562f085758c751aaf9848e1867eb14b370896e`  
		Last Modified: Wed, 22 Aug 2018 20:55:07 GMT  
		Size: 193.3 MB (193262686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf21a2a1365be0f599287bf22896958c9b4088ddaffe8986523739fda00ef1da`  
		Last Modified: Wed, 22 Aug 2018 20:53:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7acafa98831aabaf36b431897f2f6751998c11944ef53d89041b1087fb61caf`  
		Last Modified: Wed, 22 Aug 2018 20:56:20 GMT  
		Size: 85.6 MB (85615411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:6da8580ae86e9d4c4919e121fec7a37756ddabeaa6213dfdfbaad15f740c3268
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (335982123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837431e30c1657b8f2a55588e5fc57b62d4abb71763558ef9f5e094a0ad24463`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:11:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 13:12:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:12:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:12:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:12:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:13:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4676565d4669a34eb137944849e70d785c03e186a4d53cfcb7c33107cb536c`  
		Last Modified: Fri, 27 Jul 2018 13:33:20 GMT  
		Size: 164.6 MB (164613150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e10ed73f912acdc20d5081ba2455d30be16a975237134d0289189450e899aa`  
		Last Modified: Fri, 27 Jul 2018 13:32:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3d29f3e6a80f55a04bb5c86fe63aa2db0327bf630fd425f760a93f76cc241a`  
		Last Modified: Fri, 27 Jul 2018 13:34:07 GMT  
		Size: 76.4 MB (76392373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b91a1bbf4b8100f3eadd58634f88336416407c5758a2d01176d454b034f9863e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.8 MB (349786641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd16da9fb1ff507bfef84f9e173182deeb91b66bc1e29a81f60dc82ff9f2dd1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:57:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 14:07:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:07:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:07:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:07:41 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:14:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c66a3b58e1e64581116926ece2604dc9538e529c2762a91516beda9fd9417`  
		Last Modified: Fri, 27 Jul 2018 15:35:50 GMT  
		Size: 173.9 MB (173875139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b0f75ba13edb8c24e64796274be98e47787be56ee892372952b2a6b26be4db`  
		Last Modified: Fri, 27 Jul 2018 15:34:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56da9219ac0a054261a2d311eeaf8c41deb0556916ce9f327e2ed3e114a58fed`  
		Last Modified: Fri, 27 Jul 2018 15:37:17 GMT  
		Size: 77.9 MB (77887719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:e85c0274810a9fef0e83fd1287ca92b5f538a8e6918b5f9c3a2491ac379e7683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:9cbb009e240f6289cb9e306115df6cd42bd9dfb488e9d8396a99b5c7d4ac6cbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.6 MB (723568559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7a6f10bb047cb1ab30da4209a6b8bedf2834783035dbbae33956ceaaf56ebe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:10:24 GMT
ENV ROS_DISTRO=lunar
# Wed, 22 Aug 2018 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:11:46 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:11:47 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:13:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:17:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e0a311d20b46354addfe6004562f085758c751aaf9848e1867eb14b370896e`  
		Last Modified: Wed, 22 Aug 2018 20:55:07 GMT  
		Size: 193.3 MB (193262686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf21a2a1365be0f599287bf22896958c9b4088ddaffe8986523739fda00ef1da`  
		Last Modified: Wed, 22 Aug 2018 20:53:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7acafa98831aabaf36b431897f2f6751998c11944ef53d89041b1087fb61caf`  
		Last Modified: Wed, 22 Aug 2018 20:56:20 GMT  
		Size: 85.6 MB (85615411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb185e5e8dc8d87fe34d708ef1b38a734bd382c3943b23bdae6260cb74e8b0f`  
		Last Modified: Wed, 22 Aug 2018 21:01:09 GMT  
		Size: 339.1 MB (339092507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:edb4e44dee86a48a663f4e2d36dde4dfcc36116eb499ee6522a3195d88f736f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.2 MB (616232928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:140e31a7ba7d5c9f001568091f03b11ca91bf28e2ca94bf32b351acf0b052912`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:11:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 13:12:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:12:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:12:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:12:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:13:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:17:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4676565d4669a34eb137944849e70d785c03e186a4d53cfcb7c33107cb536c`  
		Last Modified: Fri, 27 Jul 2018 13:33:20 GMT  
		Size: 164.6 MB (164613150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e10ed73f912acdc20d5081ba2455d30be16a975237134d0289189450e899aa`  
		Last Modified: Fri, 27 Jul 2018 13:32:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3d29f3e6a80f55a04bb5c86fe63aa2db0327bf630fd425f760a93f76cc241a`  
		Last Modified: Fri, 27 Jul 2018 13:34:07 GMT  
		Size: 76.4 MB (76392373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f3d8327d34c6b2d3f6b1eef5b54b01eac8368b9d3a03681bfbd457b77ab32`  
		Last Modified: Fri, 27 Jul 2018 13:37:00 GMT  
		Size: 280.3 MB (280250805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:efba5a346838bb6534a9af21a2300f5b258d9a5284578b6facb893bb4001513b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.7 MB (639740232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5435cd2aef25aec29ed7e4f5c78f208db7eceb338cd0aad43a87dd0bbccfa69a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:57:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 14:07:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:07:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:07:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:07:41 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:14:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:39:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c66a3b58e1e64581116926ece2604dc9538e529c2762a91516beda9fd9417`  
		Last Modified: Fri, 27 Jul 2018 15:35:50 GMT  
		Size: 173.9 MB (173875139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b0f75ba13edb8c24e64796274be98e47787be56ee892372952b2a6b26be4db`  
		Last Modified: Fri, 27 Jul 2018 15:34:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56da9219ac0a054261a2d311eeaf8c41deb0556916ce9f327e2ed3e114a58fed`  
		Last Modified: Fri, 27 Jul 2018 15:37:17 GMT  
		Size: 77.9 MB (77887719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f757324da8a3c721651f2407f86500db797ecf7cf82963709e81fce94335fd6`  
		Last Modified: Fri, 27 Jul 2018 15:41:30 GMT  
		Size: 290.0 MB (289953591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:d80a57e75730e96f9c1f8cd039c6a13a75f41c0c248cbbb4cad17d3202d3412f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:eb2f9e0021a8e4cb7bbdb5169adffcce48aaba0a92fcbb713a18517daf8763b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **932.4 MB (932427545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d91efa6a8e69cb328650a66100244635cd355a12a550de5bcf70f15bc780210`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:24:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:24:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 08:24:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 08:25:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:25:02 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:25:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 08:25:19 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 08:25:20 GMT
ENV ROS_DISTRO=lunar
# Tue, 17 Jul 2018 08:27:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:27:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 08:27:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 08:27:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:28:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:35:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ebae7fd092a66d0d9a42a5613c6cc852ffe1fbae412317b94c8c74de308d22`  
		Last Modified: Tue, 17 Jul 2018 09:31:16 GMT  
		Size: 21.1 MB (21066196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b432d0f523f751fe8b15956f7939577edab4816852ff2e9193f6117aee5fa3`  
		Last Modified: Tue, 17 Jul 2018 09:31:07 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b75c9599f61f91c9f69702d8e6e251a93b69f987f5e8773920a2af73bba27b`  
		Last Modified: Tue, 17 Jul 2018 09:31:04 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c28f0aa49f17add878a9dbecb0b7f6c00cffaad6b2b46f4e951ec3b59f80403`  
		Last Modified: Tue, 17 Jul 2018 09:31:30 GMT  
		Size: 53.5 MB (53502933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b979d5446117f08301a9111f4c76c1ae9ff4ffd4324c45453e9bb96afa7331f`  
		Last Modified: Tue, 17 Jul 2018 09:31:06 GMT  
		Size: 794.1 KB (794116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24f615ac30b41247380ad772d840018d77ed47bf0a4ef92422c41b9cc102a61`  
		Last Modified: Tue, 17 Jul 2018 09:32:42 GMT  
		Size: 251.1 MB (251081509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34ce160d6956522ced11d80f8505df145e0c20630d079b2c01faf18d46e8152`  
		Last Modified: Tue, 17 Jul 2018 09:31:05 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353dd14465380884612b813edc5cbec21b0dfb23259ba28e0ea51c4e9affaa5`  
		Last Modified: Tue, 17 Jul 2018 09:33:56 GMT  
		Size: 122.2 MB (122229180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bac019b987c341ab6131317901bef3a8077b5e97d96ff8dc15cbc25a3c7eebd`  
		Last Modified: Tue, 17 Jul 2018 09:37:50 GMT  
		Size: 438.4 MB (438437031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:07da20f4dedff57ab266eccc642ad267d0090dfb523983bab3674963c6eebbc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **815.6 MB (815636791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffbd369e962749edbc766580e824a2c2163202519301f646e9091d32ae1a8acf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 19:40:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 19:40:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 19:41:51 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:41:58 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:41:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 19:42:55 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 19:42:55 GMT
ENV ROS_DISTRO=lunar
# Tue, 17 Jul 2018 19:54:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:54:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 19:54:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 19:54:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 20:00:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:27:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4c44f71d4be482c02fcf1b92b2c2fe291b5521c9e97a14ef18e94373ef6d`  
		Last Modified: Tue, 17 Jul 2018 21:01:22 GMT  
		Size: 19.7 MB (19731106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80d7b09efff2ece5ecbeae72fd76e399a37b14251a4c8329626669ba981e9f9`  
		Last Modified: Tue, 17 Jul 2018 21:00:30 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1094f909edceaf93e034e225b86dda0fe27065b2b0200cf3b4fd332f56521c0`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263b442182e43276514fd2a98a3fdf21541d94c3199925aa906a14eaf1b340b7`  
		Last Modified: Tue, 17 Jul 2018 21:02:18 GMT  
		Size: 51.5 MB (51463775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91cf8896e6ff5974ac156a936c4d9c329b56635e6ff5b349056c5fb6c20772d`  
		Last Modified: Tue, 17 Jul 2018 21:00:29 GMT  
		Size: 794.6 KB (794625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee3882d4da36d117c3ab74ec9bf7fcf73043379d68adc8e1a6eca10207db8d1`  
		Last Modified: Tue, 17 Jul 2018 21:04:44 GMT  
		Size: 206.0 MB (206001147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ca20c442a62eff879a20fa1e5cd24e601556e54de2f0dd0cc2bd90126b4893`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabb4b28b02c3faccb9aa57502156d0a5de60be34d0845cfdf6c967051e1e0d3`  
		Last Modified: Tue, 17 Jul 2018 21:06:09 GMT  
		Size: 116.0 MB (116023415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09284aa43305f0489fa01b3f49d2b49a4b1c2d195a519d29d71e9c8141b6b928`  
		Last Modified: Tue, 17 Jul 2018 21:10:11 GMT  
		Size: 378.5 MB (378492609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:e85c0274810a9fef0e83fd1287ca92b5f538a8e6918b5f9c3a2491ac379e7683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:9cbb009e240f6289cb9e306115df6cd42bd9dfb488e9d8396a99b5c7d4ac6cbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.6 MB (723568559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7a6f10bb047cb1ab30da4209a6b8bedf2834783035dbbae33956ceaaf56ebe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:10:24 GMT
ENV ROS_DISTRO=lunar
# Wed, 22 Aug 2018 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:11:46 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:11:47 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:13:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:17:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e0a311d20b46354addfe6004562f085758c751aaf9848e1867eb14b370896e`  
		Last Modified: Wed, 22 Aug 2018 20:55:07 GMT  
		Size: 193.3 MB (193262686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf21a2a1365be0f599287bf22896958c9b4088ddaffe8986523739fda00ef1da`  
		Last Modified: Wed, 22 Aug 2018 20:53:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7acafa98831aabaf36b431897f2f6751998c11944ef53d89041b1087fb61caf`  
		Last Modified: Wed, 22 Aug 2018 20:56:20 GMT  
		Size: 85.6 MB (85615411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb185e5e8dc8d87fe34d708ef1b38a734bd382c3943b23bdae6260cb74e8b0f`  
		Last Modified: Wed, 22 Aug 2018 21:01:09 GMT  
		Size: 339.1 MB (339092507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:edb4e44dee86a48a663f4e2d36dde4dfcc36116eb499ee6522a3195d88f736f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.2 MB (616232928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:140e31a7ba7d5c9f001568091f03b11ca91bf28e2ca94bf32b351acf0b052912`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:11:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 13:12:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:12:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:12:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:12:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:13:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:17:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4676565d4669a34eb137944849e70d785c03e186a4d53cfcb7c33107cb536c`  
		Last Modified: Fri, 27 Jul 2018 13:33:20 GMT  
		Size: 164.6 MB (164613150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e10ed73f912acdc20d5081ba2455d30be16a975237134d0289189450e899aa`  
		Last Modified: Fri, 27 Jul 2018 13:32:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3d29f3e6a80f55a04bb5c86fe63aa2db0327bf630fd425f760a93f76cc241a`  
		Last Modified: Fri, 27 Jul 2018 13:34:07 GMT  
		Size: 76.4 MB (76392373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f3d8327d34c6b2d3f6b1eef5b54b01eac8368b9d3a03681bfbd457b77ab32`  
		Last Modified: Fri, 27 Jul 2018 13:37:00 GMT  
		Size: 280.3 MB (280250805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:efba5a346838bb6534a9af21a2300f5b258d9a5284578b6facb893bb4001513b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.7 MB (639740232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5435cd2aef25aec29ed7e4f5c78f208db7eceb338cd0aad43a87dd0bbccfa69a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:57:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 14:07:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:07:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:07:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:07:41 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:14:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:39:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c66a3b58e1e64581116926ece2604dc9538e529c2762a91516beda9fd9417`  
		Last Modified: Fri, 27 Jul 2018 15:35:50 GMT  
		Size: 173.9 MB (173875139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b0f75ba13edb8c24e64796274be98e47787be56ee892372952b2a6b26be4db`  
		Last Modified: Fri, 27 Jul 2018 15:34:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56da9219ac0a054261a2d311eeaf8c41deb0556916ce9f327e2ed3e114a58fed`  
		Last Modified: Fri, 27 Jul 2018 15:37:17 GMT  
		Size: 77.9 MB (77887719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f757324da8a3c721651f2407f86500db797ecf7cf82963709e81fce94335fd6`  
		Last Modified: Fri, 27 Jul 2018 15:41:30 GMT  
		Size: 290.0 MB (289953591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:44627711a116baa5bbf34e9864b55886ee64645a05a1e708988899b8c3abd52c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:3ac7cfc8cfcc34827ae44dfaf39eaa065ba5bdbe6494674087dd40e1f52e8a69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.2 MB (488194958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4983ea97dcfb928f44ed332356a9bb206d18c3b689defcdc2cf6f382ac145e89`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:10:24 GMT
ENV ROS_DISTRO=lunar
# Wed, 22 Aug 2018 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:11:46 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:11:47 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:13:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:14:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e0a311d20b46354addfe6004562f085758c751aaf9848e1867eb14b370896e`  
		Last Modified: Wed, 22 Aug 2018 20:55:07 GMT  
		Size: 193.3 MB (193262686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf21a2a1365be0f599287bf22896958c9b4088ddaffe8986523739fda00ef1da`  
		Last Modified: Wed, 22 Aug 2018 20:53:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7acafa98831aabaf36b431897f2f6751998c11944ef53d89041b1087fb61caf`  
		Last Modified: Wed, 22 Aug 2018 20:56:20 GMT  
		Size: 85.6 MB (85615411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe6a9f928be67a2e3b43d68bb258e4bf2ef73eb0d9faf74a5fed425ffc8c45b`  
		Last Modified: Wed, 22 Aug 2018 20:58:15 GMT  
		Size: 103.7 MB (103718906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:5894cbfeb826d8583d0e661c2f9af33154ca519941a6ae3c842f4979b590acb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426077469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425a31f069d93e09096746ec093b134bfdae669a163ef1c39e65f967619b87b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:11:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 13:12:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:12:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:12:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:12:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:13:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:14:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4676565d4669a34eb137944849e70d785c03e186a4d53cfcb7c33107cb536c`  
		Last Modified: Fri, 27 Jul 2018 13:33:20 GMT  
		Size: 164.6 MB (164613150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e10ed73f912acdc20d5081ba2455d30be16a975237134d0289189450e899aa`  
		Last Modified: Fri, 27 Jul 2018 13:32:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3d29f3e6a80f55a04bb5c86fe63aa2db0327bf630fd425f760a93f76cc241a`  
		Last Modified: Fri, 27 Jul 2018 13:34:07 GMT  
		Size: 76.4 MB (76392373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114bd82a9a293c232eaaa26f2eb6a5ecd5197cf0f896b64e25e9bd33bfcae3c4`  
		Last Modified: Fri, 27 Jul 2018 13:35:11 GMT  
		Size: 90.1 MB (90095346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6bf3022d70b4db131b6b1774c52055f95c014eff8959d5f6dc5dda645d42d4b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443791936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb111700a3cc381433d8db106aaa0df1d5f2e3bd8eecf980c47ed41c65f7497`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:57:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 14:07:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:07:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:07:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:07:41 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:14:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:20:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c66a3b58e1e64581116926ece2604dc9538e529c2762a91516beda9fd9417`  
		Last Modified: Fri, 27 Jul 2018 15:35:50 GMT  
		Size: 173.9 MB (173875139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b0f75ba13edb8c24e64796274be98e47787be56ee892372952b2a6b26be4db`  
		Last Modified: Fri, 27 Jul 2018 15:34:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56da9219ac0a054261a2d311eeaf8c41deb0556916ce9f327e2ed3e114a58fed`  
		Last Modified: Fri, 27 Jul 2018 15:37:17 GMT  
		Size: 77.9 MB (77887719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995a5ff143d76dbfe84f1ed98fb6b702034229156425b6056bd7b55dfa417699`  
		Last Modified: Fri, 27 Jul 2018 15:38:52 GMT  
		Size: 94.0 MB (94005295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:b975e1e806ba6d053e5426fd90eb5dc4c99d95f7b95dc7d4754bb5b9a16d2887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:53c813a5330480f69900ddff5576aee9221614efd78db57f0ba06e758c6ee46f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **554.4 MB (554431739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c239d3635667d9ac13be4b9b1724060318dd275f9b4cb721102e7a63b332923`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:24:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:24:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 08:24:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 08:25:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:25:02 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:25:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 08:25:19 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 08:25:20 GMT
ENV ROS_DISTRO=lunar
# Tue, 17 Jul 2018 08:27:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:27:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 08:27:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 08:27:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:28:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:30:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ebae7fd092a66d0d9a42a5613c6cc852ffe1fbae412317b94c8c74de308d22`  
		Last Modified: Tue, 17 Jul 2018 09:31:16 GMT  
		Size: 21.1 MB (21066196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b432d0f523f751fe8b15956f7939577edab4816852ff2e9193f6117aee5fa3`  
		Last Modified: Tue, 17 Jul 2018 09:31:07 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b75c9599f61f91c9f69702d8e6e251a93b69f987f5e8773920a2af73bba27b`  
		Last Modified: Tue, 17 Jul 2018 09:31:04 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c28f0aa49f17add878a9dbecb0b7f6c00cffaad6b2b46f4e951ec3b59f80403`  
		Last Modified: Tue, 17 Jul 2018 09:31:30 GMT  
		Size: 53.5 MB (53502933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b979d5446117f08301a9111f4c76c1ae9ff4ffd4324c45453e9bb96afa7331f`  
		Last Modified: Tue, 17 Jul 2018 09:31:06 GMT  
		Size: 794.1 KB (794116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24f615ac30b41247380ad772d840018d77ed47bf0a4ef92422c41b9cc102a61`  
		Last Modified: Tue, 17 Jul 2018 09:32:42 GMT  
		Size: 251.1 MB (251081509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34ce160d6956522ced11d80f8505df145e0c20630d079b2c01faf18d46e8152`  
		Last Modified: Tue, 17 Jul 2018 09:31:05 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353dd14465380884612b813edc5cbec21b0dfb23259ba28e0ea51c4e9affaa5`  
		Last Modified: Tue, 17 Jul 2018 09:33:56 GMT  
		Size: 122.2 MB (122229180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613e920e875919be3d0489d9a0713f2a2cda42b4567717ecff081f2800f800a3`  
		Last Modified: Tue, 17 Jul 2018 09:34:41 GMT  
		Size: 60.4 MB (60441225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:966f4ff11bb97a416d6f243cc78cd100401817be8a43c93dd4ad9a7515a548bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.7 MB (494665364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411ea03757a2cdef591bed7608fee5ff10565d5742a7f2f6e4772a4562a06703`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 19:40:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 19:40:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 19:41:51 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:41:58 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:41:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 19:42:55 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 19:42:55 GMT
ENV ROS_DISTRO=lunar
# Tue, 17 Jul 2018 19:54:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:54:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 19:54:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 19:54:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 20:00:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:06:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4c44f71d4be482c02fcf1b92b2c2fe291b5521c9e97a14ef18e94373ef6d`  
		Last Modified: Tue, 17 Jul 2018 21:01:22 GMT  
		Size: 19.7 MB (19731106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80d7b09efff2ece5ecbeae72fd76e399a37b14251a4c8329626669ba981e9f9`  
		Last Modified: Tue, 17 Jul 2018 21:00:30 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1094f909edceaf93e034e225b86dda0fe27065b2b0200cf3b4fd332f56521c0`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263b442182e43276514fd2a98a3fdf21541d94c3199925aa906a14eaf1b340b7`  
		Last Modified: Tue, 17 Jul 2018 21:02:18 GMT  
		Size: 51.5 MB (51463775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91cf8896e6ff5974ac156a936c4d9c329b56635e6ff5b349056c5fb6c20772d`  
		Last Modified: Tue, 17 Jul 2018 21:00:29 GMT  
		Size: 794.6 KB (794625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee3882d4da36d117c3ab74ec9bf7fcf73043379d68adc8e1a6eca10207db8d1`  
		Last Modified: Tue, 17 Jul 2018 21:04:44 GMT  
		Size: 206.0 MB (206001147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ca20c442a62eff879a20fa1e5cd24e601556e54de2f0dd0cc2bd90126b4893`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabb4b28b02c3faccb9aa57502156d0a5de60be34d0845cfdf6c967051e1e0d3`  
		Last Modified: Tue, 17 Jul 2018 21:06:09 GMT  
		Size: 116.0 MB (116023415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18c4e51a1409bfdbfcec3e44feec92341b51ecbe86a69889d9c7257338985a5`  
		Last Modified: Tue, 17 Jul 2018 21:06:56 GMT  
		Size: 57.5 MB (57521182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:44627711a116baa5bbf34e9864b55886ee64645a05a1e708988899b8c3abd52c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:3ac7cfc8cfcc34827ae44dfaf39eaa065ba5bdbe6494674087dd40e1f52e8a69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.2 MB (488194958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4983ea97dcfb928f44ed332356a9bb206d18c3b689defcdc2cf6f382ac145e89`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:10:24 GMT
ENV ROS_DISTRO=lunar
# Wed, 22 Aug 2018 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:11:46 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:11:47 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:13:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:14:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e0a311d20b46354addfe6004562f085758c751aaf9848e1867eb14b370896e`  
		Last Modified: Wed, 22 Aug 2018 20:55:07 GMT  
		Size: 193.3 MB (193262686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf21a2a1365be0f599287bf22896958c9b4088ddaffe8986523739fda00ef1da`  
		Last Modified: Wed, 22 Aug 2018 20:53:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7acafa98831aabaf36b431897f2f6751998c11944ef53d89041b1087fb61caf`  
		Last Modified: Wed, 22 Aug 2018 20:56:20 GMT  
		Size: 85.6 MB (85615411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe6a9f928be67a2e3b43d68bb258e4bf2ef73eb0d9faf74a5fed425ffc8c45b`  
		Last Modified: Wed, 22 Aug 2018 20:58:15 GMT  
		Size: 103.7 MB (103718906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:5894cbfeb826d8583d0e661c2f9af33154ca519941a6ae3c842f4979b590acb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426077469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425a31f069d93e09096746ec093b134bfdae669a163ef1c39e65f967619b87b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:11:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 13:12:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:12:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:12:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:12:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:13:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:14:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4676565d4669a34eb137944849e70d785c03e186a4d53cfcb7c33107cb536c`  
		Last Modified: Fri, 27 Jul 2018 13:33:20 GMT  
		Size: 164.6 MB (164613150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e10ed73f912acdc20d5081ba2455d30be16a975237134d0289189450e899aa`  
		Last Modified: Fri, 27 Jul 2018 13:32:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3d29f3e6a80f55a04bb5c86fe63aa2db0327bf630fd425f760a93f76cc241a`  
		Last Modified: Fri, 27 Jul 2018 13:34:07 GMT  
		Size: 76.4 MB (76392373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114bd82a9a293c232eaaa26f2eb6a5ecd5197cf0f896b64e25e9bd33bfcae3c4`  
		Last Modified: Fri, 27 Jul 2018 13:35:11 GMT  
		Size: 90.1 MB (90095346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6bf3022d70b4db131b6b1774c52055f95c014eff8959d5f6dc5dda645d42d4b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443791936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb111700a3cc381433d8db106aaa0df1d5f2e3bd8eecf980c47ed41c65f7497`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:57:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 14:07:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:07:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:07:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:07:41 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:14:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:20:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c66a3b58e1e64581116926ece2604dc9538e529c2762a91516beda9fd9417`  
		Last Modified: Fri, 27 Jul 2018 15:35:50 GMT  
		Size: 173.9 MB (173875139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b0f75ba13edb8c24e64796274be98e47787be56ee892372952b2a6b26be4db`  
		Last Modified: Fri, 27 Jul 2018 15:34:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56da9219ac0a054261a2d311eeaf8c41deb0556916ce9f327e2ed3e114a58fed`  
		Last Modified: Fri, 27 Jul 2018 15:37:17 GMT  
		Size: 77.9 MB (77887719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995a5ff143d76dbfe84f1ed98fb6b702034229156425b6056bd7b55dfa417699`  
		Last Modified: Fri, 27 Jul 2018 15:38:52 GMT  
		Size: 94.0 MB (94005295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:996c1990e4bf54ed3e40395b51ff880a16b44064985a282ff22195d423697b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:6e5160dc483d1ff502b727c0069874b2363926f1d97915fcc5f34f243f608897
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.5 MB (384476052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51389abf49233209c41c87b83abaa558ca6f4856162f01ae6b719c7c0f41d1a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:10:24 GMT
ENV ROS_DISTRO=lunar
# Wed, 22 Aug 2018 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:11:46 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:11:47 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:13:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e0a311d20b46354addfe6004562f085758c751aaf9848e1867eb14b370896e`  
		Last Modified: Wed, 22 Aug 2018 20:55:07 GMT  
		Size: 193.3 MB (193262686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf21a2a1365be0f599287bf22896958c9b4088ddaffe8986523739fda00ef1da`  
		Last Modified: Wed, 22 Aug 2018 20:53:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7acafa98831aabaf36b431897f2f6751998c11944ef53d89041b1087fb61caf`  
		Last Modified: Wed, 22 Aug 2018 20:56:20 GMT  
		Size: 85.6 MB (85615411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:6da8580ae86e9d4c4919e121fec7a37756ddabeaa6213dfdfbaad15f740c3268
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (335982123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837431e30c1657b8f2a55588e5fc57b62d4abb71763558ef9f5e094a0ad24463`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:11:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 13:12:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:12:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:12:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:12:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:13:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4676565d4669a34eb137944849e70d785c03e186a4d53cfcb7c33107cb536c`  
		Last Modified: Fri, 27 Jul 2018 13:33:20 GMT  
		Size: 164.6 MB (164613150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e10ed73f912acdc20d5081ba2455d30be16a975237134d0289189450e899aa`  
		Last Modified: Fri, 27 Jul 2018 13:32:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3d29f3e6a80f55a04bb5c86fe63aa2db0327bf630fd425f760a93f76cc241a`  
		Last Modified: Fri, 27 Jul 2018 13:34:07 GMT  
		Size: 76.4 MB (76392373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b91a1bbf4b8100f3eadd58634f88336416407c5758a2d01176d454b034f9863e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.8 MB (349786641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd16da9fb1ff507bfef84f9e173182deeb91b66bc1e29a81f60dc82ff9f2dd1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:57:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 14:07:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:07:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:07:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:07:41 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:14:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c66a3b58e1e64581116926ece2604dc9538e529c2762a91516beda9fd9417`  
		Last Modified: Fri, 27 Jul 2018 15:35:50 GMT  
		Size: 173.9 MB (173875139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b0f75ba13edb8c24e64796274be98e47787be56ee892372952b2a6b26be4db`  
		Last Modified: Fri, 27 Jul 2018 15:34:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56da9219ac0a054261a2d311eeaf8c41deb0556916ce9f327e2ed3e114a58fed`  
		Last Modified: Fri, 27 Jul 2018 15:37:17 GMT  
		Size: 77.9 MB (77887719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:31ae78bb85d939a4b455a022c7a51216783e7a4cfba8b4a22429590e794fd19f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:d00e4796a497796519117929db320f7ea395e3a5cf57f00be7c0aa6205eb70ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.0 MB (493990514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a465fba32a8fa5ff5d860aad548a1f92d23b85f3017aeaed3daa2e9a135fe987`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:24:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:24:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 08:24:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 08:25:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:25:02 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:25:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 08:25:19 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 08:25:20 GMT
ENV ROS_DISTRO=lunar
# Tue, 17 Jul 2018 08:27:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:27:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 08:27:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 08:27:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:28:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ebae7fd092a66d0d9a42a5613c6cc852ffe1fbae412317b94c8c74de308d22`  
		Last Modified: Tue, 17 Jul 2018 09:31:16 GMT  
		Size: 21.1 MB (21066196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b432d0f523f751fe8b15956f7939577edab4816852ff2e9193f6117aee5fa3`  
		Last Modified: Tue, 17 Jul 2018 09:31:07 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b75c9599f61f91c9f69702d8e6e251a93b69f987f5e8773920a2af73bba27b`  
		Last Modified: Tue, 17 Jul 2018 09:31:04 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c28f0aa49f17add878a9dbecb0b7f6c00cffaad6b2b46f4e951ec3b59f80403`  
		Last Modified: Tue, 17 Jul 2018 09:31:30 GMT  
		Size: 53.5 MB (53502933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b979d5446117f08301a9111f4c76c1ae9ff4ffd4324c45453e9bb96afa7331f`  
		Last Modified: Tue, 17 Jul 2018 09:31:06 GMT  
		Size: 794.1 KB (794116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24f615ac30b41247380ad772d840018d77ed47bf0a4ef92422c41b9cc102a61`  
		Last Modified: Tue, 17 Jul 2018 09:32:42 GMT  
		Size: 251.1 MB (251081509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34ce160d6956522ced11d80f8505df145e0c20630d079b2c01faf18d46e8152`  
		Last Modified: Tue, 17 Jul 2018 09:31:05 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353dd14465380884612b813edc5cbec21b0dfb23259ba28e0ea51c4e9affaa5`  
		Last Modified: Tue, 17 Jul 2018 09:33:56 GMT  
		Size: 122.2 MB (122229180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:84be15c9bfe46561575140de04f869c25c85b6ba2867dbf770bfd17fffe1a766
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.1 MB (437144182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592a761d13cb314ebb127a8322694da62a2e440cb63dd8e113cdf5e8551a7f37`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 19:40:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 19:40:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 19:41:51 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:41:58 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:41:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 19:42:55 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 19:42:55 GMT
ENV ROS_DISTRO=lunar
# Tue, 17 Jul 2018 19:54:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:54:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 19:54:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 19:54:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 20:00:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4c44f71d4be482c02fcf1b92b2c2fe291b5521c9e97a14ef18e94373ef6d`  
		Last Modified: Tue, 17 Jul 2018 21:01:22 GMT  
		Size: 19.7 MB (19731106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80d7b09efff2ece5ecbeae72fd76e399a37b14251a4c8329626669ba981e9f9`  
		Last Modified: Tue, 17 Jul 2018 21:00:30 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1094f909edceaf93e034e225b86dda0fe27065b2b0200cf3b4fd332f56521c0`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263b442182e43276514fd2a98a3fdf21541d94c3199925aa906a14eaf1b340b7`  
		Last Modified: Tue, 17 Jul 2018 21:02:18 GMT  
		Size: 51.5 MB (51463775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91cf8896e6ff5974ac156a936c4d9c329b56635e6ff5b349056c5fb6c20772d`  
		Last Modified: Tue, 17 Jul 2018 21:00:29 GMT  
		Size: 794.6 KB (794625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee3882d4da36d117c3ab74ec9bf7fcf73043379d68adc8e1a6eca10207db8d1`  
		Last Modified: Tue, 17 Jul 2018 21:04:44 GMT  
		Size: 206.0 MB (206001147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ca20c442a62eff879a20fa1e5cd24e601556e54de2f0dd0cc2bd90126b4893`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabb4b28b02c3faccb9aa57502156d0a5de60be34d0845cfdf6c967051e1e0d3`  
		Last Modified: Tue, 17 Jul 2018 21:06:09 GMT  
		Size: 116.0 MB (116023415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:996c1990e4bf54ed3e40395b51ff880a16b44064985a282ff22195d423697b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:6e5160dc483d1ff502b727c0069874b2363926f1d97915fcc5f34f243f608897
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.5 MB (384476052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51389abf49233209c41c87b83abaa558ca6f4856162f01ae6b719c7c0f41d1a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:10:24 GMT
ENV ROS_DISTRO=lunar
# Wed, 22 Aug 2018 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:11:46 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:11:47 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:13:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e0a311d20b46354addfe6004562f085758c751aaf9848e1867eb14b370896e`  
		Last Modified: Wed, 22 Aug 2018 20:55:07 GMT  
		Size: 193.3 MB (193262686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf21a2a1365be0f599287bf22896958c9b4088ddaffe8986523739fda00ef1da`  
		Last Modified: Wed, 22 Aug 2018 20:53:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7acafa98831aabaf36b431897f2f6751998c11944ef53d89041b1087fb61caf`  
		Last Modified: Wed, 22 Aug 2018 20:56:20 GMT  
		Size: 85.6 MB (85615411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:6da8580ae86e9d4c4919e121fec7a37756ddabeaa6213dfdfbaad15f740c3268
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (335982123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837431e30c1657b8f2a55588e5fc57b62d4abb71763558ef9f5e094a0ad24463`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:11:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 13:12:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:12:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:12:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:12:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:13:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4676565d4669a34eb137944849e70d785c03e186a4d53cfcb7c33107cb536c`  
		Last Modified: Fri, 27 Jul 2018 13:33:20 GMT  
		Size: 164.6 MB (164613150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e10ed73f912acdc20d5081ba2455d30be16a975237134d0289189450e899aa`  
		Last Modified: Fri, 27 Jul 2018 13:32:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3d29f3e6a80f55a04bb5c86fe63aa2db0327bf630fd425f760a93f76cc241a`  
		Last Modified: Fri, 27 Jul 2018 13:34:07 GMT  
		Size: 76.4 MB (76392373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b91a1bbf4b8100f3eadd58634f88336416407c5758a2d01176d454b034f9863e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.8 MB (349786641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd16da9fb1ff507bfef84f9e173182deeb91b66bc1e29a81f60dc82ff9f2dd1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:57:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 14:07:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:07:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:07:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:07:41 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:14:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c66a3b58e1e64581116926ece2604dc9538e529c2762a91516beda9fd9417`  
		Last Modified: Fri, 27 Jul 2018 15:35:50 GMT  
		Size: 173.9 MB (173875139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b0f75ba13edb8c24e64796274be98e47787be56ee892372952b2a6b26be4db`  
		Last Modified: Fri, 27 Jul 2018 15:34:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56da9219ac0a054261a2d311eeaf8c41deb0556916ce9f327e2ed3e114a58fed`  
		Last Modified: Fri, 27 Jul 2018 15:37:17 GMT  
		Size: 77.9 MB (77887719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:1b9c5d531acb2bf91dff8d46d5fcd7330a8bb73d94178c15ef7bccc480cc640e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:deb12c70a707909ce6f4d30db73281da2752efb388a5f546a05e2b218ba36242
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 MB (298860641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2b0b3d5228435d27f1b9bf833870c7e10d062125c9a84650b56c8fbe1d1b25`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:10:24 GMT
ENV ROS_DISTRO=lunar
# Wed, 22 Aug 2018 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:11:46 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:11:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e0a311d20b46354addfe6004562f085758c751aaf9848e1867eb14b370896e`  
		Last Modified: Wed, 22 Aug 2018 20:55:07 GMT  
		Size: 193.3 MB (193262686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf21a2a1365be0f599287bf22896958c9b4088ddaffe8986523739fda00ef1da`  
		Last Modified: Wed, 22 Aug 2018 20:53:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:cb7b230c07a885bed33979b2da0dd5bf6024bd69f9d9db18da1fb397ffd5a229
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259589750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b52009b93394e347d07b7ed2547a05f72a81edb6614fd447148beb9aa97bfd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:11:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 13:12:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:12:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:12:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:12:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4676565d4669a34eb137944849e70d785c03e186a4d53cfcb7c33107cb536c`  
		Last Modified: Fri, 27 Jul 2018 13:33:20 GMT  
		Size: 164.6 MB (164613150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e10ed73f912acdc20d5081ba2455d30be16a975237134d0289189450e899aa`  
		Last Modified: Fri, 27 Jul 2018 13:32:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b1737bd65656558cb5d489a13e58bbb72e20c2765320f256792af0649724f273
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271898922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d2a8924e4a163b123ae7ef85d84cc45f9f87e5e5ca288bb503f951ba1bea44e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:57:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 14:07:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:07:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:07:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:07:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c66a3b58e1e64581116926ece2604dc9538e529c2762a91516beda9fd9417`  
		Last Modified: Fri, 27 Jul 2018 15:35:50 GMT  
		Size: 173.9 MB (173875139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b0f75ba13edb8c24e64796274be98e47787be56ee892372952b2a6b26be4db`  
		Last Modified: Fri, 27 Jul 2018 15:34:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:5cf9d6cc4b3cfcfbd1ca6eada3371be02636951b3f611472e9eecccbf7411d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:4c99ebfdc4284e241aa948ef0c2ce506fd384e73abafa462ac0d6405734843e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.8 MB (371761334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db89d5917b11803326324bff969b6f03e9c2a087daa4ae5b84fd66333b49a9f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:24:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:24:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 08:24:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 08:25:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:25:02 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:25:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 08:25:19 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 08:25:20 GMT
ENV ROS_DISTRO=lunar
# Tue, 17 Jul 2018 08:27:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:27:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 08:27:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 08:27:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ebae7fd092a66d0d9a42a5613c6cc852ffe1fbae412317b94c8c74de308d22`  
		Last Modified: Tue, 17 Jul 2018 09:31:16 GMT  
		Size: 21.1 MB (21066196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b432d0f523f751fe8b15956f7939577edab4816852ff2e9193f6117aee5fa3`  
		Last Modified: Tue, 17 Jul 2018 09:31:07 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b75c9599f61f91c9f69702d8e6e251a93b69f987f5e8773920a2af73bba27b`  
		Last Modified: Tue, 17 Jul 2018 09:31:04 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c28f0aa49f17add878a9dbecb0b7f6c00cffaad6b2b46f4e951ec3b59f80403`  
		Last Modified: Tue, 17 Jul 2018 09:31:30 GMT  
		Size: 53.5 MB (53502933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b979d5446117f08301a9111f4c76c1ae9ff4ffd4324c45453e9bb96afa7331f`  
		Last Modified: Tue, 17 Jul 2018 09:31:06 GMT  
		Size: 794.1 KB (794116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24f615ac30b41247380ad772d840018d77ed47bf0a4ef92422c41b9cc102a61`  
		Last Modified: Tue, 17 Jul 2018 09:32:42 GMT  
		Size: 251.1 MB (251081509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34ce160d6956522ced11d80f8505df145e0c20630d079b2c01faf18d46e8152`  
		Last Modified: Tue, 17 Jul 2018 09:31:05 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f3922de5b9522c70f72e68a5b175df4841a60329dbadadb75bec0ab3b27244cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321120767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90544e8db3b771962b5add069e461421d9cd3e29a2dd848ebd8e459bf1160868`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 19:40:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 19:40:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 19:41:51 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:41:58 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:41:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 19:42:55 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 19:42:55 GMT
ENV ROS_DISTRO=lunar
# Tue, 17 Jul 2018 19:54:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:54:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 19:54:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 19:54:26 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4c44f71d4be482c02fcf1b92b2c2fe291b5521c9e97a14ef18e94373ef6d`  
		Last Modified: Tue, 17 Jul 2018 21:01:22 GMT  
		Size: 19.7 MB (19731106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80d7b09efff2ece5ecbeae72fd76e399a37b14251a4c8329626669ba981e9f9`  
		Last Modified: Tue, 17 Jul 2018 21:00:30 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1094f909edceaf93e034e225b86dda0fe27065b2b0200cf3b4fd332f56521c0`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263b442182e43276514fd2a98a3fdf21541d94c3199925aa906a14eaf1b340b7`  
		Last Modified: Tue, 17 Jul 2018 21:02:18 GMT  
		Size: 51.5 MB (51463775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91cf8896e6ff5974ac156a936c4d9c329b56635e6ff5b349056c5fb6c20772d`  
		Last Modified: Tue, 17 Jul 2018 21:00:29 GMT  
		Size: 794.6 KB (794625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee3882d4da36d117c3ab74ec9bf7fcf73043379d68adc8e1a6eca10207db8d1`  
		Last Modified: Tue, 17 Jul 2018 21:04:44 GMT  
		Size: 206.0 MB (206001147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ca20c442a62eff879a20fa1e5cd24e601556e54de2f0dd0cc2bd90126b4893`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:1b9c5d531acb2bf91dff8d46d5fcd7330a8bb73d94178c15ef7bccc480cc640e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:deb12c70a707909ce6f4d30db73281da2752efb388a5f546a05e2b218ba36242
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 MB (298860641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2b0b3d5228435d27f1b9bf833870c7e10d062125c9a84650b56c8fbe1d1b25`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:52:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:54:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:54:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:55:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:55:34 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:55:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:55:50 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:10:24 GMT
ENV ROS_DISTRO=lunar
# Wed, 22 Aug 2018 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:11:46 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:11:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dbdc05a5ad71d3bfd5e0158ebfb3309445212b8f68bb7d4ebfb9ba465e427`  
		Last Modified: Wed, 22 Aug 2018 19:34:38 GMT  
		Size: 16.7 MB (16658482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd08f5e565a705f5193943b4ca301cafb2a39b7513ac6b36383caaff59dfdd8`  
		Last Modified: Wed, 22 Aug 2018 20:45:29 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9876ddb95d8000a8bb54fd41d0988f0b0965b208fc50e25c1540c07f05457b8e`  
		Last Modified: Wed, 22 Aug 2018 20:45:27 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f4c05d8fb91640140a854454078a39e249c6fc32d3feb5ca192294d3b37a29`  
		Last Modified: Wed, 22 Aug 2018 20:45:48 GMT  
		Size: 44.9 MB (44864319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6869a18e654b315469679ad20fb34c672db1b1408038043f46f035375d598cfa`  
		Last Modified: Wed, 22 Aug 2018 20:45:31 GMT  
		Size: 801.4 KB (801376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e0a311d20b46354addfe6004562f085758c751aaf9848e1867eb14b370896e`  
		Last Modified: Wed, 22 Aug 2018 20:55:07 GMT  
		Size: 193.3 MB (193262686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf21a2a1365be0f599287bf22896958c9b4088ddaffe8986523739fda00ef1da`  
		Last Modified: Wed, 22 Aug 2018 20:53:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:cb7b230c07a885bed33979b2da0dd5bf6024bd69f9d9db18da1fb397ffd5a229
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259589750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b52009b93394e347d07b7ed2547a05f72a81edb6614fd447148beb9aa97bfd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:44:24 GMT
ADD file:2728f0f83bda6845711501bf943fd13abc969494272cc51fa4ba6e69566757bb in / 
# Fri, 27 Jul 2018 12:44:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:44:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:44:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:44:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:44:28 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:03:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:03:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:04:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:04:03 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:04:26 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:11:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 13:12:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:12:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:12:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:12:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1b28ec1b6678c71341db2f0f49c3fccf15e9079d9ab9234f2583c3c0110e7ca9`  
		Last Modified: Fri, 27 Jul 2018 12:47:00 GMT  
		Size: 38.3 MB (38275310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5095796e5a6b7817666d2524a2c0abf8dbd0e6eaf5e5a3aa385eb4a9f08e97`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306de1710aa21ecbbc76516ef6692fb083801280201add6e6ccf10b8567836f`  
		Last Modified: Fri, 27 Jul 2018 12:46:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059dfcd40e5d1e53f24d4b5579ce38b8a55c04af701184cd58908ded80a41e9e`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5a3028a6551957fd8d85f610ff3ce10a84e29e90f73aedc4a9600369e19b3c`  
		Last Modified: Fri, 27 Jul 2018 12:46:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c718e3070961cdf5ca640d8d59adf84c99fd26938c8a82569728fcf6c838c6e`  
		Last Modified: Fri, 27 Jul 2018 13:27:20 GMT  
		Size: 15.0 MB (14953318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e337605eb1e84674abbe46426f23d091281c215700aa86eb9e3f1cdebd177f36`  
		Last Modified: Fri, 27 Jul 2018 13:27:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b39eae9ebdc8fc33c257b30906c9a6b70f78dfc4bf61c957674ddf92c7f5536`  
		Last Modified: Fri, 27 Jul 2018 13:27:14 GMT  
		Size: 5.5 KB (5537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfbd67022ce7f390b3d557004888acbd4613988a39965e553a29582e0070527`  
		Last Modified: Fri, 27 Jul 2018 13:27:29 GMT  
		Size: 40.9 MB (40928520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e497513566c093a51b64c46afa54adbaed1850ec62d519a3e3be8c221e1287e2`  
		Last Modified: Fri, 27 Jul 2018 13:27:13 GMT  
		Size: 798.2 KB (798155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4676565d4669a34eb137944849e70d785c03e186a4d53cfcb7c33107cb536c`  
		Last Modified: Fri, 27 Jul 2018 13:33:20 GMT  
		Size: 164.6 MB (164613150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e10ed73f912acdc20d5081ba2455d30be16a975237134d0289189450e899aa`  
		Last Modified: Fri, 27 Jul 2018 13:32:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b1737bd65656558cb5d489a13e58bbb72e20c2765320f256792af0649724f273
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271898922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d2a8924e4a163b123ae7ef85d84cc45f9f87e5e5ca288bb503f951ba1bea44e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:21:40 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:22:22 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:57:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 27 Jul 2018 14:07:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:07:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:07:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:07:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87293a74ddf010a3238f849746fc7d112aeba167e8cc394b556d969d2d3e13`  
		Last Modified: Fri, 27 Jul 2018 15:25:28 GMT  
		Size: 15.0 MB (15047371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a23c2d6bb30a739f4ba9818303fef413f8a700c497fa503c741b4c6307f15b8`  
		Last Modified: Fri, 27 Jul 2018 15:25:10 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164d00f5f5423db6ad2a6e3fbedbbe9b3f75a6c9030a4adea95c92d43522522`  
		Last Modified: Fri, 27 Jul 2018 15:25:07 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859353eb859ac55f49a9bd369b20bfa4fad2aae08c91c6366fbec677e740f973`  
		Last Modified: Fri, 27 Jul 2018 15:25:49 GMT  
		Size: 42.8 MB (42793913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0857f1b283b6402acbb209b1c5dd5d9cab28a7657d71af58c1af9b7cc626ca70`  
		Last Modified: Fri, 27 Jul 2018 15:25:09 GMT  
		Size: 800.1 KB (800055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c66a3b58e1e64581116926ece2604dc9538e529c2762a91516beda9fd9417`  
		Last Modified: Fri, 27 Jul 2018 15:35:50 GMT  
		Size: 173.9 MB (173875139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b0f75ba13edb8c24e64796274be98e47787be56ee892372952b2a6b26be4db`  
		Last Modified: Fri, 27 Jul 2018 15:34:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic`

```console
$ docker pull ros@sha256:f7546d0448a7fdb946a788371bb11db6e23283a88b2ce01bd5b14c7d3452c9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic` - linux; amd64

```console
$ docker pull ros@sha256:7bd2cfade5b27aa590c8057567a606f8937600192517aeab3035b82617e5492c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.9 MB (380929196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:612a7298d521a46e2c4ebd4dea5917aebeee295e392f48936cbf18ce18386e2e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 19:09:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:10:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:18:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 20:18:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 20:20:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 20:20:31 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:20:32 GMT
ENV ROS_DISTRO=melodic
# Wed, 22 Aug 2018 20:25:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:25:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:25:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:25:15 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:27:27 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef9b1e73f98e5c7031e46588cea2c4ff1da53264d2b1a92fc8d0d4683c0a5a2`  
		Last Modified: Wed, 22 Aug 2018 19:47:14 GMT  
		Size: 832.9 KB (832879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09783b527cb1777505b479572ff154d660a370316f0ce05942fef501e5331efb`  
		Last Modified: Wed, 22 Aug 2018 19:47:16 GMT  
		Size: 14.6 MB (14611470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f8cdcb397af0d726dbf30114d44fffd00e05583892baa424b32a7f352482fc`  
		Last Modified: Wed, 22 Aug 2018 21:02:03 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b113d63dfdf9cb50692de9cddf5b88a7b24bc3ca7cc2badf085441f1247a6970`  
		Last Modified: Wed, 22 Aug 2018 21:02:00 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb354d0709f0d92d41d6622c1e392bbc3947dc36eb91d9b3b6d2a5cc97b53b6`  
		Last Modified: Wed, 22 Aug 2018 21:02:23 GMT  
		Size: 49.4 MB (49387209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d0ead53e7291caa658c2b3f1d97380c06047b7d927d7ce4ea45cb9957e2d6b`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 801.4 KB (801395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77aad06784c6048db2c6fb8f51d1d564c36fd2961d6b20227a00f01941f04d9`  
		Last Modified: Wed, 22 Aug 2018 21:03:30 GMT  
		Size: 215.4 MB (215355728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b834927b107ec132734a83f5ff1dc1546570e24fba500f1494c85efea0f9acc`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630e33c2409475960569a925aba7760e23dad35165370f92f21ecb22ab1ee51d`  
		Last Modified: Wed, 22 Aug 2018 21:04:47 GMT  
		Size: 68.2 MB (68173805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm variant v7

```console
$ docker pull ros@sha256:7d6276f8975a253b0a95e3bd22c9160e7adcf1740622d3ab338854410281c44a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.7 MB (334713591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b01b8bcc6ad35a7a26b47dea7fb04d275e1690c3206d2bba92ac8fae5a3dd16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:19:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:19:39 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:19:40 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 13:21:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:21:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:21:20 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:22:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4c89648227081ec4bfab5dba523c1db2348660a617b137e5c6ade577bdbed5`  
		Last Modified: Fri, 27 Jul 2018 13:37:34 GMT  
		Size: 832.9 KB (832876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e6240343d19c3e6ef4412526f96559383a54a118f39348132d9b1d95c4990`  
		Last Modified: Fri, 27 Jul 2018 13:37:37 GMT  
		Size: 13.0 MB (13024507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1ad5d7bda2ca715aec64cf551d221d6f77f172b2f5385d869f44d6e08e6412`  
		Last Modified: Fri, 27 Jul 2018 13:37:33 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f074d61e28133dfd12d1fb7d976ec8ced0dd3f3648e08f0d7e65757fc69dff`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 5.4 KB (5447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870348448753ec48af9281b395dc720d12db14763125c05b2a2025a9f93c4758`  
		Last Modified: Fri, 27 Jul 2018 13:37:43 GMT  
		Size: 45.0 MB (45014747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73afb661f4ade1ececbf21bb5fa8bb964587f4436119d0dbdee96a7f879f6a18`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 800.1 KB (800077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34aefd8bd75ac2d462b2a9bec1566b12e88df3f8644864138d6164e3dff2f129`  
		Last Modified: Fri, 27 Jul 2018 13:38:21 GMT  
		Size: 188.0 MB (187961709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42374ffbbc4b7f6e64324c23b35610f283892694ea1294c01d57c061bb066b4a`  
		Last Modified: Fri, 27 Jul 2018 13:37:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf32452d17d1395451a8df29c2adcf075bd932c3dface643cac455ed27eee9fb`  
		Last Modified: Fri, 27 Jul 2018 13:39:07 GMT  
		Size: 60.0 MB (59982428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3facc4f3f9273ed9d8c29f8be7e4930318866236ae1c3f940f91f98857b215c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.8 MB (357811664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ea97fc0e2af28ab57a9ef91de9d415ffbb399c4c7c531c5d6e1b54778ecd65`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 14:40:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 14:42:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 14:44:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 14:45:49 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 14:46:01 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 14:55:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:55:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:55:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:55:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:58:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7826547d795dba0887aa3960c6af162b49027573e2bdb42bd733f77c82b52a72`  
		Last Modified: Fri, 27 Jul 2018 15:42:15 GMT  
		Size: 832.6 KB (832628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b6bccccd30880c1742f5ac854544c945f7529ac0f7d831df505e467730c72`  
		Last Modified: Fri, 27 Jul 2018 15:42:21 GMT  
		Size: 13.8 MB (13820756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6916c225b8d096dd61f0025089516db203ae3ff6a0bd419f2dc78e27913ebed`  
		Last Modified: Fri, 27 Jul 2018 15:42:12 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c651169f1d2a8008383f1f637bbe15b3d94bab31afc0230257e768e3f9709`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0265426265df43dc414a2f8d15383c4028715a9872e8f9b5f973ea4cd66488`  
		Last Modified: Fri, 27 Jul 2018 15:42:36 GMT  
		Size: 47.6 MB (47608143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3da1b6ebef29ecf90d0c35f87d91e577a36991bb18ac62668e3e47a8d450f54`  
		Last Modified: Fri, 27 Jul 2018 15:42:11 GMT  
		Size: 800.1 KB (800057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98f5b759ffad3c0b75cf56444202ee63378975ed12015bb8ef99ab80ace4298`  
		Last Modified: Fri, 27 Jul 2018 15:43:40 GMT  
		Size: 202.8 MB (202820921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263ced09bea82cd64f1448f0f714207559a34514f08129aaea324ccf7104a576`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ab435a7ba15c977f8ab0a340b5e2cc0f19973429b66a133518515efea130e`  
		Last Modified: Fri, 27 Jul 2018 15:44:47 GMT  
		Size: 63.4 MB (63378029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception`

```console
$ docker pull ros@sha256:433a8930305845a0b96c13d3aece769c2a63880a4b9e3dd86a2e23947ac39220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:63e77bc54ccaad2bde029be51ad44230589dc34f8f5713e265ba7d91d0d9f6e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.6 MB (739592825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc339ad75a1db2e0e310d6c1c4e8de1c8cc156abe63d91bf4b91c9dcda1fcb74`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 19:09:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:10:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:18:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 20:18:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 20:20:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 20:20:31 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:20:32 GMT
ENV ROS_DISTRO=melodic
# Wed, 22 Aug 2018 20:25:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:25:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:25:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:25:15 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:27:27 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:38:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef9b1e73f98e5c7031e46588cea2c4ff1da53264d2b1a92fc8d0d4683c0a5a2`  
		Last Modified: Wed, 22 Aug 2018 19:47:14 GMT  
		Size: 832.9 KB (832879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09783b527cb1777505b479572ff154d660a370316f0ce05942fef501e5331efb`  
		Last Modified: Wed, 22 Aug 2018 19:47:16 GMT  
		Size: 14.6 MB (14611470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f8cdcb397af0d726dbf30114d44fffd00e05583892baa424b32a7f352482fc`  
		Last Modified: Wed, 22 Aug 2018 21:02:03 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b113d63dfdf9cb50692de9cddf5b88a7b24bc3ca7cc2badf085441f1247a6970`  
		Last Modified: Wed, 22 Aug 2018 21:02:00 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb354d0709f0d92d41d6622c1e392bbc3947dc36eb91d9b3b6d2a5cc97b53b6`  
		Last Modified: Wed, 22 Aug 2018 21:02:23 GMT  
		Size: 49.4 MB (49387209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d0ead53e7291caa658c2b3f1d97380c06047b7d927d7ce4ea45cb9957e2d6b`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 801.4 KB (801395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77aad06784c6048db2c6fb8f51d1d564c36fd2961d6b20227a00f01941f04d9`  
		Last Modified: Wed, 22 Aug 2018 21:03:30 GMT  
		Size: 215.4 MB (215355728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b834927b107ec132734a83f5ff1dc1546570e24fba500f1494c85efea0f9acc`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630e33c2409475960569a925aba7760e23dad35165370f92f21ecb22ab1ee51d`  
		Last Modified: Wed, 22 Aug 2018 21:04:47 GMT  
		Size: 68.2 MB (68173805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6295e5dd459f0fd7acdd6ede641cf096ffc3fc0b6cfcd21cc15bca5e086dab`  
		Last Modified: Wed, 22 Aug 2018 21:09:36 GMT  
		Size: 358.7 MB (358663629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:f79fa88981606c92a400d7eaae819ffb0f2062b81d1ae8c56e8a5fd48709b75f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **643.4 MB (643441463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3065b1b3da490ce9afeec7af35ef5635d290aacc55e8bcf3f5642a8e1d4c1c4e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:19:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:19:39 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:19:40 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 13:21:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:21:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:21:20 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:22:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:26:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4c89648227081ec4bfab5dba523c1db2348660a617b137e5c6ade577bdbed5`  
		Last Modified: Fri, 27 Jul 2018 13:37:34 GMT  
		Size: 832.9 KB (832876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e6240343d19c3e6ef4412526f96559383a54a118f39348132d9b1d95c4990`  
		Last Modified: Fri, 27 Jul 2018 13:37:37 GMT  
		Size: 13.0 MB (13024507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1ad5d7bda2ca715aec64cf551d221d6f77f172b2f5385d869f44d6e08e6412`  
		Last Modified: Fri, 27 Jul 2018 13:37:33 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f074d61e28133dfd12d1fb7d976ec8ced0dd3f3648e08f0d7e65757fc69dff`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 5.4 KB (5447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870348448753ec48af9281b395dc720d12db14763125c05b2a2025a9f93c4758`  
		Last Modified: Fri, 27 Jul 2018 13:37:43 GMT  
		Size: 45.0 MB (45014747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73afb661f4ade1ececbf21bb5fa8bb964587f4436119d0dbdee96a7f879f6a18`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 800.1 KB (800077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34aefd8bd75ac2d462b2a9bec1566b12e88df3f8644864138d6164e3dff2f129`  
		Last Modified: Fri, 27 Jul 2018 13:38:21 GMT  
		Size: 188.0 MB (187961709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42374ffbbc4b7f6e64324c23b35610f283892694ea1294c01d57c061bb066b4a`  
		Last Modified: Fri, 27 Jul 2018 13:37:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf32452d17d1395451a8df29c2adcf075bd932c3dface643cac455ed27eee9fb`  
		Last Modified: Fri, 27 Jul 2018 13:39:07 GMT  
		Size: 60.0 MB (59982428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c7735eac1551e28bff3461f0bd93e74edb1b620c95fed0731c65a797cfacbb`  
		Last Modified: Fri, 27 Jul 2018 13:42:29 GMT  
		Size: 308.7 MB (308727872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d0a6844b41acd97a5b3b369a728c5472b424e14719d8d96babe8a34f10a1dbc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.1 MB (699056529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de670c23c741cd35642679f193cc22c18a68a16dd317b3afc7e1afa6ed81b798`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 14:40:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 14:42:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 14:44:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 14:45:49 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 14:46:01 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 14:55:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:55:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:55:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:55:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:58:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 15:23:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7826547d795dba0887aa3960c6af162b49027573e2bdb42bd733f77c82b52a72`  
		Last Modified: Fri, 27 Jul 2018 15:42:15 GMT  
		Size: 832.6 KB (832628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b6bccccd30880c1742f5ac854544c945f7529ac0f7d831df505e467730c72`  
		Last Modified: Fri, 27 Jul 2018 15:42:21 GMT  
		Size: 13.8 MB (13820756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6916c225b8d096dd61f0025089516db203ae3ff6a0bd419f2dc78e27913ebed`  
		Last Modified: Fri, 27 Jul 2018 15:42:12 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c651169f1d2a8008383f1f637bbe15b3d94bab31afc0230257e768e3f9709`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0265426265df43dc414a2f8d15383c4028715a9872e8f9b5f973ea4cd66488`  
		Last Modified: Fri, 27 Jul 2018 15:42:36 GMT  
		Size: 47.6 MB (47608143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3da1b6ebef29ecf90d0c35f87d91e577a36991bb18ac62668e3e47a8d450f54`  
		Last Modified: Fri, 27 Jul 2018 15:42:11 GMT  
		Size: 800.1 KB (800057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98f5b759ffad3c0b75cf56444202ee63378975ed12015bb8ef99ab80ace4298`  
		Last Modified: Fri, 27 Jul 2018 15:43:40 GMT  
		Size: 202.8 MB (202820921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263ced09bea82cd64f1448f0f714207559a34514f08129aaea324ccf7104a576`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ab435a7ba15c977f8ab0a340b5e2cc0f19973429b66a133518515efea130e`  
		Last Modified: Fri, 27 Jul 2018 15:44:47 GMT  
		Size: 63.4 MB (63378029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189e2982e74c1efd330e965a0e6a7fb32bf7303dd0a39acdce7da6ba2c47abbf`  
		Last Modified: Fri, 27 Jul 2018 15:49:07 GMT  
		Size: 341.2 MB (341244865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-bionic`

```console
$ docker pull ros@sha256:433a8930305845a0b96c13d3aece769c2a63880a4b9e3dd86a2e23947ac39220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception-bionic` - linux; amd64

```console
$ docker pull ros@sha256:63e77bc54ccaad2bde029be51ad44230589dc34f8f5713e265ba7d91d0d9f6e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.6 MB (739592825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc339ad75a1db2e0e310d6c1c4e8de1c8cc156abe63d91bf4b91c9dcda1fcb74`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 19:09:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:10:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:18:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 20:18:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 20:20:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 20:20:31 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:20:32 GMT
ENV ROS_DISTRO=melodic
# Wed, 22 Aug 2018 20:25:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:25:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:25:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:25:15 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:27:27 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:38:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef9b1e73f98e5c7031e46588cea2c4ff1da53264d2b1a92fc8d0d4683c0a5a2`  
		Last Modified: Wed, 22 Aug 2018 19:47:14 GMT  
		Size: 832.9 KB (832879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09783b527cb1777505b479572ff154d660a370316f0ce05942fef501e5331efb`  
		Last Modified: Wed, 22 Aug 2018 19:47:16 GMT  
		Size: 14.6 MB (14611470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f8cdcb397af0d726dbf30114d44fffd00e05583892baa424b32a7f352482fc`  
		Last Modified: Wed, 22 Aug 2018 21:02:03 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b113d63dfdf9cb50692de9cddf5b88a7b24bc3ca7cc2badf085441f1247a6970`  
		Last Modified: Wed, 22 Aug 2018 21:02:00 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb354d0709f0d92d41d6622c1e392bbc3947dc36eb91d9b3b6d2a5cc97b53b6`  
		Last Modified: Wed, 22 Aug 2018 21:02:23 GMT  
		Size: 49.4 MB (49387209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d0ead53e7291caa658c2b3f1d97380c06047b7d927d7ce4ea45cb9957e2d6b`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 801.4 KB (801395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77aad06784c6048db2c6fb8f51d1d564c36fd2961d6b20227a00f01941f04d9`  
		Last Modified: Wed, 22 Aug 2018 21:03:30 GMT  
		Size: 215.4 MB (215355728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b834927b107ec132734a83f5ff1dc1546570e24fba500f1494c85efea0f9acc`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630e33c2409475960569a925aba7760e23dad35165370f92f21ecb22ab1ee51d`  
		Last Modified: Wed, 22 Aug 2018 21:04:47 GMT  
		Size: 68.2 MB (68173805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6295e5dd459f0fd7acdd6ede641cf096ffc3fc0b6cfcd21cc15bca5e086dab`  
		Last Modified: Wed, 22 Aug 2018 21:09:36 GMT  
		Size: 358.7 MB (358663629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:f79fa88981606c92a400d7eaae819ffb0f2062b81d1ae8c56e8a5fd48709b75f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **643.4 MB (643441463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3065b1b3da490ce9afeec7af35ef5635d290aacc55e8bcf3f5642a8e1d4c1c4e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:19:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:19:39 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:19:40 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 13:21:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:21:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:21:20 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:22:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:26:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4c89648227081ec4bfab5dba523c1db2348660a617b137e5c6ade577bdbed5`  
		Last Modified: Fri, 27 Jul 2018 13:37:34 GMT  
		Size: 832.9 KB (832876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e6240343d19c3e6ef4412526f96559383a54a118f39348132d9b1d95c4990`  
		Last Modified: Fri, 27 Jul 2018 13:37:37 GMT  
		Size: 13.0 MB (13024507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1ad5d7bda2ca715aec64cf551d221d6f77f172b2f5385d869f44d6e08e6412`  
		Last Modified: Fri, 27 Jul 2018 13:37:33 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f074d61e28133dfd12d1fb7d976ec8ced0dd3f3648e08f0d7e65757fc69dff`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 5.4 KB (5447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870348448753ec48af9281b395dc720d12db14763125c05b2a2025a9f93c4758`  
		Last Modified: Fri, 27 Jul 2018 13:37:43 GMT  
		Size: 45.0 MB (45014747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73afb661f4ade1ececbf21bb5fa8bb964587f4436119d0dbdee96a7f879f6a18`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 800.1 KB (800077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34aefd8bd75ac2d462b2a9bec1566b12e88df3f8644864138d6164e3dff2f129`  
		Last Modified: Fri, 27 Jul 2018 13:38:21 GMT  
		Size: 188.0 MB (187961709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42374ffbbc4b7f6e64324c23b35610f283892694ea1294c01d57c061bb066b4a`  
		Last Modified: Fri, 27 Jul 2018 13:37:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf32452d17d1395451a8df29c2adcf075bd932c3dface643cac455ed27eee9fb`  
		Last Modified: Fri, 27 Jul 2018 13:39:07 GMT  
		Size: 60.0 MB (59982428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c7735eac1551e28bff3461f0bd93e74edb1b620c95fed0731c65a797cfacbb`  
		Last Modified: Fri, 27 Jul 2018 13:42:29 GMT  
		Size: 308.7 MB (308727872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d0a6844b41acd97a5b3b369a728c5472b424e14719d8d96babe8a34f10a1dbc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.1 MB (699056529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de670c23c741cd35642679f193cc22c18a68a16dd317b3afc7e1afa6ed81b798`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 14:40:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 14:42:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 14:44:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 14:45:49 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 14:46:01 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 14:55:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:55:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:55:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:55:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:58:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 15:23:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7826547d795dba0887aa3960c6af162b49027573e2bdb42bd733f77c82b52a72`  
		Last Modified: Fri, 27 Jul 2018 15:42:15 GMT  
		Size: 832.6 KB (832628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b6bccccd30880c1742f5ac854544c945f7529ac0f7d831df505e467730c72`  
		Last Modified: Fri, 27 Jul 2018 15:42:21 GMT  
		Size: 13.8 MB (13820756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6916c225b8d096dd61f0025089516db203ae3ff6a0bd419f2dc78e27913ebed`  
		Last Modified: Fri, 27 Jul 2018 15:42:12 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c651169f1d2a8008383f1f637bbe15b3d94bab31afc0230257e768e3f9709`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0265426265df43dc414a2f8d15383c4028715a9872e8f9b5f973ea4cd66488`  
		Last Modified: Fri, 27 Jul 2018 15:42:36 GMT  
		Size: 47.6 MB (47608143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3da1b6ebef29ecf90d0c35f87d91e577a36991bb18ac62668e3e47a8d450f54`  
		Last Modified: Fri, 27 Jul 2018 15:42:11 GMT  
		Size: 800.1 KB (800057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98f5b759ffad3c0b75cf56444202ee63378975ed12015bb8ef99ab80ace4298`  
		Last Modified: Fri, 27 Jul 2018 15:43:40 GMT  
		Size: 202.8 MB (202820921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263ced09bea82cd64f1448f0f714207559a34514f08129aaea324ccf7104a576`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ab435a7ba15c977f8ab0a340b5e2cc0f19973429b66a133518515efea130e`  
		Last Modified: Fri, 27 Jul 2018 15:44:47 GMT  
		Size: 63.4 MB (63378029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189e2982e74c1efd330e965a0e6a7fb32bf7303dd0a39acdce7da6ba2c47abbf`  
		Last Modified: Fri, 27 Jul 2018 15:49:07 GMT  
		Size: 341.2 MB (341244865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:84721522c51ef7cdba1d9556be9c229b0e65d116876ac71ff4f388751c010e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:f7c52aa46e4c00a35b4cc692714536e754569205e42a5140aa1bfc95c0c75220
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **878.4 MB (878392424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e8e7c7c3430a7efcdcf76b43ab7a22e670a9886fb0b0ba8007aac39d4985b95`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:24:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:24:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 08:24:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 08:25:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:25:02 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:25:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 08:25:19 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 08:56:46 GMT
ENV ROS_DISTRO=melodic
# Tue, 17 Jul 2018 08:58:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:58:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 08:58:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 08:58:58 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:01:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:07:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ebae7fd092a66d0d9a42a5613c6cc852ffe1fbae412317b94c8c74de308d22`  
		Last Modified: Tue, 17 Jul 2018 09:31:16 GMT  
		Size: 21.1 MB (21066196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b432d0f523f751fe8b15956f7939577edab4816852ff2e9193f6117aee5fa3`  
		Last Modified: Tue, 17 Jul 2018 09:31:07 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b75c9599f61f91c9f69702d8e6e251a93b69f987f5e8773920a2af73bba27b`  
		Last Modified: Tue, 17 Jul 2018 09:31:04 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c28f0aa49f17add878a9dbecb0b7f6c00cffaad6b2b46f4e951ec3b59f80403`  
		Last Modified: Tue, 17 Jul 2018 09:31:30 GMT  
		Size: 53.5 MB (53502933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b979d5446117f08301a9111f4c76c1ae9ff4ffd4324c45453e9bb96afa7331f`  
		Last Modified: Tue, 17 Jul 2018 09:31:06 GMT  
		Size: 794.1 KB (794116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c616dfac725e650a4056657a39be6ab7fff5d45d0a4f79856b5d8f781293bb4`  
		Last Modified: Tue, 17 Jul 2018 09:48:44 GMT  
		Size: 268.5 MB (268530397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7224e97c4a448019977efefab0543594c4e7c670be4dc0d6c99b938b5f6bfa4`  
		Last Modified: Tue, 17 Jul 2018 09:47:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa9b8852cc2a58bd620451f10fa9fb90fc9a3ac525c39fdc25ad3d1d2649c9a`  
		Last Modified: Tue, 17 Jul 2018 09:49:46 GMT  
		Size: 108.5 MB (108461625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28740f964e2ffcc2f9ff1c23fa0d986d3760647dda7e484e02c55f82f2584fbc`  
		Last Modified: Tue, 17 Jul 2018 09:53:25 GMT  
		Size: 380.7 MB (380720577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4f72041805288b2617362fe4e13fb8fcf5357b7408c08232e8d309ef60b34062
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.0 MB (796043973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44eaa160a490c7101d5e62d6c18045b154ccf61a48ece4ea46b60ebd8898eeb2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 19:40:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 19:40:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 19:41:51 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:41:58 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:41:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 19:42:55 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 20:28:32 GMT
ENV ROS_DISTRO=melodic
# Tue, 17 Jul 2018 20:37:30 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:37:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 20:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 20:37:47 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 20:40:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:59:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4c44f71d4be482c02fcf1b92b2c2fe291b5521c9e97a14ef18e94373ef6d`  
		Last Modified: Tue, 17 Jul 2018 21:01:22 GMT  
		Size: 19.7 MB (19731106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80d7b09efff2ece5ecbeae72fd76e399a37b14251a4c8329626669ba981e9f9`  
		Last Modified: Tue, 17 Jul 2018 21:00:30 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1094f909edceaf93e034e225b86dda0fe27065b2b0200cf3b4fd332f56521c0`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263b442182e43276514fd2a98a3fdf21541d94c3199925aa906a14eaf1b340b7`  
		Last Modified: Tue, 17 Jul 2018 21:02:18 GMT  
		Size: 51.5 MB (51463775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91cf8896e6ff5974ac156a936c4d9c329b56635e6ff5b349056c5fb6c20772d`  
		Last Modified: Tue, 17 Jul 2018 21:00:29 GMT  
		Size: 794.6 KB (794625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be035a45614b2f7a453954d10779d3eae38fe7552554f5903deeed2bfd51575c`  
		Last Modified: Tue, 17 Jul 2018 21:12:06 GMT  
		Size: 222.7 MB (222683279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0e0d5ed13da7fd7a1a0e08bd921730b092b789950ed5523c396e44e3988784`  
		Last Modified: Tue, 17 Jul 2018 21:10:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9149ccd3c9d4a68a27ed31d094a3bc1ed28e917fec105fd5c3e8852bad57c2`  
		Last Modified: Tue, 17 Jul 2018 21:13:08 GMT  
		Size: 102.9 MB (102933784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464d1d8666638853aa544328d55550c8bb1357939d2cbe20d25117d646daf7ec`  
		Last Modified: Tue, 17 Jul 2018 21:16:28 GMT  
		Size: 355.3 MB (355307290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot`

```console
$ docker pull ros@sha256:a05ac96c4216cf68d7b578d1dfe87ab106ca40966db4bc187ca078f6520b8569
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot` - linux; amd64

```console
$ docker pull ros@sha256:2c1682b667726d08fab990d78cc4288c1b437a2d05080f196097852eb870c08c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.4 MB (418395134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7f1ee4b9c3eadf61662bc938745c519c52e72a8422e73671100446fa13d343`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 00:26:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:26:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:26:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 00:26:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 00:27:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:27:38 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 00:27:39 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 00:27:52 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 00:27:52 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 00:32:31 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:32:32 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 00:32:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 00:32:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 00:35:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:36:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34953669e579024bb7efba737dc44c5fafdc1717b295b6705953f97e9d8a7e78`  
		Last Modified: Fri, 27 Jul 2018 01:03:14 GMT  
		Size: 832.9 KB (832931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae99436d200ca0be6685d57b9b9522411dec5d9100f89b423b6a011eaf17f19`  
		Last Modified: Fri, 27 Jul 2018 01:03:17 GMT  
		Size: 14.6 MB (14611413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca37ca9da132ca3963e56c3c76f858b634116e2fc1a76e207567b35ca4454ff`  
		Last Modified: Fri, 27 Jul 2018 01:03:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ce34662cac576f99fb5a5568a4a04e40f102bbfc9e98e365e048eafa397d6c`  
		Last Modified: Fri, 27 Jul 2018 01:03:06 GMT  
		Size: 5.4 KB (5417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1998a6397218256c0929fe64a19999b84760f68f69ab1cd30b4d057319aec1e`  
		Last Modified: Fri, 27 Jul 2018 01:03:30 GMT  
		Size: 49.4 MB (49388587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac8e5dabb3991d72916093531ec8d8b84e5b727bd7000e2511f1f2b5cd4ef5b`  
		Last Modified: Fri, 27 Jul 2018 01:03:07 GMT  
		Size: 798.2 KB (798183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f11eb6b0b29e8b5f4c63d58cc8a7182afa34bd5462ead7b988187323637b6`  
		Last Modified: Fri, 27 Jul 2018 01:04:47 GMT  
		Size: 215.3 MB (215334471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be064c6b1801346e28aabc5eedbeb486699d526de94e2d51872f6151c4aa10`  
		Last Modified: Fri, 27 Jul 2018 01:03:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eac4a8ae614977911853178ab95b0f897f11dcbd33566b9c279fb1a615702e9`  
		Last Modified: Fri, 27 Jul 2018 01:06:08 GMT  
		Size: 68.2 MB (68172798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dcfe66f90db2ab67b7e86ee2f9e8f14c7d110eaad8c30b8fedfc35479ed3a2`  
		Last Modified: Fri, 27 Jul 2018 01:07:44 GMT  
		Size: 37.6 MB (37588540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:cf0e3dd13d4aec4fc34aff42fd740d733a72f69f687a89997d03a8988ba8c20c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.9 MB (367930824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d6ab30fdfc76d4dd0a24a8a72662d031fa5e6bec19fa516e10cc41c43168fe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:19:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:19:39 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:19:40 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 13:21:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:21:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:21:20 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:22:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:23:32 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4c89648227081ec4bfab5dba523c1db2348660a617b137e5c6ade577bdbed5`  
		Last Modified: Fri, 27 Jul 2018 13:37:34 GMT  
		Size: 832.9 KB (832876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e6240343d19c3e6ef4412526f96559383a54a118f39348132d9b1d95c4990`  
		Last Modified: Fri, 27 Jul 2018 13:37:37 GMT  
		Size: 13.0 MB (13024507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1ad5d7bda2ca715aec64cf551d221d6f77f172b2f5385d869f44d6e08e6412`  
		Last Modified: Fri, 27 Jul 2018 13:37:33 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f074d61e28133dfd12d1fb7d976ec8ced0dd3f3648e08f0d7e65757fc69dff`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 5.4 KB (5447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870348448753ec48af9281b395dc720d12db14763125c05b2a2025a9f93c4758`  
		Last Modified: Fri, 27 Jul 2018 13:37:43 GMT  
		Size: 45.0 MB (45014747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73afb661f4ade1ececbf21bb5fa8bb964587f4436119d0dbdee96a7f879f6a18`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 800.1 KB (800077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34aefd8bd75ac2d462b2a9bec1566b12e88df3f8644864138d6164e3dff2f129`  
		Last Modified: Fri, 27 Jul 2018 13:38:21 GMT  
		Size: 188.0 MB (187961709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42374ffbbc4b7f6e64324c23b35610f283892694ea1294c01d57c061bb066b4a`  
		Last Modified: Fri, 27 Jul 2018 13:37:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf32452d17d1395451a8df29c2adcf075bd932c3dface643cac455ed27eee9fb`  
		Last Modified: Fri, 27 Jul 2018 13:39:07 GMT  
		Size: 60.0 MB (59982428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26047c295a0a8dbb7fb0fddfbcd4601fd37fb7820a53abe26015347f68284237`  
		Last Modified: Fri, 27 Jul 2018 13:40:27 GMT  
		Size: 33.2 MB (33217233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:667149e2509c0906ef38f2a522eb2e887233dfbd9c2c3726eb6a1cc1272b696d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.2 MB (393181149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c8046a49b822c6fc5775076b9792f5929eb994e9a91b1f15e4df28f9da61db`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 14:40:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 14:42:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 14:44:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 14:45:49 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 14:46:01 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 14:55:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:55:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:55:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:55:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:58:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 15:04:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7826547d795dba0887aa3960c6af162b49027573e2bdb42bd733f77c82b52a72`  
		Last Modified: Fri, 27 Jul 2018 15:42:15 GMT  
		Size: 832.6 KB (832628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b6bccccd30880c1742f5ac854544c945f7529ac0f7d831df505e467730c72`  
		Last Modified: Fri, 27 Jul 2018 15:42:21 GMT  
		Size: 13.8 MB (13820756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6916c225b8d096dd61f0025089516db203ae3ff6a0bd419f2dc78e27913ebed`  
		Last Modified: Fri, 27 Jul 2018 15:42:12 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c651169f1d2a8008383f1f637bbe15b3d94bab31afc0230257e768e3f9709`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0265426265df43dc414a2f8d15383c4028715a9872e8f9b5f973ea4cd66488`  
		Last Modified: Fri, 27 Jul 2018 15:42:36 GMT  
		Size: 47.6 MB (47608143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3da1b6ebef29ecf90d0c35f87d91e577a36991bb18ac62668e3e47a8d450f54`  
		Last Modified: Fri, 27 Jul 2018 15:42:11 GMT  
		Size: 800.1 KB (800057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98f5b759ffad3c0b75cf56444202ee63378975ed12015bb8ef99ab80ace4298`  
		Last Modified: Fri, 27 Jul 2018 15:43:40 GMT  
		Size: 202.8 MB (202820921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263ced09bea82cd64f1448f0f714207559a34514f08129aaea324ccf7104a576`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ab435a7ba15c977f8ab0a340b5e2cc0f19973429b66a133518515efea130e`  
		Last Modified: Fri, 27 Jul 2018 15:44:47 GMT  
		Size: 63.4 MB (63378029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50e703852a24501ee9ceb659550aaa64c854d7ac00c0df28f702542381ec884`  
		Last Modified: Fri, 27 Jul 2018 15:46:18 GMT  
		Size: 35.4 MB (35369485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:a05ac96c4216cf68d7b578d1dfe87ab106ca40966db4bc187ca078f6520b8569
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:2c1682b667726d08fab990d78cc4288c1b437a2d05080f196097852eb870c08c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.4 MB (418395134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7f1ee4b9c3eadf61662bc938745c519c52e72a8422e73671100446fa13d343`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 00:26:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:26:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:26:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 00:26:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 00:27:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:27:38 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 00:27:39 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 00:27:52 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 00:27:52 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 00:32:31 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:32:32 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 00:32:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 00:32:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 00:35:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:36:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34953669e579024bb7efba737dc44c5fafdc1717b295b6705953f97e9d8a7e78`  
		Last Modified: Fri, 27 Jul 2018 01:03:14 GMT  
		Size: 832.9 KB (832931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae99436d200ca0be6685d57b9b9522411dec5d9100f89b423b6a011eaf17f19`  
		Last Modified: Fri, 27 Jul 2018 01:03:17 GMT  
		Size: 14.6 MB (14611413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca37ca9da132ca3963e56c3c76f858b634116e2fc1a76e207567b35ca4454ff`  
		Last Modified: Fri, 27 Jul 2018 01:03:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ce34662cac576f99fb5a5568a4a04e40f102bbfc9e98e365e048eafa397d6c`  
		Last Modified: Fri, 27 Jul 2018 01:03:06 GMT  
		Size: 5.4 KB (5417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1998a6397218256c0929fe64a19999b84760f68f69ab1cd30b4d057319aec1e`  
		Last Modified: Fri, 27 Jul 2018 01:03:30 GMT  
		Size: 49.4 MB (49388587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac8e5dabb3991d72916093531ec8d8b84e5b727bd7000e2511f1f2b5cd4ef5b`  
		Last Modified: Fri, 27 Jul 2018 01:03:07 GMT  
		Size: 798.2 KB (798183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f11eb6b0b29e8b5f4c63d58cc8a7182afa34bd5462ead7b988187323637b6`  
		Last Modified: Fri, 27 Jul 2018 01:04:47 GMT  
		Size: 215.3 MB (215334471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65be064c6b1801346e28aabc5eedbeb486699d526de94e2d51872f6151c4aa10`  
		Last Modified: Fri, 27 Jul 2018 01:03:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eac4a8ae614977911853178ab95b0f897f11dcbd33566b9c279fb1a615702e9`  
		Last Modified: Fri, 27 Jul 2018 01:06:08 GMT  
		Size: 68.2 MB (68172798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dcfe66f90db2ab67b7e86ee2f9e8f14c7d110eaad8c30b8fedfc35479ed3a2`  
		Last Modified: Fri, 27 Jul 2018 01:07:44 GMT  
		Size: 37.6 MB (37588540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:cf0e3dd13d4aec4fc34aff42fd740d733a72f69f687a89997d03a8988ba8c20c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.9 MB (367930824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d6ab30fdfc76d4dd0a24a8a72662d031fa5e6bec19fa516e10cc41c43168fe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:19:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:19:39 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:19:40 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 13:21:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:21:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:21:20 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:22:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:23:32 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4c89648227081ec4bfab5dba523c1db2348660a617b137e5c6ade577bdbed5`  
		Last Modified: Fri, 27 Jul 2018 13:37:34 GMT  
		Size: 832.9 KB (832876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e6240343d19c3e6ef4412526f96559383a54a118f39348132d9b1d95c4990`  
		Last Modified: Fri, 27 Jul 2018 13:37:37 GMT  
		Size: 13.0 MB (13024507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1ad5d7bda2ca715aec64cf551d221d6f77f172b2f5385d869f44d6e08e6412`  
		Last Modified: Fri, 27 Jul 2018 13:37:33 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f074d61e28133dfd12d1fb7d976ec8ced0dd3f3648e08f0d7e65757fc69dff`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 5.4 KB (5447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870348448753ec48af9281b395dc720d12db14763125c05b2a2025a9f93c4758`  
		Last Modified: Fri, 27 Jul 2018 13:37:43 GMT  
		Size: 45.0 MB (45014747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73afb661f4ade1ececbf21bb5fa8bb964587f4436119d0dbdee96a7f879f6a18`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 800.1 KB (800077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34aefd8bd75ac2d462b2a9bec1566b12e88df3f8644864138d6164e3dff2f129`  
		Last Modified: Fri, 27 Jul 2018 13:38:21 GMT  
		Size: 188.0 MB (187961709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42374ffbbc4b7f6e64324c23b35610f283892694ea1294c01d57c061bb066b4a`  
		Last Modified: Fri, 27 Jul 2018 13:37:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf32452d17d1395451a8df29c2adcf075bd932c3dface643cac455ed27eee9fb`  
		Last Modified: Fri, 27 Jul 2018 13:39:07 GMT  
		Size: 60.0 MB (59982428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26047c295a0a8dbb7fb0fddfbcd4601fd37fb7820a53abe26015347f68284237`  
		Last Modified: Fri, 27 Jul 2018 13:40:27 GMT  
		Size: 33.2 MB (33217233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:667149e2509c0906ef38f2a522eb2e887233dfbd9c2c3726eb6a1cc1272b696d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.2 MB (393181149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c8046a49b822c6fc5775076b9792f5929eb994e9a91b1f15e4df28f9da61db`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 14:40:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 14:42:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 14:44:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 14:45:49 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 14:46:01 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 14:55:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:55:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:55:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:55:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:58:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 15:04:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7826547d795dba0887aa3960c6af162b49027573e2bdb42bd733f77c82b52a72`  
		Last Modified: Fri, 27 Jul 2018 15:42:15 GMT  
		Size: 832.6 KB (832628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b6bccccd30880c1742f5ac854544c945f7529ac0f7d831df505e467730c72`  
		Last Modified: Fri, 27 Jul 2018 15:42:21 GMT  
		Size: 13.8 MB (13820756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6916c225b8d096dd61f0025089516db203ae3ff6a0bd419f2dc78e27913ebed`  
		Last Modified: Fri, 27 Jul 2018 15:42:12 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c651169f1d2a8008383f1f637bbe15b3d94bab31afc0230257e768e3f9709`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0265426265df43dc414a2f8d15383c4028715a9872e8f9b5f973ea4cd66488`  
		Last Modified: Fri, 27 Jul 2018 15:42:36 GMT  
		Size: 47.6 MB (47608143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3da1b6ebef29ecf90d0c35f87d91e577a36991bb18ac62668e3e47a8d450f54`  
		Last Modified: Fri, 27 Jul 2018 15:42:11 GMT  
		Size: 800.1 KB (800057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98f5b759ffad3c0b75cf56444202ee63378975ed12015bb8ef99ab80ace4298`  
		Last Modified: Fri, 27 Jul 2018 15:43:40 GMT  
		Size: 202.8 MB (202820921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263ced09bea82cd64f1448f0f714207559a34514f08129aaea324ccf7104a576`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ab435a7ba15c977f8ab0a340b5e2cc0f19973429b66a133518515efea130e`  
		Last Modified: Fri, 27 Jul 2018 15:44:47 GMT  
		Size: 63.4 MB (63378029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50e703852a24501ee9ceb659550aaa64c854d7ac00c0df28f702542381ec884`  
		Last Modified: Fri, 27 Jul 2018 15:46:18 GMT  
		Size: 35.4 MB (35369485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-stretch`

```console
$ docker pull ros@sha256:450e5fc994d7b6edb6961d6556c12d810c812fb3a6e4401d71d2c9dc7d7f3a44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:f68927828e8d9a4d82e5fb7f4688663d3e36c0768e2faa2e66e93fe94e92f5cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.0 MB (552979999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f61a36c9e05c955b1eb136e64f26f2ecdc684efc4b302374e5f6b835206dc5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:24:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:24:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 08:24:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 08:25:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:25:02 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:25:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 08:25:19 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 08:56:46 GMT
ENV ROS_DISTRO=melodic
# Tue, 17 Jul 2018 08:58:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:58:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 08:58:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 08:58:58 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:01:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:02:58 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ebae7fd092a66d0d9a42a5613c6cc852ffe1fbae412317b94c8c74de308d22`  
		Last Modified: Tue, 17 Jul 2018 09:31:16 GMT  
		Size: 21.1 MB (21066196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b432d0f523f751fe8b15956f7939577edab4816852ff2e9193f6117aee5fa3`  
		Last Modified: Tue, 17 Jul 2018 09:31:07 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b75c9599f61f91c9f69702d8e6e251a93b69f987f5e8773920a2af73bba27b`  
		Last Modified: Tue, 17 Jul 2018 09:31:04 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c28f0aa49f17add878a9dbecb0b7f6c00cffaad6b2b46f4e951ec3b59f80403`  
		Last Modified: Tue, 17 Jul 2018 09:31:30 GMT  
		Size: 53.5 MB (53502933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b979d5446117f08301a9111f4c76c1ae9ff4ffd4324c45453e9bb96afa7331f`  
		Last Modified: Tue, 17 Jul 2018 09:31:06 GMT  
		Size: 794.1 KB (794116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c616dfac725e650a4056657a39be6ab7fff5d45d0a4f79856b5d8f781293bb4`  
		Last Modified: Tue, 17 Jul 2018 09:48:44 GMT  
		Size: 268.5 MB (268530397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7224e97c4a448019977efefab0543594c4e7c670be4dc0d6c99b938b5f6bfa4`  
		Last Modified: Tue, 17 Jul 2018 09:47:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa9b8852cc2a58bd620451f10fa9fb90fc9a3ac525c39fdc25ad3d1d2649c9a`  
		Last Modified: Tue, 17 Jul 2018 09:49:46 GMT  
		Size: 108.5 MB (108461625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf736dfb916b62460a95eecd8ad6892ae7d1962fc9cbbe881503d0f8502c066`  
		Last Modified: Tue, 17 Jul 2018 09:50:29 GMT  
		Size: 55.3 MB (55308152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:21bf3b10dc520d926181c24b63ce768337fd39f9428e288fa549b7aa39bfb5fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.3 MB (493311361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a80ddc2885be0d92dd4ec5cd36b616c1fc0b54e53895b47ecb008ca0f67d4b6d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 19:40:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 19:40:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 19:41:51 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:41:58 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:41:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 19:42:55 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 20:28:32 GMT
ENV ROS_DISTRO=melodic
# Tue, 17 Jul 2018 20:37:30 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:37:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 20:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 20:37:47 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 20:40:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:45:10 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4c44f71d4be482c02fcf1b92b2c2fe291b5521c9e97a14ef18e94373ef6d`  
		Last Modified: Tue, 17 Jul 2018 21:01:22 GMT  
		Size: 19.7 MB (19731106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80d7b09efff2ece5ecbeae72fd76e399a37b14251a4c8329626669ba981e9f9`  
		Last Modified: Tue, 17 Jul 2018 21:00:30 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1094f909edceaf93e034e225b86dda0fe27065b2b0200cf3b4fd332f56521c0`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263b442182e43276514fd2a98a3fdf21541d94c3199925aa906a14eaf1b340b7`  
		Last Modified: Tue, 17 Jul 2018 21:02:18 GMT  
		Size: 51.5 MB (51463775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91cf8896e6ff5974ac156a936c4d9c329b56635e6ff5b349056c5fb6c20772d`  
		Last Modified: Tue, 17 Jul 2018 21:00:29 GMT  
		Size: 794.6 KB (794625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be035a45614b2f7a453954d10779d3eae38fe7552554f5903deeed2bfd51575c`  
		Last Modified: Tue, 17 Jul 2018 21:12:06 GMT  
		Size: 222.7 MB (222683279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0e0d5ed13da7fd7a1a0e08bd921730b092b789950ed5523c396e44e3988784`  
		Last Modified: Tue, 17 Jul 2018 21:10:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9149ccd3c9d4a68a27ed31d094a3bc1ed28e917fec105fd5c3e8852bad57c2`  
		Last Modified: Tue, 17 Jul 2018 21:13:08 GMT  
		Size: 102.9 MB (102933784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee5487b80fa803c21f15ef8c10e0b94bee7cdd8a8baad9336157caff4dff08d`  
		Last Modified: Tue, 17 Jul 2018 21:13:47 GMT  
		Size: 52.6 MB (52574678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base`

```console
$ docker pull ros@sha256:f7546d0448a7fdb946a788371bb11db6e23283a88b2ce01bd5b14c7d3452c9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:7bd2cfade5b27aa590c8057567a606f8937600192517aeab3035b82617e5492c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.9 MB (380929196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:612a7298d521a46e2c4ebd4dea5917aebeee295e392f48936cbf18ce18386e2e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 19:09:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:10:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:18:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 20:18:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 20:20:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 20:20:31 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:20:32 GMT
ENV ROS_DISTRO=melodic
# Wed, 22 Aug 2018 20:25:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:25:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:25:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:25:15 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:27:27 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef9b1e73f98e5c7031e46588cea2c4ff1da53264d2b1a92fc8d0d4683c0a5a2`  
		Last Modified: Wed, 22 Aug 2018 19:47:14 GMT  
		Size: 832.9 KB (832879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09783b527cb1777505b479572ff154d660a370316f0ce05942fef501e5331efb`  
		Last Modified: Wed, 22 Aug 2018 19:47:16 GMT  
		Size: 14.6 MB (14611470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f8cdcb397af0d726dbf30114d44fffd00e05583892baa424b32a7f352482fc`  
		Last Modified: Wed, 22 Aug 2018 21:02:03 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b113d63dfdf9cb50692de9cddf5b88a7b24bc3ca7cc2badf085441f1247a6970`  
		Last Modified: Wed, 22 Aug 2018 21:02:00 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb354d0709f0d92d41d6622c1e392bbc3947dc36eb91d9b3b6d2a5cc97b53b6`  
		Last Modified: Wed, 22 Aug 2018 21:02:23 GMT  
		Size: 49.4 MB (49387209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d0ead53e7291caa658c2b3f1d97380c06047b7d927d7ce4ea45cb9957e2d6b`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 801.4 KB (801395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77aad06784c6048db2c6fb8f51d1d564c36fd2961d6b20227a00f01941f04d9`  
		Last Modified: Wed, 22 Aug 2018 21:03:30 GMT  
		Size: 215.4 MB (215355728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b834927b107ec132734a83f5ff1dc1546570e24fba500f1494c85efea0f9acc`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630e33c2409475960569a925aba7760e23dad35165370f92f21ecb22ab1ee51d`  
		Last Modified: Wed, 22 Aug 2018 21:04:47 GMT  
		Size: 68.2 MB (68173805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:7d6276f8975a253b0a95e3bd22c9160e7adcf1740622d3ab338854410281c44a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.7 MB (334713591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b01b8bcc6ad35a7a26b47dea7fb04d275e1690c3206d2bba92ac8fae5a3dd16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:19:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:19:39 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:19:40 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 13:21:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:21:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:21:20 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:22:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4c89648227081ec4bfab5dba523c1db2348660a617b137e5c6ade577bdbed5`  
		Last Modified: Fri, 27 Jul 2018 13:37:34 GMT  
		Size: 832.9 KB (832876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e6240343d19c3e6ef4412526f96559383a54a118f39348132d9b1d95c4990`  
		Last Modified: Fri, 27 Jul 2018 13:37:37 GMT  
		Size: 13.0 MB (13024507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1ad5d7bda2ca715aec64cf551d221d6f77f172b2f5385d869f44d6e08e6412`  
		Last Modified: Fri, 27 Jul 2018 13:37:33 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f074d61e28133dfd12d1fb7d976ec8ced0dd3f3648e08f0d7e65757fc69dff`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 5.4 KB (5447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870348448753ec48af9281b395dc720d12db14763125c05b2a2025a9f93c4758`  
		Last Modified: Fri, 27 Jul 2018 13:37:43 GMT  
		Size: 45.0 MB (45014747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73afb661f4ade1ececbf21bb5fa8bb964587f4436119d0dbdee96a7f879f6a18`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 800.1 KB (800077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34aefd8bd75ac2d462b2a9bec1566b12e88df3f8644864138d6164e3dff2f129`  
		Last Modified: Fri, 27 Jul 2018 13:38:21 GMT  
		Size: 188.0 MB (187961709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42374ffbbc4b7f6e64324c23b35610f283892694ea1294c01d57c061bb066b4a`  
		Last Modified: Fri, 27 Jul 2018 13:37:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf32452d17d1395451a8df29c2adcf075bd932c3dface643cac455ed27eee9fb`  
		Last Modified: Fri, 27 Jul 2018 13:39:07 GMT  
		Size: 60.0 MB (59982428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3facc4f3f9273ed9d8c29f8be7e4930318866236ae1c3f940f91f98857b215c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.8 MB (357811664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ea97fc0e2af28ab57a9ef91de9d415ffbb399c4c7c531c5d6e1b54778ecd65`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 14:40:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 14:42:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 14:44:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 14:45:49 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 14:46:01 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 14:55:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:55:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:55:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:55:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:58:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7826547d795dba0887aa3960c6af162b49027573e2bdb42bd733f77c82b52a72`  
		Last Modified: Fri, 27 Jul 2018 15:42:15 GMT  
		Size: 832.6 KB (832628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b6bccccd30880c1742f5ac854544c945f7529ac0f7d831df505e467730c72`  
		Last Modified: Fri, 27 Jul 2018 15:42:21 GMT  
		Size: 13.8 MB (13820756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6916c225b8d096dd61f0025089516db203ae3ff6a0bd419f2dc78e27913ebed`  
		Last Modified: Fri, 27 Jul 2018 15:42:12 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c651169f1d2a8008383f1f637bbe15b3d94bab31afc0230257e768e3f9709`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0265426265df43dc414a2f8d15383c4028715a9872e8f9b5f973ea4cd66488`  
		Last Modified: Fri, 27 Jul 2018 15:42:36 GMT  
		Size: 47.6 MB (47608143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3da1b6ebef29ecf90d0c35f87d91e577a36991bb18ac62668e3e47a8d450f54`  
		Last Modified: Fri, 27 Jul 2018 15:42:11 GMT  
		Size: 800.1 KB (800057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98f5b759ffad3c0b75cf56444202ee63378975ed12015bb8ef99ab80ace4298`  
		Last Modified: Fri, 27 Jul 2018 15:43:40 GMT  
		Size: 202.8 MB (202820921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263ced09bea82cd64f1448f0f714207559a34514f08129aaea324ccf7104a576`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ab435a7ba15c977f8ab0a340b5e2cc0f19973429b66a133518515efea130e`  
		Last Modified: Fri, 27 Jul 2018 15:44:47 GMT  
		Size: 63.4 MB (63378029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:f7546d0448a7fdb946a788371bb11db6e23283a88b2ce01bd5b14c7d3452c9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:7bd2cfade5b27aa590c8057567a606f8937600192517aeab3035b82617e5492c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.9 MB (380929196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:612a7298d521a46e2c4ebd4dea5917aebeee295e392f48936cbf18ce18386e2e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 19:09:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:10:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:18:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 20:18:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 20:20:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 20:20:31 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:20:32 GMT
ENV ROS_DISTRO=melodic
# Wed, 22 Aug 2018 20:25:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:25:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:25:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:25:15 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 20:27:27 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef9b1e73f98e5c7031e46588cea2c4ff1da53264d2b1a92fc8d0d4683c0a5a2`  
		Last Modified: Wed, 22 Aug 2018 19:47:14 GMT  
		Size: 832.9 KB (832879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09783b527cb1777505b479572ff154d660a370316f0ce05942fef501e5331efb`  
		Last Modified: Wed, 22 Aug 2018 19:47:16 GMT  
		Size: 14.6 MB (14611470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f8cdcb397af0d726dbf30114d44fffd00e05583892baa424b32a7f352482fc`  
		Last Modified: Wed, 22 Aug 2018 21:02:03 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b113d63dfdf9cb50692de9cddf5b88a7b24bc3ca7cc2badf085441f1247a6970`  
		Last Modified: Wed, 22 Aug 2018 21:02:00 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb354d0709f0d92d41d6622c1e392bbc3947dc36eb91d9b3b6d2a5cc97b53b6`  
		Last Modified: Wed, 22 Aug 2018 21:02:23 GMT  
		Size: 49.4 MB (49387209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d0ead53e7291caa658c2b3f1d97380c06047b7d927d7ce4ea45cb9957e2d6b`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 801.4 KB (801395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77aad06784c6048db2c6fb8f51d1d564c36fd2961d6b20227a00f01941f04d9`  
		Last Modified: Wed, 22 Aug 2018 21:03:30 GMT  
		Size: 215.4 MB (215355728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b834927b107ec132734a83f5ff1dc1546570e24fba500f1494c85efea0f9acc`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630e33c2409475960569a925aba7760e23dad35165370f92f21ecb22ab1ee51d`  
		Last Modified: Wed, 22 Aug 2018 21:04:47 GMT  
		Size: 68.2 MB (68173805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:7d6276f8975a253b0a95e3bd22c9160e7adcf1740622d3ab338854410281c44a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.7 MB (334713591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b01b8bcc6ad35a7a26b47dea7fb04d275e1690c3206d2bba92ac8fae5a3dd16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:19:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:19:39 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:19:40 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 13:21:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:21:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:21:20 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 13:22:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4c89648227081ec4bfab5dba523c1db2348660a617b137e5c6ade577bdbed5`  
		Last Modified: Fri, 27 Jul 2018 13:37:34 GMT  
		Size: 832.9 KB (832876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e6240343d19c3e6ef4412526f96559383a54a118f39348132d9b1d95c4990`  
		Last Modified: Fri, 27 Jul 2018 13:37:37 GMT  
		Size: 13.0 MB (13024507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1ad5d7bda2ca715aec64cf551d221d6f77f172b2f5385d869f44d6e08e6412`  
		Last Modified: Fri, 27 Jul 2018 13:37:33 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f074d61e28133dfd12d1fb7d976ec8ced0dd3f3648e08f0d7e65757fc69dff`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 5.4 KB (5447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870348448753ec48af9281b395dc720d12db14763125c05b2a2025a9f93c4758`  
		Last Modified: Fri, 27 Jul 2018 13:37:43 GMT  
		Size: 45.0 MB (45014747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73afb661f4ade1ececbf21bb5fa8bb964587f4436119d0dbdee96a7f879f6a18`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 800.1 KB (800077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34aefd8bd75ac2d462b2a9bec1566b12e88df3f8644864138d6164e3dff2f129`  
		Last Modified: Fri, 27 Jul 2018 13:38:21 GMT  
		Size: 188.0 MB (187961709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42374ffbbc4b7f6e64324c23b35610f283892694ea1294c01d57c061bb066b4a`  
		Last Modified: Fri, 27 Jul 2018 13:37:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf32452d17d1395451a8df29c2adcf075bd932c3dface643cac455ed27eee9fb`  
		Last Modified: Fri, 27 Jul 2018 13:39:07 GMT  
		Size: 60.0 MB (59982428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3facc4f3f9273ed9d8c29f8be7e4930318866236ae1c3f940f91f98857b215c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.8 MB (357811664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ea97fc0e2af28ab57a9ef91de9d415ffbb399c4c7c531c5d6e1b54778ecd65`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 14:40:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 14:42:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 14:44:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 14:45:49 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 14:46:01 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 14:55:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:55:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:55:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:55:32 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 14:58:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7826547d795dba0887aa3960c6af162b49027573e2bdb42bd733f77c82b52a72`  
		Last Modified: Fri, 27 Jul 2018 15:42:15 GMT  
		Size: 832.6 KB (832628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b6bccccd30880c1742f5ac854544c945f7529ac0f7d831df505e467730c72`  
		Last Modified: Fri, 27 Jul 2018 15:42:21 GMT  
		Size: 13.8 MB (13820756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6916c225b8d096dd61f0025089516db203ae3ff6a0bd419f2dc78e27913ebed`  
		Last Modified: Fri, 27 Jul 2018 15:42:12 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c651169f1d2a8008383f1f637bbe15b3d94bab31afc0230257e768e3f9709`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0265426265df43dc414a2f8d15383c4028715a9872e8f9b5f973ea4cd66488`  
		Last Modified: Fri, 27 Jul 2018 15:42:36 GMT  
		Size: 47.6 MB (47608143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3da1b6ebef29ecf90d0c35f87d91e577a36991bb18ac62668e3e47a8d450f54`  
		Last Modified: Fri, 27 Jul 2018 15:42:11 GMT  
		Size: 800.1 KB (800057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98f5b759ffad3c0b75cf56444202ee63378975ed12015bb8ef99ab80ace4298`  
		Last Modified: Fri, 27 Jul 2018 15:43:40 GMT  
		Size: 202.8 MB (202820921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263ced09bea82cd64f1448f0f714207559a34514f08129aaea324ccf7104a576`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007ab435a7ba15c977f8ab0a340b5e2cc0f19973429b66a133518515efea130e`  
		Last Modified: Fri, 27 Jul 2018 15:44:47 GMT  
		Size: 63.4 MB (63378029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-stretch`

```console
$ docker pull ros@sha256:6e47105eb6527be08c93e274999fee0af33f38ad8ac30d2284ea14c69f2f9b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:98acea766cdc4cbbb2216393d009f39d142237c8c4a190037d44855e62fde654
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.7 MB (497671847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714303bd160ecbb9010fa2c81662f6906fe9b02fb7a1515b025a63c30a79d433`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:24:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:24:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 08:24:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 08:25:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:25:02 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:25:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 08:25:19 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 08:56:46 GMT
ENV ROS_DISTRO=melodic
# Tue, 17 Jul 2018 08:58:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:58:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 08:58:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 08:58:58 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:01:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ebae7fd092a66d0d9a42a5613c6cc852ffe1fbae412317b94c8c74de308d22`  
		Last Modified: Tue, 17 Jul 2018 09:31:16 GMT  
		Size: 21.1 MB (21066196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b432d0f523f751fe8b15956f7939577edab4816852ff2e9193f6117aee5fa3`  
		Last Modified: Tue, 17 Jul 2018 09:31:07 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b75c9599f61f91c9f69702d8e6e251a93b69f987f5e8773920a2af73bba27b`  
		Last Modified: Tue, 17 Jul 2018 09:31:04 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c28f0aa49f17add878a9dbecb0b7f6c00cffaad6b2b46f4e951ec3b59f80403`  
		Last Modified: Tue, 17 Jul 2018 09:31:30 GMT  
		Size: 53.5 MB (53502933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b979d5446117f08301a9111f4c76c1ae9ff4ffd4324c45453e9bb96afa7331f`  
		Last Modified: Tue, 17 Jul 2018 09:31:06 GMT  
		Size: 794.1 KB (794116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c616dfac725e650a4056657a39be6ab7fff5d45d0a4f79856b5d8f781293bb4`  
		Last Modified: Tue, 17 Jul 2018 09:48:44 GMT  
		Size: 268.5 MB (268530397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7224e97c4a448019977efefab0543594c4e7c670be4dc0d6c99b938b5f6bfa4`  
		Last Modified: Tue, 17 Jul 2018 09:47:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa9b8852cc2a58bd620451f10fa9fb90fc9a3ac525c39fdc25ad3d1d2649c9a`  
		Last Modified: Tue, 17 Jul 2018 09:49:46 GMT  
		Size: 108.5 MB (108461625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3b11ff26e9fe7dc51b750f3c0d2b26958bc9a9e3ffb55a5a8391061327a84d0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.7 MB (440736683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98dcdadda517405da089e4936e42285ce6018aa3bc029ed8fdeda25804fcdec5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 19:40:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 19:40:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 19:41:51 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:41:58 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:41:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 19:42:55 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 20:28:32 GMT
ENV ROS_DISTRO=melodic
# Tue, 17 Jul 2018 20:37:30 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:37:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 20:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 20:37:47 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 20:40:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4c44f71d4be482c02fcf1b92b2c2fe291b5521c9e97a14ef18e94373ef6d`  
		Last Modified: Tue, 17 Jul 2018 21:01:22 GMT  
		Size: 19.7 MB (19731106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80d7b09efff2ece5ecbeae72fd76e399a37b14251a4c8329626669ba981e9f9`  
		Last Modified: Tue, 17 Jul 2018 21:00:30 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1094f909edceaf93e034e225b86dda0fe27065b2b0200cf3b4fd332f56521c0`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263b442182e43276514fd2a98a3fdf21541d94c3199925aa906a14eaf1b340b7`  
		Last Modified: Tue, 17 Jul 2018 21:02:18 GMT  
		Size: 51.5 MB (51463775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91cf8896e6ff5974ac156a936c4d9c329b56635e6ff5b349056c5fb6c20772d`  
		Last Modified: Tue, 17 Jul 2018 21:00:29 GMT  
		Size: 794.6 KB (794625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be035a45614b2f7a453954d10779d3eae38fe7552554f5903deeed2bfd51575c`  
		Last Modified: Tue, 17 Jul 2018 21:12:06 GMT  
		Size: 222.7 MB (222683279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0e0d5ed13da7fd7a1a0e08bd921730b092b789950ed5523c396e44e3988784`  
		Last Modified: Tue, 17 Jul 2018 21:10:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9149ccd3c9d4a68a27ed31d094a3bc1ed28e917fec105fd5c3e8852bad57c2`  
		Last Modified: Tue, 17 Jul 2018 21:13:08 GMT  
		Size: 102.9 MB (102933784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core`

```console
$ docker pull ros@sha256:c916797cdcb4f88a0530cadfd0dea6de00e81dc5737f613d752d89388f296355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:da27b3abb9d442d179e7355a0c7adf4123c96fbc5a447c4248f4adc3fb674f1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.8 MB (312755391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b833036d138693069df32ba125cc25467abfecb507ca731122428f57103d92e1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 19:09:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:10:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:18:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 20:18:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 20:20:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 20:20:31 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:20:32 GMT
ENV ROS_DISTRO=melodic
# Wed, 22 Aug 2018 20:25:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:25:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:25:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:25:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef9b1e73f98e5c7031e46588cea2c4ff1da53264d2b1a92fc8d0d4683c0a5a2`  
		Last Modified: Wed, 22 Aug 2018 19:47:14 GMT  
		Size: 832.9 KB (832879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09783b527cb1777505b479572ff154d660a370316f0ce05942fef501e5331efb`  
		Last Modified: Wed, 22 Aug 2018 19:47:16 GMT  
		Size: 14.6 MB (14611470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f8cdcb397af0d726dbf30114d44fffd00e05583892baa424b32a7f352482fc`  
		Last Modified: Wed, 22 Aug 2018 21:02:03 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b113d63dfdf9cb50692de9cddf5b88a7b24bc3ca7cc2badf085441f1247a6970`  
		Last Modified: Wed, 22 Aug 2018 21:02:00 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb354d0709f0d92d41d6622c1e392bbc3947dc36eb91d9b3b6d2a5cc97b53b6`  
		Last Modified: Wed, 22 Aug 2018 21:02:23 GMT  
		Size: 49.4 MB (49387209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d0ead53e7291caa658c2b3f1d97380c06047b7d927d7ce4ea45cb9957e2d6b`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 801.4 KB (801395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77aad06784c6048db2c6fb8f51d1d564c36fd2961d6b20227a00f01941f04d9`  
		Last Modified: Wed, 22 Aug 2018 21:03:30 GMT  
		Size: 215.4 MB (215355728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b834927b107ec132734a83f5ff1dc1546570e24fba500f1494c85efea0f9acc`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:f6def7c7aba56ec93ce5b3bd583f22a3d459615dd4f71c018ded3c50f17ef6d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274731163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2415e33a36a392c4b3e44179cfa343b60b036fb092e3848db2df6c1b7b597b26`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:19:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:19:39 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:19:40 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 13:21:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:21:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:21:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4c89648227081ec4bfab5dba523c1db2348660a617b137e5c6ade577bdbed5`  
		Last Modified: Fri, 27 Jul 2018 13:37:34 GMT  
		Size: 832.9 KB (832876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e6240343d19c3e6ef4412526f96559383a54a118f39348132d9b1d95c4990`  
		Last Modified: Fri, 27 Jul 2018 13:37:37 GMT  
		Size: 13.0 MB (13024507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1ad5d7bda2ca715aec64cf551d221d6f77f172b2f5385d869f44d6e08e6412`  
		Last Modified: Fri, 27 Jul 2018 13:37:33 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f074d61e28133dfd12d1fb7d976ec8ced0dd3f3648e08f0d7e65757fc69dff`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 5.4 KB (5447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870348448753ec48af9281b395dc720d12db14763125c05b2a2025a9f93c4758`  
		Last Modified: Fri, 27 Jul 2018 13:37:43 GMT  
		Size: 45.0 MB (45014747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73afb661f4ade1ececbf21bb5fa8bb964587f4436119d0dbdee96a7f879f6a18`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 800.1 KB (800077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34aefd8bd75ac2d462b2a9bec1566b12e88df3f8644864138d6164e3dff2f129`  
		Last Modified: Fri, 27 Jul 2018 13:38:21 GMT  
		Size: 188.0 MB (187961709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42374ffbbc4b7f6e64324c23b35610f283892694ea1294c01d57c061bb066b4a`  
		Last Modified: Fri, 27 Jul 2018 13:37:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e2c629ca1e201bc392ab1edf51af14d6190e19814303cf93092a620fb6458604
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.4 MB (294433635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6e2f3ce2529fd009f244c79bb0a440d2a2edb9a9410a8b76e8be762a3d85aa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 14:40:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 14:42:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 14:44:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 14:45:49 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 14:46:01 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 14:55:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:55:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:55:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:55:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7826547d795dba0887aa3960c6af162b49027573e2bdb42bd733f77c82b52a72`  
		Last Modified: Fri, 27 Jul 2018 15:42:15 GMT  
		Size: 832.6 KB (832628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b6bccccd30880c1742f5ac854544c945f7529ac0f7d831df505e467730c72`  
		Last Modified: Fri, 27 Jul 2018 15:42:21 GMT  
		Size: 13.8 MB (13820756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6916c225b8d096dd61f0025089516db203ae3ff6a0bd419f2dc78e27913ebed`  
		Last Modified: Fri, 27 Jul 2018 15:42:12 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c651169f1d2a8008383f1f637bbe15b3d94bab31afc0230257e768e3f9709`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0265426265df43dc414a2f8d15383c4028715a9872e8f9b5f973ea4cd66488`  
		Last Modified: Fri, 27 Jul 2018 15:42:36 GMT  
		Size: 47.6 MB (47608143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3da1b6ebef29ecf90d0c35f87d91e577a36991bb18ac62668e3e47a8d450f54`  
		Last Modified: Fri, 27 Jul 2018 15:42:11 GMT  
		Size: 800.1 KB (800057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98f5b759ffad3c0b75cf56444202ee63378975ed12015bb8ef99ab80ace4298`  
		Last Modified: Fri, 27 Jul 2018 15:43:40 GMT  
		Size: 202.8 MB (202820921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263ced09bea82cd64f1448f0f714207559a34514f08129aaea324ccf7104a576`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:c916797cdcb4f88a0530cadfd0dea6de00e81dc5737f613d752d89388f296355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:da27b3abb9d442d179e7355a0c7adf4123c96fbc5a447c4248f4adc3fb674f1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.8 MB (312755391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b833036d138693069df32ba125cc25467abfecb507ca731122428f57103d92e1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 19:09:36 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:10:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:18:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 20:18:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 20:20:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 20:20:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 20:20:31 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 20:20:32 GMT
ENV ROS_DISTRO=melodic
# Wed, 22 Aug 2018 20:25:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 20:25:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 20:25:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 20:25:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef9b1e73f98e5c7031e46588cea2c4ff1da53264d2b1a92fc8d0d4683c0a5a2`  
		Last Modified: Wed, 22 Aug 2018 19:47:14 GMT  
		Size: 832.9 KB (832879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09783b527cb1777505b479572ff154d660a370316f0ce05942fef501e5331efb`  
		Last Modified: Wed, 22 Aug 2018 19:47:16 GMT  
		Size: 14.6 MB (14611470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f8cdcb397af0d726dbf30114d44fffd00e05583892baa424b32a7f352482fc`  
		Last Modified: Wed, 22 Aug 2018 21:02:03 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b113d63dfdf9cb50692de9cddf5b88a7b24bc3ca7cc2badf085441f1247a6970`  
		Last Modified: Wed, 22 Aug 2018 21:02:00 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb354d0709f0d92d41d6622c1e392bbc3947dc36eb91d9b3b6d2a5cc97b53b6`  
		Last Modified: Wed, 22 Aug 2018 21:02:23 GMT  
		Size: 49.4 MB (49387209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d0ead53e7291caa658c2b3f1d97380c06047b7d927d7ce4ea45cb9957e2d6b`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 801.4 KB (801395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77aad06784c6048db2c6fb8f51d1d564c36fd2961d6b20227a00f01941f04d9`  
		Last Modified: Wed, 22 Aug 2018 21:03:30 GMT  
		Size: 215.4 MB (215355728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b834927b107ec132734a83f5ff1dc1546570e24fba500f1494c85efea0f9acc`  
		Last Modified: Wed, 22 Aug 2018 21:02:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:f6def7c7aba56ec93ce5b3bd583f22a3d459615dd4f71c018ded3c50f17ef6d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274731163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2415e33a36a392c4b3e44179cfa343b60b036fb092e3848db2df6c1b7b597b26`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:42:36 GMT
ADD file:47f7e3f1a2e59db306e3a56e780d3f8ba5fd3d932b794b75c7498e841f28a2a2 in / 
# Fri, 27 Jul 2018 12:42:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:42:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:42:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:42:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:42:46 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 13:18:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:18:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 13:18:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 13:19:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 13:19:16 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 13:19:39 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 13:19:40 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 13:21:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 13:21:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 13:21:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 13:21:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4471275a8ba0e3fdf4738cff2fc5894401657de21516e93f545073f400d5f8ad`  
		Last Modified: Fri, 27 Jul 2018 12:44:58 GMT  
		Size: 27.1 MB (27087873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237e132a11f8263c1488f3e7c927f5270ab3190e8019493894b8be0b90e2894`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130e9bf920a8414b61ce20da108ad36cb1464d951e7ad7e6fc9e22543e66d0fe`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec82554e9e76401898045ce08ffa65adba92889a38fd1ed0e0aa1138c86aad8`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014902bb4456149ea7f8848c1e2af2562f399e6150abf1ae8f965a9696fe6f5c`  
		Last Modified: Fri, 27 Jul 2018 12:44:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4c89648227081ec4bfab5dba523c1db2348660a617b137e5c6ade577bdbed5`  
		Last Modified: Fri, 27 Jul 2018 13:37:34 GMT  
		Size: 832.9 KB (832876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e6240343d19c3e6ef4412526f96559383a54a118f39348132d9b1d95c4990`  
		Last Modified: Fri, 27 Jul 2018 13:37:37 GMT  
		Size: 13.0 MB (13024507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1ad5d7bda2ca715aec64cf551d221d6f77f172b2f5385d869f44d6e08e6412`  
		Last Modified: Fri, 27 Jul 2018 13:37:33 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f074d61e28133dfd12d1fb7d976ec8ced0dd3f3648e08f0d7e65757fc69dff`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 5.4 KB (5447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870348448753ec48af9281b395dc720d12db14763125c05b2a2025a9f93c4758`  
		Last Modified: Fri, 27 Jul 2018 13:37:43 GMT  
		Size: 45.0 MB (45014747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73afb661f4ade1ececbf21bb5fa8bb964587f4436119d0dbdee96a7f879f6a18`  
		Last Modified: Fri, 27 Jul 2018 13:37:31 GMT  
		Size: 800.1 KB (800077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34aefd8bd75ac2d462b2a9bec1566b12e88df3f8644864138d6164e3dff2f129`  
		Last Modified: Fri, 27 Jul 2018 13:38:21 GMT  
		Size: 188.0 MB (187961709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42374ffbbc4b7f6e64324c23b35610f283892694ea1294c01d57c061bb066b4a`  
		Last Modified: Fri, 27 Jul 2018 13:37:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e2c629ca1e201bc392ab1edf51af14d6190e19814303cf93092a620fb6458604
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.4 MB (294433635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6e2f3ce2529fd009f244c79bb0a440d2a2edb9a9410a8b76e8be762a3d85aa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:10 GMT
ADD file:357c9357857d5a92f29880fc8ca791773848b7b88fef7134a7720cb2331b12f7 in / 
# Fri, 27 Jul 2018 12:09:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:09:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:09:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:09:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:09:18 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 14:40:35 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 14:42:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 14:44:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 14:45:09 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 14:45:49 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 14:46:01 GMT
ENV ROS_DISTRO=melodic
# Fri, 27 Jul 2018 14:55:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 14:55:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 14:55:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 14:55:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2b60dc99953c9841f53eb3da368719b4b170ed5630d29a18061f8ae06d665a10`  
		Last Modified: Fri, 27 Jul 2018 12:12:10 GMT  
		Size: 28.5 MB (28541790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc279db4d54bcdc39ea181a2f68d8d3ede18fdc923632d061b2a88e66ffd8c0`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e84340d84f7fb6fc187176d6fc1c9d00351dc7829382824792ecaafe8597e80`  
		Last Modified: Fri, 27 Jul 2018 12:12:01 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb10d180ec0590b9379ca983c39fb16d8b306f71a82d1343a751351dea3c743`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade289cb481422f326b3de72e76582225e7c565add08d4068a7494bb36cff33`  
		Last Modified: Fri, 27 Jul 2018 12:12:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7826547d795dba0887aa3960c6af162b49027573e2bdb42bd733f77c82b52a72`  
		Last Modified: Fri, 27 Jul 2018 15:42:15 GMT  
		Size: 832.6 KB (832628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b6bccccd30880c1742f5ac854544c945f7529ac0f7d831df505e467730c72`  
		Last Modified: Fri, 27 Jul 2018 15:42:21 GMT  
		Size: 13.8 MB (13820756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6916c225b8d096dd61f0025089516db203ae3ff6a0bd419f2dc78e27913ebed`  
		Last Modified: Fri, 27 Jul 2018 15:42:12 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4c651169f1d2a8008383f1f637bbe15b3d94bab31afc0230257e768e3f9709`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0265426265df43dc414a2f8d15383c4028715a9872e8f9b5f973ea4cd66488`  
		Last Modified: Fri, 27 Jul 2018 15:42:36 GMT  
		Size: 47.6 MB (47608143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3da1b6ebef29ecf90d0c35f87d91e577a36991bb18ac62668e3e47a8d450f54`  
		Last Modified: Fri, 27 Jul 2018 15:42:11 GMT  
		Size: 800.1 KB (800057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98f5b759ffad3c0b75cf56444202ee63378975ed12015bb8ef99ab80ace4298`  
		Last Modified: Fri, 27 Jul 2018 15:43:40 GMT  
		Size: 202.8 MB (202820921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263ced09bea82cd64f1448f0f714207559a34514f08129aaea324ccf7104a576`  
		Last Modified: Fri, 27 Jul 2018 15:42:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:1fc20fb4a25050ffb7662fb2c1f516818c9eb27dbb998194e9bee4c448dc64c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:14126ea54f718bf02e2ea33dd35d5c10e8c0bb3d32a0ba649cca4f667b9e498d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.2 MB (389210222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eedd0dce941d6c58bcc432e0ba145c55d529d1a21dbbe8c34a68b738f1dd5b86`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:24:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:24:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 08:24:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 08:25:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:25:02 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:25:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 08:25:19 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 08:56:46 GMT
ENV ROS_DISTRO=melodic
# Tue, 17 Jul 2018 08:58:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:58:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 08:58:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 08:58:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ebae7fd092a66d0d9a42a5613c6cc852ffe1fbae412317b94c8c74de308d22`  
		Last Modified: Tue, 17 Jul 2018 09:31:16 GMT  
		Size: 21.1 MB (21066196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b432d0f523f751fe8b15956f7939577edab4816852ff2e9193f6117aee5fa3`  
		Last Modified: Tue, 17 Jul 2018 09:31:07 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b75c9599f61f91c9f69702d8e6e251a93b69f987f5e8773920a2af73bba27b`  
		Last Modified: Tue, 17 Jul 2018 09:31:04 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c28f0aa49f17add878a9dbecb0b7f6c00cffaad6b2b46f4e951ec3b59f80403`  
		Last Modified: Tue, 17 Jul 2018 09:31:30 GMT  
		Size: 53.5 MB (53502933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b979d5446117f08301a9111f4c76c1ae9ff4ffd4324c45453e9bb96afa7331f`  
		Last Modified: Tue, 17 Jul 2018 09:31:06 GMT  
		Size: 794.1 KB (794116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c616dfac725e650a4056657a39be6ab7fff5d45d0a4f79856b5d8f781293bb4`  
		Last Modified: Tue, 17 Jul 2018 09:48:44 GMT  
		Size: 268.5 MB (268530397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7224e97c4a448019977efefab0543594c4e7c670be4dc0d6c99b938b5f6bfa4`  
		Last Modified: Tue, 17 Jul 2018 09:47:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:865d108b2f9b14a6e96daf17b4386b0097d441b074fc7d5558b90765d0de19d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.8 MB (337802899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db8028d1c9b5931866ac8e841ab4e72dc14c8b7e33a9d808ac41556989802866`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 19:40:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 19:40:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 19:41:51 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:41:58 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:41:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 19:42:55 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 20:28:32 GMT
ENV ROS_DISTRO=melodic
# Tue, 17 Jul 2018 20:37:30 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:37:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 20:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 20:37:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4c44f71d4be482c02fcf1b92b2c2fe291b5521c9e97a14ef18e94373ef6d`  
		Last Modified: Tue, 17 Jul 2018 21:01:22 GMT  
		Size: 19.7 MB (19731106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80d7b09efff2ece5ecbeae72fd76e399a37b14251a4c8329626669ba981e9f9`  
		Last Modified: Tue, 17 Jul 2018 21:00:30 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1094f909edceaf93e034e225b86dda0fe27065b2b0200cf3b4fd332f56521c0`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263b442182e43276514fd2a98a3fdf21541d94c3199925aa906a14eaf1b340b7`  
		Last Modified: Tue, 17 Jul 2018 21:02:18 GMT  
		Size: 51.5 MB (51463775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91cf8896e6ff5974ac156a936c4d9c329b56635e6ff5b349056c5fb6c20772d`  
		Last Modified: Tue, 17 Jul 2018 21:00:29 GMT  
		Size: 794.6 KB (794625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be035a45614b2f7a453954d10779d3eae38fe7552554f5903deeed2bfd51575c`  
		Last Modified: Tue, 17 Jul 2018 21:12:06 GMT  
		Size: 222.7 MB (222683279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0e0d5ed13da7fd7a1a0e08bd921730b092b789950ed5523c396e44e3988784`  
		Last Modified: Tue, 17 Jul 2018 21:10:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
