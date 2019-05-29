## `ros:bouncy`

```console
$ docker pull ros@sha256:013977b2864166cd60fe5677fab0b6867e9c3fcd4d7bbf3c039bb0ac47fa3a15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy` - linux; amd64

```console
$ docker pull ros@sha256:08bae900134db7a782e689a32361f7355fa523e96cd0bf8fc47a66790572c90a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259861266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34b9b9e50023657e1c206699df7ffaa303ec805440e5f6bad2cebb640191273`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 23:16:17 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 28 May 2019 22:24:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:24:29 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:24:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 28 May 2019 22:24:42 GMT
ENV ROS_DISTRO=bouncy
# Tue, 28 May 2019 22:25:34 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:25:34 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 28 May 2019 22:25:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:25:35 GMT
CMD ["bash"]
# Tue, 28 May 2019 22:25:47 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f2894adc5f0177e8844abc824f40489e6b56d8e5c4bd5a006db087c971ca5c`  
		Last Modified: Wed, 15 May 2019 23:37:24 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa47ed690ffcb760ccaf4a95126564390c35231d660766791c6be6003de091a`  
		Last Modified: Wed, 15 May 2019 23:37:24 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153be32900a03d8ef1aaedca9fde30db57c5844e4ca3906233b1476b7e76bf28`  
		Last Modified: Tue, 28 May 2019 22:27:19 GMT  
		Size: 27.9 MB (27945741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1bc18b1ceb79848a5c6ca1b09d196e27ace0775dbab7876b4ddde01931b6cd`  
		Last Modified: Tue, 28 May 2019 22:27:13 GMT  
		Size: 458.1 KB (458112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482e1d95e8bcdb95a7e8c31468dec485a084692331d0dd5c3a47b47225633191`  
		Last Modified: Tue, 28 May 2019 22:27:13 GMT  
		Size: 89.5 KB (89480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754445c69506377e1e7e0885e74dcc79e11f4926e4eeb26fa141e63a7a7e88e5`  
		Last Modified: Tue, 28 May 2019 22:27:25 GMT  
		Size: 46.9 MB (46913608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dbb1cb5657ac4dc0fcaf666b25b82112c3918ac6d4411f5765b71d4c17c5fb`  
		Last Modified: Tue, 28 May 2019 22:27:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5244ed0afd395034f9a1babee3ce4a62e1a8c7a433b7225785887eaae3017a73`  
		Last Modified: Tue, 28 May 2019 22:27:37 GMT  
		Size: 3.1 MB (3133904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:89053e5539cf807a5cec6500583a06ad9347368b5cdcce3b1669bb8443c41992
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209076178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711f8a5e86ce3d7dfb24bf699e25ae938f2776707575f6d83d5f41576aaba886`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:35:52 GMT
ADD file:f046142405da23f452b26e01729a6fdc5a92b0fa85ec8456a1fee249160217bb in / 
# Sat, 27 Apr 2019 09:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:35:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:35:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:00 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 11:56:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:45:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:46:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 12:48:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:48:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:48:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:48:51 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:48:57 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 12:48:57 GMT
ENV ROS_DISTRO=bouncy
# Sat, 27 Apr 2019 12:52:18 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:52:19 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 12:52:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:52:20 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:53:08 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bf7c45c81bd70f13db7f1612a4596418f2c15b48384d2c1d5597b7534e60b3f3`  
		Last Modified: Sat, 27 Apr 2019 09:39:34 GMT  
		Size: 33.3 MB (33343401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396f07cded369e173bde57fa17c337db371930ea1b2e925d3c04cb407794d5c`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ceb566582d63624b9d3a22ead5cbf0836b8c5bca41b4b7bb777c9c11923ede`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb3982847b2f6cb9353dc95b2dbd7092a92764a1946b9901adf59d886849542`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98e34995b036f53b3392426068fa765f0ed8274f534b5f7b7a538492948ab96`  
		Last Modified: Sat, 27 Apr 2019 13:33:55 GMT  
		Size: 836.9 KB (836912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24beb877e7f125b673c3da04ebae33742613e6ba4f4f9a28888ff50a68191c7`  
		Last Modified: Sat, 27 Apr 2019 13:47:21 GMT  
		Size: 97.0 MB (97004583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cc569ea2a8767f531240f9628854294d21c74f793bb3543d47c0cfb2f9e472`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2727a8c257a22843c6a22621fe54a5bc890e0d85cad34a479bafff06498ce39`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 5.4 KB (5427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6685ba84aafa2375f4ea87f26c8a0f9755659cec71ebd22f2413d34bb6941da2`  
		Last Modified: Sat, 27 Apr 2019 13:46:58 GMT  
		Size: 36.6 MB (36605543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc2ef025dd51e5f960723988766b265bede025f8a50e95d4d3c16248f551273`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 642.3 KB (642260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b96a42e39ced5725eca49dfcf06ad6925c4609ac5e1a6a933e236d5fb28f25d`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 95.6 KB (95607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2a051cfd1ba5ee694cb33a10ec9ed04b40c702f83d16a00c7500b5cf9e8e6c`  
		Last Modified: Sat, 27 Apr 2019 13:46:59 GMT  
		Size: 37.6 MB (37646669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75ff5d4960b9a8f864473852282e0dc277a6c6e090d252d7b7936b573884be3`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd357b36ca17607f4676a39cfbc52aca16cd02c0686e06507ce85371cc165c9c`  
		Last Modified: Sat, 27 Apr 2019 13:47:32 GMT  
		Size: 2.9 MB (2892642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
