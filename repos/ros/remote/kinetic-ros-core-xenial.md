## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:4dd7764b7b28a8ccb260bb3d1996404a334e61ea88253366ba0c4689788b1085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:eef7297f1865646971ccc6956396f2a91ba01360b174a8aa39575c0991f2711a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299052883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b788efe919e0fd85a4482e14fcc7471d3945ddee7f7da34266febd7629c2719d`
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
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:28:04 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:29:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:29:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:29:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:29:59 GMT
CMD ["bash"]
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
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bc99f5cbffadda8b78ba5c5f2f2adf83674c016e6eb9d466a55365c1043a96`  
		Last Modified: Sat, 08 Jun 2019 00:09:01 GMT  
		Size: 193.3 MB (193263391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2f0988027de8d2e2607428ee1255970279d774bff63cd8f7c1aa309734ca7d`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:db4e8153dc208e1fcc9f5f2ff87a8f1f4baa1ef95425b5309e74aa8007d435d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259723013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd36ac769c4498bd2b46766a25b355869b42577d8181546cdb8c36519dd54a`
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
# Tue, 18 Jun 2019 22:31:01 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:33:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:33:43 GMT
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
	-	`sha256:9b72f919a22e5f1b31390a0f742db984e758099222faeef5d5cd1ffde70c18ed`  
		Last Modified: Tue, 18 Jun 2019 23:09:24 GMT  
		Size: 164.6 MB (164638516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ad4188f679e2f5bdce7a957b1b6fa9adce980a9e3edf76f196e89649ebc894`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e8587e0477bad65e9c32034cfdd199dd0345512bcd1469554101bf6d073c00a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272063314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47113389262f9e64e935d6dda90444d9cca29ba4c5cec34728d69caa19603cdc`
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
# Tue, 18 Jun 2019 22:33:24 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:36:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:36:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:36:06 GMT
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
	-	`sha256:9b9e6653b7a7c3f42409c31559950a9f342aab13fda61b53159dd3c56da9de72`  
		Last Modified: Tue, 18 Jun 2019 23:17:52 GMT  
		Size: 173.9 MB (173913756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c7b27c39eb79b33f0316b89588247605fc805d786c955e6cb5d72f8460e80d`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
