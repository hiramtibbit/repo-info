## `ros:ardent-ros-core-xenial`

```console
$ docker pull ros@sha256:17acac6ae3463a9ed822ce7ba580088cb43fccf97ca4115c2e88532d2293dc22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:d8322325e3b6b444f6dd4c4578ba99747076abf731d6476e6be1bea95d10cc56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258932701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84dd5cc09c56e90331211a96b91efaaee3d60487e774eb276bba1d2df3a47e59`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 04:01:04 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:01:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 04:01:06 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 23 Jan 2019 04:02:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:02:32 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 04:02:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 04:02:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 04:02:51 GMT
RUN pip3 install -U     argcomplete
# Wed, 23 Jan 2019 04:02:52 GMT
ENV ROS_DISTRO=ardent
# Wed, 23 Jan 2019 04:04:45 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:04:46 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 23 Jan 2019 04:04:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 04:04:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649b155d5d901aa1c494afe8c3e112aed171c5405a5e0cbe1ae734c6b895a7f4`  
		Last Modified: Wed, 23 Jan 2019 04:41:37 GMT  
		Size: 129.2 MB (129177810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec83f25e60a890c4c6c871d95abd7b39d793520c9c04bfee51bc2e5a6d32c20`  
		Last Modified: Wed, 23 Jan 2019 04:41:07 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb3e0180a952867900302edbc23b97613013205953b9561997f803c7291ceee`  
		Last Modified: Wed, 23 Jan 2019 04:41:06 GMT  
		Size: 5.5 KB (5518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72a441758da77371354a72d1a8e5d9c253ac0c86dfa1963b823d2deb9d9af5`  
		Last Modified: Wed, 23 Jan 2019 04:41:20 GMT  
		Size: 33.8 MB (33755012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c078b2c57b622d958b7d2fb8fdf633c6fd2bed4bd67292aec4a7915c0f4ece`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 638.1 KB (638123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9d71f9a55cbcd0d15130c74b9ce7237c105ef6b18f61595a8f1db5a2d9370b`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 114.2 KB (114159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041e9fcfc6662c815cda78cae8bf34ba6c305111ffd1252b8de4f794e7ff4f63`  
		Last Modified: Wed, 23 Jan 2019 04:41:30 GMT  
		Size: 51.7 MB (51705818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e29ef4f0e2d98c8291e684ec6cc06ea1451b561d819180fc0d20f84ad9a27`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e119680cfe50ec038b34335379242819c00c3bf5dd8fe1627c1871f49e9419c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200140270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89102ab6ec91ef94a8e1d3eb15f1386470caa9f2b10c0c7d0aae3c96b8770315`
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
# Sat, 12 Jan 2019 10:24:15 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:24:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:24:30 GMT
ENV ROS_DISTRO=ardent
# Sat, 12 Jan 2019 10:29:34 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:29:36 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:29:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:29:37 GMT
CMD ["bash"]
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
	-	`sha256:75c20ee329e4eca837317147ded8b0941467ea0df09d77d66d48f8da200823da`  
		Last Modified: Sat, 12 Jan 2019 10:45:15 GMT  
		Size: 935.2 KB (935239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eec33612c7f12a34d56efcb8d62aadd1225308335493060ce7b381d713ab3c`  
		Last Modified: Sat, 12 Jan 2019 10:45:14 GMT  
		Size: 113.8 KB (113786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a47978131a3edb781031d58eda744b942a7e27fcb478129031e05c821477f3f`  
		Last Modified: Sat, 12 Jan 2019 10:45:37 GMT  
		Size: 50.1 MB (50094751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acdb10d68a625cd243b8cf8387ada53f7596eade45857ea04261fb8568df51ab`  
		Last Modified: Sat, 12 Jan 2019 10:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
