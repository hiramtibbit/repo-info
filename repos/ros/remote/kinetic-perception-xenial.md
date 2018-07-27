## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:3454c4d75dc761c79a697724359df947e9e56891f1376aa6ac43e13e906a47c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:b9391a9e0d03b92d8bed369c5789f45c2967cd314f2f5e537eeefadbdcc1c4fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.2 MB (725177815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed7b1282bd18cf9e46206fd1e22025a4c6acca13c8e45883ec2bece8a84ada0d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:27:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:05:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jul 2018 00:05:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jul 2018 00:06:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:06:49 GMT
ENV LANG=C.UTF-8
# Fri, 27 Jul 2018 00:06:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Jul 2018 00:07:05 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jul 2018 00:07:06 GMT
ENV ROS_DISTRO=kinetic
# Fri, 27 Jul 2018 00:09:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:09:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jul 2018 00:09:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jul 2018 00:09:03 GMT
CMD ["bash"]
# Fri, 27 Jul 2018 00:11:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:17:44 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0fa41ef5cf23faf2ea213be7efcb39f53ef4d5d761f7ec787da6187d132ed3`  
		Last Modified: Thu, 26 Jul 2018 23:43:41 GMT  
		Size: 16.7 MB (16658669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b8c4351e3e571c91bbc56e9fe946cfaf6a78e0ade08d1e6374aa9d17dac2f2`  
		Last Modified: Fri, 27 Jul 2018 00:46:55 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c6a2e4d5c3b476c85ed0f0f83e2a3d65d65493765d0f1b28e03f6074457f63`  
		Last Modified: Fri, 27 Jul 2018 00:46:53 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b4ba027d2e0fa51f536b8d08976de276713bde35b53a6ba51ae61865f93683`  
		Last Modified: Fri, 27 Jul 2018 00:47:14 GMT  
		Size: 44.9 MB (44861476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a627d6fa250261400338160e8913dc9473dbeb1a6fcd1edadf279237fb2b058e`  
		Last Modified: Fri, 27 Jul 2018 00:46:53 GMT  
		Size: 798.2 KB (798183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689534c8dc91204f38f97b340fab63c0c99ab980068bb74128535b6aad455b49`  
		Last Modified: Fri, 27 Jul 2018 00:48:11 GMT  
		Size: 193.3 MB (193271433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc765b427bcd91646bff78f81b76a87f677668af3bd6dcdc6a43a757e812971c`  
		Last Modified: Fri, 27 Jul 2018 00:46:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2254c1043644f257801a36254b969279653dcd5dbef59a1e0e45f870f954cbcd`  
		Last Modified: Fri, 27 Jul 2018 00:49:26 GMT  
		Size: 85.7 MB (85684924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd1800eff90515fed9e6fed35275072ee2fbd96709bb4636771bbdc193ed193`  
		Last Modified: Fri, 27 Jul 2018 00:53:28 GMT  
		Size: 340.7 MB (340653217 bytes)  
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
