## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:cf1c6e0834340495ac4cff7357acf46a9f49f432a6b8a28878fe993c88524e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:01d1c8ed4d799651c4b21299c471b90e710fb119666ff252334da5496c5aa137
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.8 MB (496768031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4482bc47ba7652dc3fd05bd798b9230e43823602cb5b7b3499429ba8553b36ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:04:21 GMT
ENV ROS_DISTRO=kinetic
# Mon, 19 Nov 2018 23:06:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:06:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:09:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dcfc38675675ed19aa60f96e83e5d03ad5fef6a5751125e816390c46e35e55`  
		Last Modified: Mon, 19 Nov 2018 23:39:14 GMT  
		Size: 193.3 MB (193255511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91adea7fed051852b0967399f1a4fc92c236b137adc64ba54fe218d8bf9a5abd`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0feef6aff2af43e4d9b564a59b5c1c445d5eeb2f45cfe5c89a3ec2f4684fdcd`  
		Last Modified: Mon, 19 Nov 2018 23:40:16 GMT  
		Size: 94.0 MB (94010866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8488a0661d2cd7b6cdc5924db556af0f74c405a58d3ee5b3d6a5d35ea974cbf`  
		Last Modified: Mon, 19 Nov 2018 23:41:44 GMT  
		Size: 103.7 MB (103694908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:db5eee895d1150e2b92d736eaf8ad8a2258ee6ac87ef578871f796bbdb6d4399
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.7 MB (433695005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a3d34d15437fb7dcf01bf938b82db1531ffbae9698b555f9b78813d1b6d1cd`
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
# Tue, 20 Nov 2018 13:39:51 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 13:42:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:42:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:42:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:42:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:44:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:45:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:850852082cbfbf78eb5863bc420ca0a9075810e88126b08d4672e4d5f9f9c2ee`  
		Last Modified: Tue, 20 Nov 2018 14:16:46 GMT  
		Size: 164.6 MB (164591996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295f5e0033614ec38c39cda63beb1080f7ebfb26c0dfa6657da999ccb717fd0e`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb4e9a9ecdf15e659045dbf91ba7a5bd4d011c7695138db095f3cdfab9f6893`  
		Last Modified: Tue, 20 Nov 2018 14:17:24 GMT  
		Size: 83.9 MB (83861095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c4c3444f0cd4c31efd464d328b636df6befd36bc714aabe6b87a77868e4848`  
		Last Modified: Tue, 20 Nov 2018 14:18:10 GMT  
		Size: 90.1 MB (90090434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:11ef2a0eb7c0e4a04ea63b4d2399315520ba1caa8059496ec1630cd6fe351426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.3 MB (451336794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2af2c6d8a213c88cd88f9a0a4f966657eb448366b782ed94d422a50b81cafe7`
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
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:20:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7d2df65811894cf924a03d9f8296199d336b352462784c66b077f7c853d2c`  
		Last Modified: Tue, 20 Nov 2018 12:42:55 GMT  
		Size: 94.0 MB (93972786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
