## `ros:melodic-robot`

```console
$ docker pull ros@sha256:a2073ecbdd8844fa3b5ef82133844399098d2c1f4272246dd7ccf7c175a5dea6
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
$ docker pull ros@sha256:f6039eb36d9c40642819b64c38b545bbdeada3ad75c3e0dc80a77b6cfdd5cfb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.1 MB (393113108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40eb713f8bc239c3b1be421788a4dd687de0a062f54d1ad290ee4803f040064d`
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
# Tue, 12 Jun 2018 12:25:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:25:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 12:25:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 12:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:30:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 12:30:06 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 12:30:44 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 12:30:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 12:56:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:56:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 12:56:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 12:56:21 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 13:04:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 13:11:17 GMT
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
	-	`sha256:0b40a7cf8c92f732a98ed0c91a8f376ac5d026966bb62ae8a3cc31950149a865`  
		Last Modified: Tue, 12 Jun 2018 14:42:25 GMT  
		Size: 14.0 MB (14025602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64161ea3457828bf106e2a41ea1bdec4fa57b0d91be42273e1ff8dffd8df257e`  
		Last Modified: Tue, 12 Jun 2018 14:42:15 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d133e469e364e410d95018672de36eb9eeb81c3fe907432b2990ebe279c415e`  
		Last Modified: Tue, 12 Jun 2018 14:42:14 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388e22ee416c388786a3b452453ecba80d4276f795882240d8bb27e353e670`  
		Last Modified: Tue, 12 Jun 2018 14:42:39 GMT  
		Size: 47.6 MB (47598703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356cfd429774875db9a2a54f6c8cb0febf375f1bb762af541aeeff987d1ebf36`  
		Last Modified: Tue, 12 Jun 2018 14:42:14 GMT  
		Size: 868.4 KB (868392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f364401d16f83e21dbe354babf5043963ede9bb2c4fc08f8937eeac914894bb2`  
		Last Modified: Tue, 12 Jun 2018 14:43:39 GMT  
		Size: 202.8 MB (202839689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6d6fdd8ae904e2c320dbe80b81324367e33ec71255263006d6912b4053b6d4`  
		Last Modified: Tue, 12 Jun 2018 14:42:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809f12ace9ed052a72b917f094ff97b30325959a05d469faf8fc1d8c12e72d7`  
		Last Modified: Tue, 12 Jun 2018 14:44:24 GMT  
		Size: 63.4 MB (63383073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735626fa3d218399415639f5986257674fd00e135fa33ddc661a74841f074e8f`  
		Last Modified: Tue, 12 Jun 2018 14:45:15 GMT  
		Size: 35.4 MB (35373513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
