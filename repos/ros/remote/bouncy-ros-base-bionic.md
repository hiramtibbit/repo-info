## `ros:bouncy-ros-base-bionic`

```console
$ docker pull ros@sha256:fe03bbaffd4f00e37cfc6d4f692cbc57d96fe4f535289f94026f12f06628c4be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:50a0884283ff95b04e2272965ae1b302f8c0c5e73ffa9dc653bf48b2e48f3300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274610808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cb952de3c0ad1243436060d4a89db7269692ad93e58b9ce87cb4703a84c1f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:24:41 GMT
ENV ROS_DISTRO=bouncy
# Tue, 12 Mar 2019 01:25:32 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:25:33 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:25:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:25:33 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:25:55 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2145329786b7f67d5b6d395fb5fef8f6385a32d1c09eb20f09f5ded6e5301f7`  
		Last Modified: Tue, 12 Mar 2019 01:39:50 GMT  
		Size: 47.6 MB (47647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c853455a7d51b13ff45a9ac30d125204c4c6e75dbafe8e6befb6d098075856`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ee6805609a058fceae7f700bf9564371d0fb0f2397f1b04fdc9e74d3cdf78a`  
		Last Modified: Tue, 12 Mar 2019 01:40:15 GMT  
		Size: 3.1 MB (3134424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5e4ec1903dc8172c250bde87f56437b8d04962f78e63ed551c2663b7abe37fc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204875585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417af7530fc25f6b4167dc197bc91059d936d738841f2ee08eefd6878631473d`
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
# Thu, 14 Mar 2019 12:17:10 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:9d560fcb3446d38869f7fc967169f2ca028a255105e1b60bd9827cb333ca038d`  
		Last Modified: Thu, 14 Mar 2019 13:08:24 GMT  
		Size: 2.9 MB (2893350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
