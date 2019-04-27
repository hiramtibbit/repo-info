## `ros:bouncy-ros-core-bionic`

```console
$ docker pull ros@sha256:9cbd085801de378e75c9b1dbed15832246d833125db90ed2bd7206fde46a83f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:97ecec6138d8d8266428c24de70141e3528abd4d1123a2ad3dd46b81007e5a5f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 MB (276257563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64fe4e169c0eceab8e8186f82b6b5738e1268ee4f8325ce73c6d1bf5e7c6dd84`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:02 GMT
ADD file:7ce84f13f11609a50ece7823578159412e2299c812746d1d1f1ed5db0728bd37 in / 
# Fri, 26 Apr 2019 22:21:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:05 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:42:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 00:05:18 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 00:05:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:46 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 00:05:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 00:06:00 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 00:06:02 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 00:06:02 GMT
ENV ROS_DISTRO=bouncy
# Sat, 27 Apr 2019 00:06:35 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:06:35 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 00:06:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 00:06:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f476d66f540886e2bb4d9c8cc8c0f8915bca7d387e536957796ea6c2f8e7dfff`  
		Last Modified: Thu, 25 Apr 2019 00:24:51 GMT  
		Size: 37.2 MB (37206102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8882c27f669ef315fc231f272965cd5ee8507c0f376855d6f9c012aae0224797`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9af21273955749bb8250c7a883fcce21647b54f5a685d237bc6b920a2ebad1a`  
		Last Modified: Fri, 26 Apr 2019 22:22:42 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5029279ec1223b70f2cbb2682ab360e1837a2ea59a8d7ff64b38e9eab5fb8c0`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f529587767531e9fc1cf637575758c9cf031dbd6fe57f9fd9c9dafb16d9e75`  
		Last Modified: Fri, 26 Apr 2019 23:57:04 GMT  
		Size: 836.5 KB (836503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e70dacbf2ba36343df93eed133595cd102c684878e4cbac6861a8582386fb4`  
		Last Modified: Sat, 27 Apr 2019 00:22:21 GMT  
		Size: 151.6 MB (151593713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c9ed7a9fdeffa672d01376e07bc01eea298f6fda4d242f266b6bb12e60b510`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df28bbdcf45ed3276662d1ffe28c47a226a0ee715c11eb10f73d76acd0245388`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abc8a27ac8f341fa3d0a489831e8865c54950b0befae8e83ec95e8ddcab6ba`  
		Last Modified: Sat, 27 Apr 2019 00:22:03 GMT  
		Size: 38.2 MB (38226824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1f82d8b3a152555044d7bbae9420c0dfe727b5e9e1f8a7646d387c276c9577`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 642.2 KB (642172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1303ff45e2731bb28cf5aa4f9dfacb4fc8fcfecd8caa11ff3632582ed97e3c3`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 95.6 KB (95600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b552fd23def93efa07e36ba485ee91f7628008d72633efb21e0ae8b0e010756f`  
		Last Modified: Sat, 27 Apr 2019 00:22:11 GMT  
		Size: 47.6 MB (47648075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c776999bacb7ecd949ff8b95b29282f607527d848e05a1674f5738bb09cc1e7`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8bfb6bd94c6ba307c68b8f0075e8d0bd289898d89610a36fdfec87a71e873041
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (201982235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d0608255e7bdfbbdc7617547341b6892f421c3c73b04e7119e00ccd9087b39`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 12:06:00 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 14 Mar 2019 12:11:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:11:18 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 12:11:22 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 12:12:04 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 12:12:13 GMT
RUN pip3 install -U     argcomplete
# Thu, 14 Mar 2019 12:12:14 GMT
ENV ROS_DISTRO=bouncy
# Thu, 14 Mar 2019 12:16:21 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:16:22 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 14 Mar 2019 12:16:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 12:16:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dd450468d352da69aabfee82aa7f4e468f4a3e3d8a5945cde26e703e12f61`  
		Last Modified: Thu, 14 Mar 2019 13:08:00 GMT  
		Size: 97.0 MB (96999235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0dc190d6a006b988dd33193dcd88a42f5146b59918b120c42074e77861a4d`  
		Last Modified: Thu, 14 Mar 2019 13:04:14 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd815c39ddfa6a8512dc2fd46c1ad12b40bfd4ce7b88440c9ad5305a96e213e`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0183d115fd31b7fe78a12c6a5c9a8b8134d2032b0735eb8365348774d0b897`  
		Last Modified: Thu, 14 Mar 2019 13:06:43 GMT  
		Size: 36.6 MB (36607128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd69526a458ecc7d78a0eab721640743392360c3a2a2a74ffaa43d6f87a62b7`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 614.0 KB (614044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d4468f4c4319bb0b6c37fc9a30d54cf6082d8a6f35eae1f9707c3f4d4d6ef`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 93.9 KB (93851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1dd5ef3ae9dd71d22a0bf3aedc101f1f479be80575baa683a868a3ea62c30b`  
		Last Modified: Thu, 14 Mar 2019 13:07:59 GMT  
		Size: 37.6 MB (37646804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b68fdd90ca2a1743fe8590230a4157c4936128171a9fe8d5f2a59c1efa32fa`  
		Last Modified: Thu, 14 Mar 2019 13:04:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
