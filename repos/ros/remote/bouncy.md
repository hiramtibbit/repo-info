## `ros:bouncy`

```console
$ docker pull ros@sha256:ffaa381c92767526dec0a134a1834ccfbb509497606f70c70b7a14f182b37adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy` - linux; amd64

```console
$ docker pull ros@sha256:9a49f4be10bc634ae9de28af9b00eb8e58bb2adc959c7b1d6149332f20e8f3a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 MB (274510538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649b6158358b6647f10c69f3bfca36d775966d64d389fc9d71bbfa68f0c99180`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:42:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 06 Feb 2019 07:43:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:43:38 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:43:41 GMT
RUN pip3 install -U     argcomplete
# Wed, 06 Feb 2019 07:43:41 GMT
ENV ROS_DISTRO=bouncy
# Wed, 06 Feb 2019 07:44:35 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:44:36 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 06 Feb 2019 07:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:44:36 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:44:50 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814cd5ce1fb7eca3e49b0aeb335eeb7be42a4986560fd6709144ddc7308c4f29`  
		Last Modified: Wed, 06 Feb 2019 07:58:47 GMT  
		Size: 151.6 MB (151587562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18fd691d794a47ebdef9e5d1f1cec7c41687c6f2aaef691492619c033561be4`  
		Last Modified: Wed, 06 Feb 2019 07:58:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07de2d12762ed798b958ae92feeea75bbb814525c2020bb71b377967960d8f5`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185f0c81e757931e7f6c192166d4faa68b7dc0473c4e3ca319499124e467fa3c`  
		Last Modified: Wed, 06 Feb 2019 07:58:23 GMT  
		Size: 38.2 MB (38228131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8e83b13d39c87f7bfd3676a4a9a3ff5b4fb71d61698ba14c10c8ac1f9f7f14`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 598.1 KB (598065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f8a86ae1c6daa2a4e2a529640da77e58ff6a1dc7ff50ab588978407888e1e9`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c325597ceeebaec8dbba0ca0cecdc39deea0d0c6b29b57bdc58970cb11a5b2c8`  
		Last Modified: Wed, 06 Feb 2019 07:58:33 GMT  
		Size: 47.6 MB (47648249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9419c23358f575634da987cad1039056de98d28b1497fc98b92bfb845d85e1c5`  
		Last Modified: Wed, 06 Feb 2019 07:58:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8e416eaf90fd8e6d3a95d628f66d24c43037261db29415973d9038b961aea6`  
		Last Modified: Wed, 06 Feb 2019 07:58:57 GMT  
		Size: 3.1 MB (3134827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6db33a40fc4e5e83617d69187bef80b90a7c608d5ec97f5a027d9f87b24d859a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204717940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2bae1637bc29da895e4468282f48370b650ae7d5f85f3cb7d9d764269657be`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:35:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:42:25 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:44:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:44:24 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:44:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:45:04 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:45:10 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:45:11 GMT
ENV ROS_DISTRO=bouncy
# Tue, 29 Jan 2019 18:48:23 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:48:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:48:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:48:29 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 18:49:04 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f49ca57a4913dbfbca505ccc9ec55b5826b8b48241d6cbd388fe34891333c4`  
		Last Modified: Wed, 23 Jan 2019 11:28:12 GMT  
		Size: 836.5 KB (836547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230d3b98986ea0e29994ad057878931aaaf71e7c0f8095943ffecca3165f8ef`  
		Last Modified: Tue, 29 Jan 2019 19:26:00 GMT  
		Size: 97.0 MB (97011056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b938d215f57e876dffb83834f0ea5e03edd115aba4c5c4b3734d11e67fe75e2`  
		Last Modified: Tue, 29 Jan 2019 19:25:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd932221f33abad0f156458fb84e4c8d75633a3d9838cbee791828a8cc358aa1`  
		Last Modified: Tue, 29 Jan 2019 19:25:16 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156c8a99a4fd0d3985e9ade0e42b2aa36e441698e6b927c0e0c66c398b3a76a7`  
		Last Modified: Tue, 29 Jan 2019 19:25:34 GMT  
		Size: 36.6 MB (36604515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a5d8723a3e9ac782a5474d21fbb462c8b7934b9cf502a2118dd43021e8d867`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 596.9 KB (596917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b54c8bb2163fcb72016ae6ae7a37d3fa7242cdc63b437453c135d04f6142c7`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fd0f11d86a5c7e27f2995e1b977f943f3b823d3de0043e8b13147e2ec83ed8`  
		Last Modified: Tue, 29 Jan 2019 19:25:40 GMT  
		Size: 37.6 MB (37644874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb48c118a8c10992b18dfe16594409d56159e1c2264e0e0880ed422bf2eeb32`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc63fd9477975bd8403f126c7060cff571ad8e00ad7758df854ab684aa859f80`  
		Last Modified: Tue, 29 Jan 2019 19:26:11 GMT  
		Size: 2.9 MB (2891875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
