## `ros:indigo-robot`

```console
$ docker pull ros@sha256:0e3d666b34103d2ed770d7c7ea59c44f9bcc7812e41e2815cc1a53eb9779676e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:60f3ecd35afd2bf953d67d8728d2aa02a10499f182500bc7deca18833a1b028d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.6 MB (332618696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b89b8993940b64c403bcbaf4cfd78035cf00dc5c1b0b2969ba84404c1abf849`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:51:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd34038eab2a745f3f09b15bfbdf8d0c82867d47c319562c31e785cfb6e2708`  
		Last Modified: Tue, 12 Mar 2019 01:28:28 GMT  
		Size: 19.0 MB (19031195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:ee2659d007af8a3b135d7076913eb89871ce042bfbd295d683e73067966081f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.3 MB (302271761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8a365d4666a5ee9e38dcaa6793a7bb348d00c425c89c33c149088a4d1f60f6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:00 GMT
ADD file:51b604021d796dee1313a61c26c4f065858dbd788f2c463978b825df16be4ff1 in / 
# Wed, 23 Jan 2019 13:00:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:19:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:19:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:20:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:20:33 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:20:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 13:22:52 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:22:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:22:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:24:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:24:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e9118bc533947665798062be61a0607d724a753f486eb9d549d016dcb07265e3`  
		Last Modified: Wed, 23 Jan 2019 13:02:23 GMT  
		Size: 61.5 MB (61488502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03bc69e69a31cc8f908a36fc1c1bcd198b7faa4f9fa0344ea6efcbb2b2a07b3`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 76.8 KB (76774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066d95ac01fd9c0cb3af0be101b48a5bf661c838d651595b921e68d1006b8e73`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84edb6c6d164dae9612234906986e26d3dff4eea8017301ecd0eaec5004c9c`  
		Last Modified: Wed, 23 Jan 2019 13:02:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692c619585c74abe2b671bf89e13b380a844408d196e7a1cf0f449359783a32`  
		Last Modified: Wed, 23 Jan 2019 14:05:12 GMT  
		Size: 16.0 MB (15995539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc63812ea86dbc48fab25f648a1653abbcea7cde060d7ecc8b96574514084f`  
		Last Modified: Wed, 23 Jan 2019 14:05:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f520983d858ef93919dcbce1ecc7dfaaa7e62b9ea45a82e7e40850a379fa84e8`  
		Last Modified: Wed, 23 Jan 2019 14:05:06 GMT  
		Size: 260.4 KB (260367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7cec52d01391857b42001a8b09c007423786c28c275ab37ec52ed2e48ced3b`  
		Last Modified: Wed, 23 Jan 2019 14:05:16 GMT  
		Size: 28.4 MB (28421653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8e603c35ec8ef2224edb1e6fdb1adac0c5ebbe4b4c1832014b97d137012c5`  
		Last Modified: Wed, 23 Jan 2019 14:05:05 GMT  
		Size: 601.5 KB (601491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8f400616542752cbee6813a34d48b19a93dc108a28f5046a02728d0a6b88e`  
		Last Modified: Wed, 23 Jan 2019 14:05:53 GMT  
		Size: 137.3 MB (137336713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5a31e18def021ce3c4826f11d28a0518516fe8ecc16ded9a16ab3361ba4a9e`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64e6fa907b4e0ded729d4e4595d004783bf1fc4bbb60c9aae21906a8db0fa7a`  
		Last Modified: Wed, 23 Jan 2019 14:06:19 GMT  
		Size: 40.4 MB (40388949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a6c2c09489bb7195a101759d35126bf152c7e374f42ba1844422396c643ce6`  
		Last Modified: Wed, 23 Jan 2019 14:06:35 GMT  
		Size: 17.7 MB (17687946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
