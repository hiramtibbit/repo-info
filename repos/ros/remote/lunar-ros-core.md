## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:919c0f04a3866ad9f63470aa6a518d3d347c9cf2dc989638e69ac591424b645f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:ab336d02dbc9ba5be5bc3d7700fadeec9d6b8f714dcf4be9957c36f9e23a7a1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299095988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fdf630e3e47cd6d82f813bb0ccfba36941f414dd8b4903abccd6e0a132c583`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:14:11 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:48:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Wed, 19 Jun 2019 03:48:44 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 19 Jun 2019 03:49:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:49:49 GMT
ENV LANG=C.UTF-8
# Wed, 19 Jun 2019 03:49:49 GMT
ENV LC_ALL=C.UTF-8
# Wed, 19 Jun 2019 03:50:05 GMT
RUN rosdep init     && rosdep update
# Wed, 19 Jun 2019 03:58:52 GMT
ENV ROS_DISTRO=lunar
# Wed, 19 Jun 2019 04:00:01 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 04:00:02 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 19 Jun 2019 04:00:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 19 Jun 2019 04:00:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db657c3b5bd5511e54e704678e5601eb0ee2b1e94fb5b55a042a83cd9aa1404f`  
		Last Modified: Wed, 19 Jun 2019 03:37:01 GMT  
		Size: 16.7 MB (16666029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7cd2eb3316de8f0675dfa5c1af40c6f0e27550338fc8c070f26fa1bd3d4da4`  
		Last Modified: Wed, 19 Jun 2019 04:21:08 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2669778535fe886548e97f1de8c17355ed5d7e70754ce0afe99ba2d0d980eca`  
		Last Modified: Wed, 19 Jun 2019 04:21:07 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93edbf07e36c823e87fae0ddf2f7dea8cb3cc1f31bb01b32ee63484d81f664c7`  
		Last Modified: Wed, 19 Jun 2019 04:21:20 GMT  
		Size: 44.9 MB (44885167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9191e92b79809560f49d450fb9714d29ae1e83522df99fd1ddfccf8896404d9`  
		Last Modified: Wed, 19 Jun 2019 04:21:07 GMT  
		Size: 456.6 KB (456567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7314235256e2922163ada1155275fd3429c30b2da63ff68e7256e38a791dbf`  
		Last Modified: Wed, 19 Jun 2019 04:25:25 GMT  
		Size: 193.2 MB (193230106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5683cd949e4c0aba495cd196e015d8789992957189c656d2aa92acea372cc87`  
		Last Modified: Wed, 19 Jun 2019 04:24:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:871bdbf545f5add0fca9cd9f5573a913072555c198d3df9643f94d9f53adb708
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259711820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05b4300f44d640785cc2483dcd68afe7c3ce7bca6ef73441ad0f9a793bac0fa0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:42:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:45:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:45:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:45:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:45:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b512cd95a9e4664e1d71635f27ee30ff018ff4b4d2290ceee491562285253392`  
		Last Modified: Tue, 18 Jun 2019 23:13:33 GMT  
		Size: 164.6 MB (164627322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509b208cc34a8d46e9f87ba61b44f45e3b977bc52ddac4f3edc69fbe915141aa`  
		Last Modified: Tue, 18 Jun 2019 23:12:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7c87705f8067130a908cc1b8369204d80b0ee6cbe53b51aa22dcb4429b8f7e62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272029051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ae8cef974535be3ebe188df13a037723d5a981e7620d928cae5701ebf1d953`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:44:22 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:46:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:46:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:46:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776b05ed31cdf7aeba4f94f7c4a3e5f4e1913689680de1a53613b270e9f70bd`  
		Last Modified: Tue, 18 Jun 2019 23:22:20 GMT  
		Size: 173.9 MB (173879492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be9f3815ed66ff9d43803b265c05354e3e8065f6528bf7a32340bd3df78b6ca`  
		Last Modified: Tue, 18 Jun 2019 23:21:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
