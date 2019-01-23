## `ros:bouncy-ros-base-bionic`

```console
$ docker pull ros@sha256:92a886c11390dba13f1dcf275eba992a219b8c408a80700329874658fa776ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:57cd511a02ec8c0b8611214960c5f8d2d5486c095737082a786d6b0049dcac2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.4 MB (274428541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0790f5928d1a1e79ceacc8b4ae382fe744a3442a64121d9251a4a40b8dd5a9c8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:43:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:15:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:15:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 04:15:05 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 23 Jan 2019 04:16:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:16:37 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 04:16:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 04:16:47 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 04:16:49 GMT
RUN pip3 install -U     argcomplete
# Wed, 23 Jan 2019 04:16:49 GMT
ENV ROS_DISTRO=bouncy
# Wed, 23 Jan 2019 04:19:00 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:19:01 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 23 Jan 2019 04:19:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 04:19:01 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:19:25 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee6e86777b0c7c9cb9a105ba15e66a8501da1b019f4a30c8741b02bd3815c27`  
		Last Modified: Wed, 23 Jan 2019 02:00:42 GMT  
		Size: 836.9 KB (836919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb2f7bd34138b4629b391640c946aede3a2c92c2d9e32e244d3db8f967149a`  
		Last Modified: Wed, 23 Jan 2019 04:42:49 GMT  
		Size: 151.6 MB (151594831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986bbda57a584f837021de2b2ebf7b6d2d6e3a69e20c180aca6add56263f4580`  
		Last Modified: Wed, 23 Jan 2019 04:42:18 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa76602f3d6f896397ef56db24cbcb53c3058b139be11c0fc53fc3557c7c2e86`  
		Last Modified: Wed, 23 Jan 2019 04:42:18 GMT  
		Size: 5.4 KB (5422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4d8e673143efdf8377ded7168a8d2b804d1f76bdcc26997179bc98636458a8`  
		Last Modified: Wed, 23 Jan 2019 04:42:30 GMT  
		Size: 38.2 MB (38227557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9543a5f298f15c92ff5ff87639fcdc94d8a0fc417d5d6081498469a0d2721aba`  
		Last Modified: Wed, 23 Jan 2019 04:42:17 GMT  
		Size: 593.3 KB (593336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab6f4be4d8295e66fe14df68103edf6333ed382e4c1427b8ea9654b0ba64720`  
		Last Modified: Wed, 23 Jan 2019 04:42:17 GMT  
		Size: 93.9 KB (93867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80092cd1a7032180ec15673f90c8c3cd6c1342f4f59150c28f14af6e5c70674a`  
		Last Modified: Wed, 23 Jan 2019 04:42:38 GMT  
		Size: 47.6 MB (47647745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af41ec1dabe875b397afc89db85bb2bbe399c5afc4c6420e5f4eb7211dd62714`  
		Last Modified: Wed, 23 Jan 2019 04:42:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c56157e5b8f97ae2519d1c5060551f8a5004d93e6fe82ad75d8845b51a4ec39`  
		Last Modified: Wed, 23 Jan 2019 04:42:54 GMT  
		Size: 3.1 MB (3134723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9cd849617ebac198b325c33022a38f5dc5e40e1df9ee63966bb2801eb05021c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204896648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0831ac1043b42a093b793b114f9b525cead5a3bcbf8cdb4dfa89742717939761`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 12:02:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 12:05:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:05:06 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 12:05:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 12 Jan 2019 10:35:18 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:35:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:35:30 GMT
ENV ROS_DISTRO=bouncy
# Sat, 12 Jan 2019 10:38:06 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:38:07 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:38:09 GMT
CMD ["bash"]
# Sat, 12 Jan 2019 10:38:52 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bf0f1671b2062ecae6c80cb7ef868a3bd4b43cdee3c265a05cc1840641940b`  
		Last Modified: Wed, 09 Jan 2019 12:20:15 GMT  
		Size: 97.0 MB (97007835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16853b231bacc1de4f918b2d082d0a36f722cbbf38312fb4d4ed051299d2f603`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4eedd0ced794b8fb5685e4c9b584735028ad6e23988b2bd81b6b26072fed2c`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e369da6887210f116a5d26fb6311997ac9f5b96c8b9a595bd86b3b7e3a8ec7`  
		Last Modified: Wed, 09 Jan 2019 12:19:48 GMT  
		Size: 36.6 MB (36604915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845dec30f89ce0c45001dbe6974b8fee8197c0834014fbb423495c2ffe95db04`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 867.5 KB (867515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086ebaa781a21d21052ab938b8aa532a9483e31a5ba114aa7d74cd949516844`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 93.9 KB (93868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a799cdab62a26dc454a0f862a05a7ba15e39d71580a8f96f9b508fdbe473a8`  
		Last Modified: Sat, 12 Jan 2019 10:46:50 GMT  
		Size: 37.6 MB (37647055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a448866c8b5ceded10a0dad09c5296eaf3795af720d950f87b92397d3dcf2e67`  
		Last Modified: Sat, 12 Jan 2019 10:46:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530f858780458633dbdb4056c142bc4c4b4ecaba3afc9d73e54e7df7bada1e74`  
		Last Modified: Sat, 12 Jan 2019 10:47:01 GMT  
		Size: 2.9 MB (2891295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
