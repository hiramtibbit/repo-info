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
