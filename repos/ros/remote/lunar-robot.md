## `ros:lunar-robot`

```console
$ docker pull ros@sha256:13e70ac89252f89a75d2c65069b09b9bbe2e6158286f2702b0f43aada595ca48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:12a996bd54cca4e437e48536b798e0341ee1c528cd2b351a579086fd406a9493
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.1 MB (486111682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6607b6a78dceebf146462176fd4fd4b7873bf8f659431162dffea6d378d5b7ee`
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
# Tue, 05 Jun 2018 22:35:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:35:18 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Jun 2018 22:35:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Jun 2018 22:36:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:36:25 GMT
ENV LANG=C.UTF-8
# Tue, 05 Jun 2018 22:36:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Jun 2018 22:36:43 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Jun 2018 23:04:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Jun 2018 23:08:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:08:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 05 Jun 2018 23:08:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Jun 2018 23:08:27 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:11:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:15:20 GMT
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
	-	`sha256:3d22c30eae0b9363cecd2e5ac27a92dd1bc354e2e16a3ee82b70932814b4c12a`  
		Last Modified: Wed, 06 Jun 2018 00:11:32 GMT  
		Size: 5.4 MB (5362202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fce58d2960dc3a1265e5bc18474d652795940cafde67d662929605c9e3b1c44`  
		Last Modified: Wed, 06 Jun 2018 00:11:29 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a8410e99e70f8971b54ce991fecd04014ef363a7dde349dd255d6358a6893d`  
		Last Modified: Wed, 06 Jun 2018 00:11:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3037b7978826369126bbe26cbb5d642f59ccd31d96e28044f872cd3eac55ab`  
		Last Modified: Wed, 06 Jun 2018 00:11:55 GMT  
		Size: 55.6 MB (55571338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cfa8aa4c1f7b161f88b862221bacc540052abfa4f8a11884d0090ebcd55cf9`  
		Last Modified: Wed, 06 Jun 2018 00:11:27 GMT  
		Size: 866.4 KB (866393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170ce1e7cb1fdb2828bd6d23958f58b3be2174117f4f6e52d753d4c1422755d`  
		Last Modified: Wed, 06 Jun 2018 00:23:44 GMT  
		Size: 193.6 MB (193641819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0eb07e8e7dea220978bd30a26bf318649bf3cef13901c943bee38ed05afbede`  
		Last Modified: Wed, 06 Jun 2018 00:22:27 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dec063ced0219e39083dbd6fe65cc6f033c293b408910fcd3495c0928558874`  
		Last Modified: Wed, 06 Jun 2018 00:24:38 GMT  
		Size: 83.8 MB (83831267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def70421bfdf37ee50ad7851f60eae56410e538c2027792947f27885552f0c46`  
		Last Modified: Wed, 06 Jun 2018 00:25:40 GMT  
		Size: 103.7 MB (103700195 bytes)  
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
