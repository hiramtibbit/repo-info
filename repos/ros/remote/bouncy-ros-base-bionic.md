## `ros:bouncy-ros-base-bionic`

```console
$ docker pull ros@sha256:02380bfd315ddbfd1c107fb36f1411f40894ff608bbde8d0c81c38e76342e95d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base-bionic` - linux; amd64

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

### `ros:bouncy-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bc321c6258278d6d9f0c0022f853f1b68da949163cd8f61176265284034f9625
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190732326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43f167e15a44efe8314a086fbedc6625e8cb9c601725cc0a65eb55f5b35ac8a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:39:31 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 28 May 2019 23:40:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:40:29 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:40:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:40:50 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:40:54 GMT
RUN pip3 install -U     argcomplete
# Tue, 28 May 2019 23:40:55 GMT
ENV ROS_DISTRO=bouncy
# Tue, 28 May 2019 23:41:48 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:41:49 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 28 May 2019 23:41:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:41:50 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:42:24 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36cec5adbe4ea83db769b3849960a51f8939e4995099fb5e5b88bdb8804ca0d`  
		Last Modified: Wed, 29 May 2019 00:05:51 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897cf40aa9b994dc69aaacb6213a310bb5031accd5aa50c6e52cafab6b05a98a`  
		Last Modified: Wed, 29 May 2019 00:05:51 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3660c7399f2ce71b6e14dfd0d5ab273cc43e56e1e92d3f1150844c0125e5e1b6`  
		Last Modified: Wed, 29 May 2019 00:05:58 GMT  
		Size: 26.6 MB (26644913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0edd166d2ecf055b35e1e0d5066f3e25a689969c952927fa7497d68ad037f7`  
		Last Modified: Wed, 29 May 2019 00:05:50 GMT  
		Size: 458.3 KB (458340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d71e6dbf751344e77905d041ab938d4e826ec8e5307d1f66781a8440696ca67`  
		Last Modified: Wed, 29 May 2019 00:05:49 GMT  
		Size: 89.6 KB (89585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ebbf5d7f07e68e9980790818f0eed6415d5c11de91006bf0e6aa52d0d4acdf`  
		Last Modified: Wed, 29 May 2019 00:06:04 GMT  
		Size: 36.9 MB (36900741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de62aafb61333e2f0cab5b0dd883978965e745271e59e31369ce012fa41ce24`  
		Last Modified: Wed, 29 May 2019 00:05:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e0903dbcf95de56c55bb01553e7d1ba7406e81285e87da14b700101c60e665`  
		Last Modified: Wed, 29 May 2019 00:06:31 GMT  
		Size: 2.9 MB (2889660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
