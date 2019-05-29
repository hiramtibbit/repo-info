## `ros:kinetic`

```console
$ docker pull ros@sha256:d5619b9dd5dabec72431e25c81dd1d7952acd4cc1da0aaa7977c0c201172547a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:9beaf597d1c55370a387c7ab786188ddea68759b57a268369df1fcf4433a48dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.9 MB (384923194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be02f9af93edd2958620ce609dd2376daa7eb0b92c898e044dda0f54cb4aff4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:41:52 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:44:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:44:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:44:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:44:03 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:45:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac680ca4eb0c297e9b4a3cea29c912d95ecf99eaedebcd7cec232424a2c364a`  
		Last Modified: Wed, 15 May 2019 23:24:57 GMT  
		Size: 193.2 MB (193236497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98825e65376c4a45be1aad61b613971c7c3b34cfb1d1a7f4210f91ebc2aefd02`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772c72e00d588e0451c035da8faafe56ea9702a4af16e5424a42675ad4990a1`  
		Last Modified: Wed, 15 May 2019 23:25:37 GMT  
		Size: 85.7 MB (85690900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:2fece891b02cf8950533d4809c5c993ed7723a027a087220f6e9f03e71430b23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336320618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c595d92730361fe7a1dd8f3408ed8e45fde3a3ad53d2a72e5563a0d481e1264`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:33:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:35:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:35:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:35:45 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:37:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebd3da8dcfa3d954d91db3bc9dc3d881e8c564e1be526f78e7e88f55f0a3260`  
		Last Modified: Wed, 15 May 2019 23:13:06 GMT  
		Size: 164.6 MB (164616569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840eadc63cc0a2f7d9f8c7e1d8d56925d7d8bbf918e6e5e9315a9c3d4983525`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c647b3fb8c3a2b3c9794758bc98a884a2b4e71ce5d7c3fb18d91d6dc2438b63`  
		Last Modified: Wed, 15 May 2019 23:13:37 GMT  
		Size: 76.5 MB (76466848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e5373b8cba8e8ca09e3472a264ed1856ca0e25988b6e9cb221c138036d22b604
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349981231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c0bb40d68b3ed805a12abe1447ef8e8515c6db224163c26643bd21e560bf05`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:48:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 May 2019 22:50:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:50:16 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:50:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:50:17 GMT
CMD ["bash"]
# Tue, 28 May 2019 22:51:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b073c0e323d5ac578ab9abcc68c4da58077f1152c8ede93d13f02d6b142812d5`  
		Last Modified: Tue, 28 May 2019 23:45:24 GMT  
		Size: 173.9 MB (173911600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eeaf7981a373ab6a6079e30ed1c81cf2ee22fe2b988f393fe63acad3d815d3`  
		Last Modified: Tue, 28 May 2019 23:44:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efdccf096c63bb831bdce8385336fe6c8c733dd58e51f8b52c10a47da47eb65`  
		Last Modified: Tue, 28 May 2019 23:45:59 GMT  
		Size: 78.0 MB (77980498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
