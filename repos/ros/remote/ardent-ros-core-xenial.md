## `ros:ardent-ros-core-xenial`

```console
$ docker pull ros@sha256:34af61c0c66e0f8865809be7074a7095a307f41ce3f02c9b7fe3778d70642bcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:0d5da9dec613631c9e9415da0e4670a319e547f15a67aa8e729ef8ed74156347
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259144926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120d7627674fabb0adb5902b48359ff1a55a2f8a5bbbf1a65db84f713017acd3`
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
# Fri, 11 Jan 2019 23:21:04 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:21:06 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:21:07 GMT
ENV ROS_DISTRO=ardent
# Fri, 11 Jan 2019 23:21:59 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:22:00 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:22:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:22:00 GMT
CMD ["bash"]
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
	-	`sha256:3364f9da5874286d0cf67680691dd3f244a9aacb9d553e01f567075cd0b5ad73`  
		Last Modified: Fri, 11 Jan 2019 23:26:22 GMT  
		Size: 930.0 KB (929953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd449fe554eebb9419d6ef83beff72a98dbd4da186c3e7d33a651e5bffa736f6`  
		Last Modified: Fri, 11 Jan 2019 23:26:22 GMT  
		Size: 113.8 KB (113778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23b081890fa03d90d65403ac5542dc4494b7fe89380c3db8f6b658435621b5`  
		Last Modified: Fri, 11 Jan 2019 23:26:32 GMT  
		Size: 51.7 MB (51706033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4400d9c3e4590b14b3a34a72fb8989338c252f0d924ca31647e4edf7d793e9`  
		Last Modified: Fri, 11 Jan 2019 23:26:21 GMT  
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
