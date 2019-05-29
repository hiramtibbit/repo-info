## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:4af65dc9d814abc183c927529a9d0dc0d597f8c6bec4bc02051f27b48a92037c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:d213d07ee8d7052ab6d1a1ba6a0711411636a922415c577e2c402955d4164f81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426173889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d273b71adb470c831efe45fbe99537f410c80d4f77b6d67608484d9d73eece7`
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
# Wed, 15 May 2019 21:54:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 23:00:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 23:01:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:01:09 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 23:01:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 23:01:28 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 23:01:28 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:04:47 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:04:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:04:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:04:49 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:06:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:ae984487af8bddc902fd21946f600720932c52b0c52d3bfd1e7378b94e0e3e4f`  
		Last Modified: Wed, 15 May 2019 22:08:33 GMT  
		Size: 14.9 MB (14912958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360fba6bb24a3ecbe8dd83670fb7816643958af9a8836c04adb0d0f4b2d39da`  
		Last Modified: Wed, 15 May 2019 23:32:49 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c01e17b3d3e58dd3d9017a267d01de07f8c8a230f4a86849dd6c3a65932f78`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a332dd7d43c5dc2ea2458cce4893758cc05f649b3f33b5db54b0ca2bec468c8`  
		Last Modified: Wed, 15 May 2019 23:33:11 GMT  
		Size: 49.4 MB (49414138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf104889d4f484b9e29572cb648a51789ab68fee665c0163440056dea9a6be`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 661.8 KB (661836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cbb3b6c9b792ec38e68a55d7019015f0841cd046b5996e603853cb12de1b0f`  
		Last Modified: Wed, 15 May 2019 23:34:14 GMT  
		Size: 260.8 MB (260849079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9338c948788d9f3cb85f2019e739562f327ac5d55eb0e960aa6096aa1ef672a`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab57cd7983f17127d5552db6cc1998b113e269a517574e4faa5a98735cec84`  
		Last Modified: Wed, 15 May 2019 23:34:44 GMT  
		Size: 70.6 MB (70636229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:c5751feb90b71ab29d250dbdd8a29a672d910479a111d0f291a29739b017699b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.5 MB (378546205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9605578f80657db2bee643a7391cf97a2978e3a1120c422f14b009e534016d9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:58:24 GMT
ADD file:816ebaa0df5396bcd14111f4c10b3aa1d9644e0fc8cbb961ba8755c1e54d768e in / 
# Wed, 15 May 2019 21:58:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:58:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:58:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:58:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:59:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:33 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:55:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:55:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:56:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:56:22 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:56:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:56:45 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:56:46 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:00:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:00:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:00:48 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:02:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:642790bfe707b4b246624090d72784c59aa5f0d16abf95f4f7b3de91b02225b9`  
		Last Modified: Wed, 15 May 2019 22:01:58 GMT  
		Size: 24.4 MB (24445379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f0a2a454e1b31011791e8b8149efe28d6982ce345a35b250df991e3f1a1ba`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040caec04e297f82c430a724a6bcb3f6971f28885f156a41340c3a56ca43e045`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0420b6c4d40bf95ae298d323c3add85fca9ffa95936644467c48f42f51cfb7`  
		Last Modified: Wed, 15 May 2019 23:20:02 GMT  
		Size: 837.1 KB (837054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96407d3b414ea88538009f1c115438f44f7a597f8263c40af5394fdf0b1ea1c`  
		Last Modified: Wed, 15 May 2019 23:20:06 GMT  
		Size: 13.2 MB (13240764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46946ca01cdbb07048572350ff25e5010a569a860bfe8b2e480e971528ae7f0`  
		Last Modified: Wed, 15 May 2019 23:20:01 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea4f47b8e1161050ae509c3474980309c2fc6c5f776018bedc0a613a0ddd6a4`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98befa1ce8111be03efd1b73ad628caff1202d7fe218b9e559cdd502359fb0fa`  
		Last Modified: Wed, 15 May 2019 23:20:19 GMT  
		Size: 45.0 MB (45021451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a71de66c0f09ddffe6e04e7a36821d1634a0c6953db0b3d295427440e9a52`  
		Last Modified: Wed, 15 May 2019 23:20:00 GMT  
		Size: 661.8 KB (661823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b25e2ee6e8d8cf69fbe031b2d886d48acbde8a990ecd68edbe36e781190128`  
		Last Modified: Wed, 15 May 2019 23:21:13 GMT  
		Size: 232.2 MB (232228355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f189bd34679acf684d16af01f1a021f247a6eb9a78977e63190e3524714446b6`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63feabdb12ef45a3920a1e057e10afcc6471bc3d6dd19c3cc50a76340a1257b6`  
		Last Modified: Wed, 15 May 2019 23:22:01 GMT  
		Size: 62.1 MB (62103297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6876457a0276caffb00183218b41bd3884b049428210d422aa5507674a6d5f32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.1 MB (357147172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8101f88fd31fc8d9997b1eb3f86bcacb594f071c7df322db744ac7fb1432ffc`
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
# Tue, 28 May 2019 23:18:32 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:18:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:18:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:19:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:19:38 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:19:38 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:19:55 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:19:56 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:22:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:22:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:22:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:22:46 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:24:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:7d5ea84dab96d597e4d16f8466c96544485344e3792a29bc19067442ae1ebb0b`  
		Last Modified: Tue, 28 May 2019 23:57:27 GMT  
		Size: 13.8 MB (13844503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d6f1b3df73be8226339d90542a90f319c8bad4320ab861cfcf22c189b1e7f5`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111114437a45ed327ea8e2b6dafb0757fc2b483e80fd8aa69e12eb1e560eb7a7`  
		Last Modified: Tue, 28 May 2019 23:57:20 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6622578b93dffa8180f9a161ac606c74bb9cdb6b835c92149d098991357e74e4`  
		Last Modified: Tue, 28 May 2019 23:57:38 GMT  
		Size: 47.6 MB (47625387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900d7074402ced5f71d5c57ba245c1e60e594e25de65874b4316265f57ec6db`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 452.2 KB (452229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bac861c4ce95acf46e5d84a30a837d1eeae27d4a7640d2d0f5027686e627087`  
		Last Modified: Tue, 28 May 2019 23:58:27 GMT  
		Size: 202.9 MB (202922844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df580111d4f48d101e15c663422713953a9394ff1fc72ef2b0e0b08643d85d42`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820fbcb4146cb50b7027c1c6fe3def1ad4b3733b1fc191331cad0e43057d3ab`  
		Last Modified: Tue, 28 May 2019 23:58:56 GMT  
		Size: 65.6 MB (65582483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
