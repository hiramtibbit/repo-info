## `ros:indigo-robot`

```console
$ docker pull ros@sha256:f078dd00c5181008971954faddb9c63e31137a3bdf96439452517a592b3da93b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:fc5a3326104746c62be465219593d791237251d5f106938a63f4daf22e9527f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.8 MB (332826762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6b7d67d82e9dd0a18d892ecbeb7973e7f78020b5995a4a2a7aa306c6eb14fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:53:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 22:53:14 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 22:53:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 22:54:09 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 22:54:22 GMT
ENV ROS_DISTRO=indigo
# Mon, 19 Nov 2018 22:56:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:56:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 22:56:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 22:56:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 22:57:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:58:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd14e92cce34e116b6518e1c51dbabfb9d1998d886049c846bcfba3df5d311d0`  
		Last Modified: Mon, 19 Nov 2018 23:33:55 GMT  
		Size: 18.0 MB (18037830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36edd9a6bcd421fbd13e41276882c043da645bf0bd071b7dc7385275ba81fa4c`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0474ae1e8be19d60744808ec632c393a63eb256f8dd3d849861c6551f09033cf`  
		Last Modified: Mon, 19 Nov 2018 23:33:48 GMT  
		Size: 260.4 KB (260353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18070653d6b89055dcc73b12c2358dff6732e2c756f01410d209428747a8dcbe`  
		Last Modified: Mon, 19 Nov 2018 23:34:02 GMT  
		Size: 30.9 MB (30949932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758fde943fa1bdd2dad748fbbeb2026bfce9ae84bf9c873dc433e5c14a923976`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 835.4 KB (835395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b28af555437529fd1b7e515caae30819cbba95c5999b44b37030332bb917c2`  
		Last Modified: Mon, 19 Nov 2018 23:34:25 GMT  
		Size: 149.7 MB (149700927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a02b6f012d2d67f0349917ec8b25288c8319c5dc1b4a46bd868a92855bda2`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1fad2668d43a7c84972bbe7c234f9a4a05cc72e8c8e34e9a076f6e9648b72`  
		Last Modified: Mon, 19 Nov 2018 23:35:11 GMT  
		Size: 46.8 MB (46777062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365482fe6ea6518b10f277463eb7e30da5995203b8bb0ee17bbb5cdd519910db`  
		Last Modified: Mon, 19 Nov 2018 23:36:04 GMT  
		Size: 19.0 MB (19030759 bytes)  
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
