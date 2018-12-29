## `ros:indigo-perception`

```console
$ docker pull ros@sha256:17cdc21ff5263976eab2993669144d42de67970cb83f52cfb8f70d41e9e500a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:bff34af7e0f15a13037b51c479139a5d6c36a4a162a3773cd741fa398602646e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.1 MB (550073451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a98304cfd96923d10b4b78c2288a240ac61335c87cd02089d8b882cd19de6b1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:26:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:26:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:26:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:27:20 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:27:20 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 00:29:05 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:29:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:29:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:29:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:29:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:33:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eeedf084c617253f720fe895953b43fafea35b6c515e70ee7bae83930f1a60`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 18.0 MB (18036759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1822c51aca54855dbb703e86f0f30bdb7b74b4ed695941aaafaae13d8d5f9aa0`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09318eec9f7e5a685bfe7fa35ff323159da3a3a144831ddc7a833de217dc5f84`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 260.4 KB (260377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171536eee6925fb66d42f3bb6eb6ede030f8ae325fef0f06520942e8bd1012dc`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 31.0 MB (30950561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f3123ac4b1da278b59c2e33e06d1a0809f7d065a8c0c0d90f0973c8a023c3c`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c02531d6be3b7ffaf979bafe1d396130095bf64695b8d10db49f3c640626212`  
		Last Modified: Sat, 29 Dec 2018 01:16:06 GMT  
		Size: 149.7 MB (149705132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee4de6770145690d884f3b7a7561ce36ae729c4478a0ad36b664b7e8871d94`  
		Last Modified: Sat, 29 Dec 2018 01:15:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086173ef5afa68cfe78ea0d953483c75812470041329b9f04e118ddc513456b9`  
		Last Modified: Sat, 29 Dec 2018 01:16:22 GMT  
		Size: 46.8 MB (46776553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8b3da81b92822d4fda0dcf7249be2cf900d9f25e972250c2b5979aa63936bc`  
		Last Modified: Sat, 29 Dec 2018 01:17:34 GMT  
		Size: 236.3 MB (236257134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:4aec4112c0e700240cc039e69384a5a72a7d89fe0dbf3b7a07f12f87ba129213
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.6 MB (496638807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae501807ab31c9bc6f7b3933dc51704b7a4cb2f2e0a34ba58576f2fa838698b3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:07:29 GMT
ADD file:b65c968ad3f55b81882f9b6e722ee967f0404525c7ed13cff0dd2a3e668fd077 in / 
# Tue, 20 Nov 2018 13:07:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:07:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:07:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:07:33 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:29:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:30:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:30:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:30:30 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:30:31 GMT
ENV ROS_DISTRO=indigo
# Tue, 20 Nov 2018 13:32:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:32:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:32:39 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:33:37 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:37:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d17d4e152eb35c16b1edfe48495abb0c1c83026df1ee62d294f585e99fe5a131`  
		Last Modified: Tue, 20 Nov 2018 13:10:15 GMT  
		Size: 61.5 MB (61490728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c2ca6bcf93e6488fb05e178240e1710eb74d81507938e1f771dc650d84616`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749b266e074ecb714b357f0d5387bef72993df0adab2929fb0222857615ff059`  
		Last Modified: Tue, 20 Nov 2018 13:09:55 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f704248d31b8e22a8fede54e24377839ff939d5e3b5db92a7a1caf87047ba16e`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56cd3c0e64b357de750edb9b4606f0edb2c2992b44d932b7fe3334b4bbd8d7f`  
		Last Modified: Tue, 20 Nov 2018 14:12:47 GMT  
		Size: 16.0 MB (15995485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e55c6156584433b71a5c969f881fcaf82309a208116d58bf68550433ac681`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5220c6742e25176dbe23e2fa29d2782478dc195fff4484b52244ccf920629ff`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e792fee32b7b48e81a2ad0f5668a2bc474e265e07b05831bd8b6227d90f01d`  
		Last Modified: Tue, 20 Nov 2018 14:12:50 GMT  
		Size: 28.4 MB (28409100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aaea753fa6b9720f01e9eb835b5f7f59be50884f1a140323b2de2d84e474c9`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 835.4 KB (835441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c5543024228af93f583714928172dd7905e4e4ef0d9a2643d4d1b452a9dd6d`  
		Last Modified: Tue, 20 Nov 2018 14:13:25 GMT  
		Size: 137.3 MB (137333306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa94b32cae867e131584d18940f848c812b202178d3442e70d00c1707b089c7`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e82ffed67686319df4410b6401ab599c9026710a4d6fe37854766ece1783de`  
		Last Modified: Tue, 20 Nov 2018 14:13:52 GMT  
		Size: 40.4 MB (40388012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ba05526911c304288fb2b363b031f00a458498169a2aa062019b2c349c93b1`  
		Last Modified: Tue, 20 Nov 2018 14:15:34 GMT  
		Size: 211.8 MB (211835797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
