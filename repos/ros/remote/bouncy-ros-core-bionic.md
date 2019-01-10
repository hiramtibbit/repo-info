## `ros:bouncy-ros-core-bionic`

```console
$ docker pull ros@sha256:c26d1ea8e85489e4e0dabafb255b1e501a252f0a9672d4804f426baa818e811f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:a5cec4f39dd1b22246bd6a9f967f095d9b5fb655bb2176b840025ec6baa9a49b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270745752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e5ab2c6d38b9941ef02ba4c3b09fe78e2456e251567858e4ec838eda536609`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:03:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:57:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:58:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:58:15 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:58:17 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:58:17 GMT
ENV ROS_DISTRO=bouncy
# Tue, 08 Jan 2019 23:59:06 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:59:07 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:59:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b830a6444f3dee50862a237c1ad8b2d38fc94b42c9e50af50ced1816a34f7c`  
		Last Modified: Sat, 29 Dec 2018 00:19:51 GMT  
		Size: 833.6 KB (833569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82a3883f99e5068e52fd0e48ea35422ec73465d4f031570add6e54a38825e61`  
		Last Modified: Wed, 09 Jan 2019 00:01:53 GMT  
		Size: 151.6 MB (151594081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396efe10183d5590f2e69cf714d55b65ace2ee97907870ecb61a99da8902d496`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37866d4a9c4261e7da8cf61a80ff6b782f232679b1cb5fab2c6dc7f5c6c08d`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 5.4 KB (5426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d66c53ac55d5ff98be29a6e8d233f36ec3d3c3e7d0d9543f6f8398b6d2d90`  
		Last Modified: Wed, 09 Jan 2019 00:01:34 GMT  
		Size: 38.2 MB (38227560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5eb84f884f914596c7fe3024c54c6b08b947bc2dd5c1c6ae9243cb7d37d600`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 165.8 KB (165759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f8f47af107aed0955ac17aa1fb8f4dd31d37de9e3efa3b20ea5377a35a36d1`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 93.9 KB (93860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67883f08092cced233679201faf26eeefb5fd01699b89d136c94cf466530a316`  
		Last Modified: Wed, 09 Jan 2019 00:01:38 GMT  
		Size: 47.6 MB (47647696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11292c36a4bd0bd4c47acbd9fdbdfc1cfdb8f9106a09d9c3cb224878ed42360`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:60e3dc65df96f2d03cc1004dfe7fae1ae36ee1229f990fe2fcab932e873a75a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201303975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52188331176844156879259a2a73d2b63154eccf89a283285af817d20837fd11`
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
# Wed, 09 Jan 2019 12:05:08 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 12:05:25 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 12:05:31 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 12:05:32 GMT
ENV ROS_DISTRO=bouncy
# Wed, 09 Jan 2019 12:09:26 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:09:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 12:09:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 12:09:29 GMT
CMD ["bash"]
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
	-	`sha256:947e771958e08cb3ad983c79a249e12b1ae18909fdb58388738eb985d545aabd`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 165.8 KB (165784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74219f549025f5bf8ca570c0489f29e1f81f047e34336f55530415ddcf3d5810`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 93.9 KB (93871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b348f42e4f376d6a9678af2145217d76dd57363474150e83348437c5927a6`  
		Last Modified: Wed, 09 Jan 2019 12:19:52 GMT  
		Size: 37.6 MB (37647405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069add936b53ac9286179f62c0a64737df35f98c0cba498c0034408b40a85d81`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
