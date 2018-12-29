## `ros:lunar-robot`

```console
$ docker pull ros@sha256:bc25231f526ffa953ad8a7bb003be44e972f61095853a174c72960c7d1ed9a4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:e70631af6cfac6b20a87046a11f2b75d07c09327b45d1870d38a1a0598071f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.4 MB (488433595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e489418a434842c66866fb39d83c2b1bbc42a8d95eb9c77c6b2806da322a2f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:43:41 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:44:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:44:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:44:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:45:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:46:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f049e7483e8efca96ca9673ee6c5771d5958b5070e2a90d149d71c49824173`  
		Last Modified: Sat, 29 Dec 2018 01:21:52 GMT  
		Size: 193.2 MB (193227688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fa7fccbc957934141998d0ef24e6de2434f9b93aa236e21822c9d3fc5b06b6`  
		Last Modified: Sat, 29 Dec 2018 01:21:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b832917dc5611aafcf63d284580ee036930541385699910416b379471801f257`  
		Last Modified: Sat, 29 Dec 2018 01:22:23 GMT  
		Size: 85.6 MB (85617629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da29fa0cc90a2252fc87034635333cd36ec45737836a589bdb403abcee529885`  
		Last Modified: Sat, 29 Dec 2018 01:22:54 GMT  
		Size: 103.7 MB (103733412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:a873727d4170a677da6422399ab0cd7ef194c4a8bf1958e5aeec2a81ae6b2997
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.7 MB (433744789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cf685807b2daed48a6e0992b326d0276af72020f66675cf1c658bef4762f67`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:49:50 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 13:52:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:52:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:52:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:52:14 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:53:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:55:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deeefb1e60dedd4a4e53d61145889258ad88f48adccd1cfccf553256af62133`  
		Last Modified: Tue, 20 Nov 2018 14:20:52 GMT  
		Size: 164.6 MB (164613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5ef31c86c4a0d2d2428fc39e57f68a9c568753412c1fdc5b5012a5a9518838`  
		Last Modified: Tue, 20 Nov 2018 14:20:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd8f1e9cc61c278b55be0413f2e7f2b2ed8b3017641794412660a3c40b1c83`  
		Last Modified: Tue, 20 Nov 2018 14:21:31 GMT  
		Size: 83.8 MB (83796565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64151b934c05b8c42bd95d8669d97bef7877f81896fceb88c9cb3a3e4d488c8`  
		Last Modified: Tue, 20 Nov 2018 14:22:17 GMT  
		Size: 90.2 MB (90182773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:90c863d70719998b7c3bf0fde386ed8ef4d30650bcb5148fa75c4999ec7a9568
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.4 MB (451362152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d337df1b410cfb179f2d6829c965514f731eb51839bad222b51b8e5b5942bf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:51:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878892e2470bc4790dc82298db5336ad0b35e0f240f87b6ae46a98b1724b455b`  
		Last Modified: Tue, 20 Nov 2018 12:48:50 GMT  
		Size: 94.1 MB (94076977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
