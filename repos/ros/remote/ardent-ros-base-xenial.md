## `ros:ardent-ros-base-xenial`

```console
$ docker pull ros@sha256:8905c18d58ef5408a943fe3477d2213e3294060a6669d0f59e2969b93d517edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:f77692e71dfca46f0f95ef9e56ea8aa8b702289d3709f6d053e8e6f3b6d8333e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.4 MB (338354676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb24af0387a5c10e108576ca8edb11be1741c67f982db932b7184d9f845dbcf`
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
# Tue, 08 Jan 2019 23:53:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:53:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:53:11 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:53:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:53:48 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:53:48 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:53:48 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:53:52 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:53:54 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:53:54 GMT
ENV ROS_DISTRO=ardent
# Tue, 08 Jan 2019 23:54:34 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:54:35 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:54:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:54:35 GMT
CMD ["bash"]
# Tue, 08 Jan 2019 23:55:47 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:c9273876d86edba031ea41f617f5399ab022cb1417df13686fa1a0979c1d40d9`  
		Last Modified: Wed, 09 Jan 2019 00:01:00 GMT  
		Size: 129.2 MB (129177743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7124e5effeed230438a13d6d15a0aebefa17f115f44a7b3b0afd0311ba768`  
		Last Modified: Wed, 09 Jan 2019 00:00:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f07ad54f38214bc1b993198bd7e8473d5f6475092c7a34f54eceb4e00abd4ab`  
		Last Modified: Wed, 09 Jan 2019 00:00:38 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d7e8f112be06f639f5be59c81a2fcb5b914b4699bcfde0314dbcc7eb1a1301`  
		Last Modified: Wed, 09 Jan 2019 00:00:45 GMT  
		Size: 33.8 MB (33754095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dfbcc40e1523eb462b73425b85f054e94d3931bc5fd8e6ba3cfd6e740c06a1`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 171.3 KB (171251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e422cbdd6262f634441badf1583609bb89c0b649af1233d8bf9bddb664a51541`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 113.8 KB (113789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f59dc86773ea61a441307ac34f7b2c431bf80474207013d34b4f4a04dc7b38c`  
		Last Modified: Wed, 09 Jan 2019 00:00:50 GMT  
		Size: 51.7 MB (51705635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54fd121e62e4e83175234e7c6544cb470a31c57ca2bfa0bf73806a669fd58fa`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861db1cb1758bf767196aefe7ab1048a9541d732e962e2ee0095cfd4ceba1b48`  
		Last Modified: Wed, 09 Jan 2019 00:01:18 GMT  
		Size: 80.0 MB (79968839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:531a7213d76090cbe2fc7891ccbda90fcc36eaebccdefa7191b1c0c599ff4612
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277020748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd9e2a0caf7f89c0dbf49745b55ac2f2c84714e3035b62069cbe29a7ead54b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Wed, 09 Jan 2019 11:35:22 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:45:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 11:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 11:47:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:47:40 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 11:47:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 11:47:41 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 11:48:00 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 11:48:06 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 11:48:06 GMT
ENV ROS_DISTRO=ardent
# Wed, 09 Jan 2019 11:52:10 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:52:11 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 11:52:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 11:52:13 GMT
CMD ["bash"]
# Wed, 09 Jan 2019 11:57:11 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16ac8eaf5ecbb73ae5ce6ad58f7087f5594940616faf2c1db50e3f923261d3e`  
		Last Modified: Wed, 09 Jan 2019 12:18:37 GMT  
		Size: 77.1 MB (77123098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc1a72b95ab25aedab65ba3cdef41e101ff4163e5492b4963c07fbf9f0117bd`  
		Last Modified: Wed, 09 Jan 2019 12:17:47 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130329c0dd08cc33bd6889d3e66c29b9db3efc8b573feeffdcfdba1f36f708ca`  
		Last Modified: Wed, 09 Jan 2019 12:17:47 GMT  
		Size: 5.5 KB (5523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a34fe61a71df479070983f78a68baa8f9f0107417e94559392477398b29673`  
		Last Modified: Wed, 09 Jan 2019 12:18:04 GMT  
		Size: 32.3 MB (32345704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8518df7f5c87643912a1ef8e3059147f67e94f78fc7ecf2ec1d776f7af7f297`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 171.4 KB (171403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800a14847b416daa00fee4b1600a254c35dcea2b65ba12f84353a1ab092ff77e`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 113.7 KB (113742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59717fad0918c2a376aa1ccf143539c4fcb1cdb7ba8ef53118d8d8c10ced792b`  
		Last Modified: Wed, 09 Jan 2019 12:18:19 GMT  
		Size: 50.1 MB (50094759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9b74d44a100ce8bc48dd7f9f00fb11453665af5e9149bf32fefcb4d001435c`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704f653611c39ddf37fca6b47f81ce1d5bf81a6e9bc45a1245dd6fd52fa6767b`  
		Last Modified: Wed, 09 Jan 2019 12:19:20 GMT  
		Size: 77.6 MB (77644350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
