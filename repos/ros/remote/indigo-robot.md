## `ros:indigo-robot`

```console
$ docker pull ros@sha256:0003f633cb779a02e2311cf6084b349e4b43ce3a01cb777dfc47c0c70b5cfebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:7a0d2a9f892b84acb288d86eaf3408a743e59759f412c1bc1ab31b6773ceabf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.8 MB (332782410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97f15e435bed98586ac28b6ed9b7ec4da5ac564caeb96687ba3a5632b88cc88`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 02:12:21 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:12:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 19 Oct 2018 02:12:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 19 Oct 2018 02:12:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:13:04 GMT
ENV LANG=C.UTF-8
# Fri, 19 Oct 2018 02:13:04 GMT
ENV LC_ALL=C.UTF-8
# Fri, 19 Oct 2018 02:13:20 GMT
RUN rosdep init     && rosdep update
# Fri, 19 Oct 2018 02:13:20 GMT
ENV ROS_DISTRO=indigo
# Fri, 19 Oct 2018 02:15:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:15:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 19 Oct 2018 02:15:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 19 Oct 2018 02:15:10 GMT
CMD ["bash"]
# Fri, 19 Oct 2018 02:16:17 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:17:24 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86692d62f87b2f607c2cb731286a453053eceaf48643edb97704bd748a79ce44`  
		Last Modified: Fri, 19 Oct 2018 02:58:58 GMT  
		Size: 18.0 MB (18036744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e6791b0425d8592f001e24b626ee3cabf2a6bd954deaa7e61ec6bcb5e62847`  
		Last Modified: Fri, 19 Oct 2018 02:58:53 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf1c1bc1c8d5f9f0e0626230180a40d0938c0ea631d896eb078b452192a00b`  
		Last Modified: Fri, 19 Oct 2018 02:58:52 GMT  
		Size: 260.4 KB (260370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376ad3182e4747da25cc85741c3f3b9356caec3b1f3590144abc80ebe62f7c66`  
		Last Modified: Fri, 19 Oct 2018 02:59:02 GMT  
		Size: 30.9 MB (30947883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4039cd920f6dcd437720079acc11f0277b7ac318d16331796c16382b334199`  
		Last Modified: Fri, 19 Oct 2018 02:58:52 GMT  
		Size: 828.1 KB (828129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cbe1c03379af33babf131021e743c024059a6602d9c58210d603896b8616e9`  
		Last Modified: Fri, 19 Oct 2018 02:59:32 GMT  
		Size: 149.7 MB (149687758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cba4618c170553f5c5d0c449f5958d69a863c9bea08f04a4b693fa28a45809`  
		Last Modified: Fri, 19 Oct 2018 02:58:54 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072c286240132504fedb9997e9fdb1b08650103722b2d3ce0f48935c855c7446`  
		Last Modified: Fri, 19 Oct 2018 03:00:24 GMT  
		Size: 46.8 MB (46775837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fe060d2b08e191b25d312c730ff8bd9a64b1de13dbe46152fb65162f3417b5`  
		Last Modified: Fri, 19 Oct 2018 03:01:09 GMT  
		Size: 19.0 MB (19029982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:f3ef5537f5f733ed5b55a5950050d7453bffc38756c3b98e68dd88c5b309a49f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302436382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43accd7ae1f3547d135d3172aef8d4ba9799619cbaba652fba2c67e5962f390c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 19 Oct 2018 12:29:16 GMT
ADD file:9029845717a5b80f2de0573dfa78d372e48d20839ffeda8f490f0c7ae6f48f86 in / 
# Fri, 19 Oct 2018 12:29:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:29:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:29:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:29:22 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:54:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 19 Oct 2018 12:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 19 Oct 2018 12:55:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:55:44 GMT
ENV LANG=C.UTF-8
# Fri, 19 Oct 2018 12:55:44 GMT
ENV LC_ALL=C.UTF-8
# Fri, 19 Oct 2018 12:56:08 GMT
RUN rosdep init     && rosdep update
# Fri, 19 Oct 2018 12:56:09 GMT
ENV ROS_DISTRO=indigo
# Fri, 19 Oct 2018 12:58:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:58:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 19 Oct 2018 12:58:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 19 Oct 2018 12:58:29 GMT
CMD ["bash"]
# Fri, 19 Oct 2018 12:59:20 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:00:13 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7300ac719d02ece0f79aec78319ba5ba3e8c549c56378170cd972cc788beb38a`  
		Last Modified: Fri, 19 Oct 2018 12:31:46 GMT  
		Size: 61.5 MB (61466495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581751afb56761e606cb2356bbebd89e68f8dbb6d22223ab8f9102e6bf92e365`  
		Last Modified: Fri, 19 Oct 2018 12:31:27 GMT  
		Size: 76.8 KB (76765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2970fe4a7ce77fbd4686401382ebf8bdc6df4b197041c4a438210bfd865693ef`  
		Last Modified: Fri, 19 Oct 2018 12:31:27 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495ff6d873c5c348fe2e0721b4c024b0b12c3989ab7176b8ffdcc382e079b1c3`  
		Last Modified: Fri, 19 Oct 2018 12:31:28 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe11bab99186283431cceaca5a83ab13fa6ce0e84b130309cc5924d693a00da`  
		Last Modified: Fri, 19 Oct 2018 13:41:19 GMT  
		Size: 16.0 MB (15994261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1a71aa5552d7a921e283c4236a2c84bbd5991c5ff9811d94dbd9dfb3af3117`  
		Last Modified: Fri, 19 Oct 2018 13:41:12 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ddd3745d1e67efc7d5395af206e0b23800dadfb06a310fea91ee710d2b7e60`  
		Last Modified: Fri, 19 Oct 2018 13:41:12 GMT  
		Size: 260.4 KB (260385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf9570733d6a307f59cebd02e2eadfd241a8aa454e0d8568877d23e677f71a3`  
		Last Modified: Fri, 19 Oct 2018 13:41:23 GMT  
		Size: 28.4 MB (28392060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e1e2bd633760f0380b9a936ee9ef2c49c8da265cfc0bc1cccecbcc2830e69f2`  
		Last Modified: Fri, 19 Oct 2018 13:41:12 GMT  
		Size: 828.1 KB (828119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08929df9da2abe4de75d4a02da68f7cc31e26e2995a0c05e0655d4c9f80f3054`  
		Last Modified: Fri, 19 Oct 2018 13:41:58 GMT  
		Size: 137.3 MB (137331389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906fbbc3b2ecb1fac763634c4e6725b9d4965118c6786a7fd654f8cf6bedfcd3`  
		Last Modified: Fri, 19 Oct 2018 13:41:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1999603a9bb121fef9b8927cb9c656263a41effbf98e7276c767a24c5bc987bf`  
		Last Modified: Fri, 19 Oct 2018 13:42:29 GMT  
		Size: 40.4 MB (40387585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74367084a8867828a4c2cb8b42967516be274841716c386d5fa6e190e3138a62`  
		Last Modified: Fri, 19 Oct 2018 13:42:57 GMT  
		Size: 17.7 MB (17685495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
