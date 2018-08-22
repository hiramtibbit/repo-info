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
