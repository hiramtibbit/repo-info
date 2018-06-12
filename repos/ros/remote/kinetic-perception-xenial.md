## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:1c1c130ccd73953f0092e2f24fac54bf3884f8ff2a2ff7209ba95d41fd0f8d03
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
$ docker pull ros@sha256:fce67a539344ae44f34fdf7eeb6aea7d3d8d8f4ef7214b2f7968098813a12d12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **615.0 MB (615025296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c4ed90f447f8b7ebdafe1555a08fee061cc06a13462ac17033fe58bbdc97b0b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 12:19:23 GMT
ADD file:ebb70be07ed2417685cf8fcc903c02e4ea1b2cd43b2079972f51387fd5d682a8 in / 
# Wed, 06 Jun 2018 12:19:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 12:19:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:19:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 12:19:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 12:19:56 GMT
CMD ["/bin/bash"]
# Tue, 12 Jun 2018 12:43:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:43:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 12:43:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 12:47:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:47:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 12:47:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 12:47:41 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 12:47:41 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Jun 2018 12:55:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:55:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 12:55:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 12:55:13 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 12:59:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 13:17:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:def78db8dd6eeda307f0912ed21381f873a350dc5e83fc9da97f2149a5408587`  
		Last Modified: Wed, 06 Jun 2018 12:25:38 GMT  
		Size: 38.2 MB (38193200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ae3b359f19b988b0fd94d8fd642bea7f9059fa41b71f1971de6ce894fdccf2`  
		Last Modified: Wed, 06 Jun 2018 12:25:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eaeb5577ed9a8fdbb407ac0c59910c8bf0a9130f7557666c3d1079c069a06a`  
		Last Modified: Wed, 06 Jun 2018 12:25:28 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05712d47a0127c57d51f06b72e586c61a54928b7f8d84d32591a42795dc89437`  
		Last Modified: Wed, 06 Jun 2018 12:25:28 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e8f88b7af950fde58a7f447e4de0272d0c59d2e7db951c507afb5ee025b96a`  
		Last Modified: Wed, 06 Jun 2018 12:25:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f58f8a821fadd33acd07d4fae676ffe25178652774e3f5394a9189d6542dea`  
		Last Modified: Tue, 12 Jun 2018 14:34:30 GMT  
		Size: 15.0 MB (14951635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb755ef6d5373edc4625f9225306b8b263f039756d1a0c592987ed8711257aa3`  
		Last Modified: Tue, 12 Jun 2018 14:34:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d596a59dda552327990c2d6d243c38ff58809183d95b9684239017c3d175654`  
		Last Modified: Tue, 12 Jun 2018 14:34:23 GMT  
		Size: 5.5 KB (5536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00b69698218eabf535d59046e766c58a3bfbf8ef8296464c765fe4a491465f8`  
		Last Modified: Tue, 12 Jun 2018 14:34:38 GMT  
		Size: 40.9 MB (40921006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25cb91e2e7d1d287f30ea9db6d2d8f06ba134773267d6a2a2ecd9fc659fa5567`  
		Last Modified: Tue, 12 Jun 2018 14:34:23 GMT  
		Size: 868.5 KB (868469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75950af648083780cd797fc9bb908211bec5b3c2262ef4feaebde3e6c905489`  
		Last Modified: Tue, 12 Jun 2018 14:35:13 GMT  
		Size: 164.6 MB (164621562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fa8e706156ff2a658aa3d457d79a63a825b7a43327b824248445ebaa75cae2`  
		Last Modified: Tue, 12 Jun 2018 14:34:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bed7fc010f42105bcbed4de771c03aa91ec07856f902b9413bcc962508b16c`  
		Last Modified: Tue, 12 Jun 2018 14:35:46 GMT  
		Size: 75.1 MB (75091753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bd723b61cd0c922c26df689f9043f574a75b7171a10acfb6021ab0cc74f450`  
		Last Modified: Tue, 12 Jun 2018 14:38:10 GMT  
		Size: 280.4 MB (280356376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:df702d0184eadb784ac72aa237d17d546230c3629554799eb6d3550d7a7230f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.3 MB (639282087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90dd69c004946ab340dba6e2ddcf25e8d61afce6771aa8d96e31ff6bf11a170`
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
# Tue, 12 Jun 2018 10:23:22 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 10:23:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 10:23:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 10:25:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 10:25:20 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 10:25:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 10:26:08 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 10:26:08 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Jun 2018 10:36:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 10:36:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 10:36:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 10:36:36 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 10:43:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 11:08:10 GMT
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
	-	`sha256:7ef6c3a1ce4b806d76c97f5acd7cb14529276e65e78ffef0b1ce7d4677958e0c`  
		Last Modified: Tue, 12 Jun 2018 14:24:33 GMT  
		Size: 15.0 MB (15049711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2cdaea1a17879ddec1e51e2ee558f2e27e3fd57e9996a50ae2c7466c989d17`  
		Last Modified: Tue, 12 Jun 2018 14:23:50 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7391648ac961acdf01f234d655554dceeadcdc012d6b4169f9ee70d222c56ed0`  
		Last Modified: Tue, 12 Jun 2018 14:23:47 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f598396215e6f003a8359535d98b378844586ee21df2324980cfe59aa5dd210`  
		Last Modified: Tue, 12 Jun 2018 14:25:14 GMT  
		Size: 42.8 MB (42793872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453c6b1fa24efff7cf6752050e9fb329904e591aa7acc67ef4634d0c8addb32a`  
		Last Modified: Tue, 12 Jun 2018 14:23:50 GMT  
		Size: 868.3 KB (868294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c89fc2eafe64407e77ab2e9c8be115dd9469334e45b81b3682ca4d666d1c8d`  
		Last Modified: Tue, 12 Jun 2018 14:26:13 GMT  
		Size: 173.9 MB (173883743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe7f41f052afc09932f3c4472e021eedecb3ff77fae724c891a3fcee63480cc`  
		Last Modified: Tue, 12 Jun 2018 14:23:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e6053bdab933a638f3d2a260b178e5b8d34b3928c950ee2f9b945d1e1e5792`  
		Last Modified: Tue, 12 Jun 2018 14:27:02 GMT  
		Size: 76.5 MB (76545437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ded8231aef9c5d29b126ff01b38c6ed342afbc8a03df83f257d55537704642b`  
		Last Modified: Tue, 12 Jun 2018 14:30:25 GMT  
		Size: 290.8 MB (290836458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
