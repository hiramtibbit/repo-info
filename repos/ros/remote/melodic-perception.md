## `ros:melodic-perception`

```console
$ docker pull ros@sha256:36ed4d2806153b2c0ee5057d18c3f0f4c7c9a0afd53dbe9f48b225492084d404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:d579ad2f7f1a967cf8a98a7060dd05d1ac209a726125fb1c0b421a19562696d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **785.7 MB (785683623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea28313466c51898f31aefb2fae812920f784c097fc2e2f212c33e5357ce941`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 19 Oct 2018 00:47:54 GMT
ADD file:bcd068f67af2788dbd57729c0c8193f022ec5c37fefb8704390c59081152e6fc in / 
# Fri, 19 Oct 2018 00:47:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:47:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:47:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 02:07:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:07:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:39:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 19 Oct 2018 02:39:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 19 Oct 2018 02:40:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:40:49 GMT
ENV LANG=C.UTF-8
# Fri, 19 Oct 2018 02:40:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 19 Oct 2018 02:41:02 GMT
RUN rosdep init     && rosdep update
# Fri, 19 Oct 2018 02:41:02 GMT
ENV ROS_DISTRO=melodic
# Fri, 19 Oct 2018 02:45:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:45:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 19 Oct 2018 02:45:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 19 Oct 2018 02:45:22 GMT
CMD ["bash"]
# Fri, 19 Oct 2018 02:47:32 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:58:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:473ede7ed136b710ab2dd51579af038b7d00fbbf6a1790c6294c93666203c0a6`  
		Last Modified: Fri, 19 Oct 2018 00:24:53 GMT  
		Size: 32.0 MB (32034160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46b5fa4d940569e49988515c1ea0295f56d0a16228d8f854e27613f467ec892`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae3df89c92cb1d20e9c09f499e693d3a8a8cef161f7158f7a9a3b5d06e4ef2`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1eed27cadec5de8051d56697b0b67527e4076deedceefb41b7b2ea9b900459`  
		Last Modified: Fri, 19 Oct 2018 00:49:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709e1d4af038e3ecf139b4ac84b2d53b0e08fec17d8026707ce197ccf167c527`  
		Last Modified: Fri, 19 Oct 2018 02:20:10 GMT  
		Size: 833.2 KB (833187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afe1e87a6b59def408e6db21c5c058a0d545b1a067ca099dfb15f18a27aacff`  
		Last Modified: Fri, 19 Oct 2018 02:20:12 GMT  
		Size: 14.9 MB (14939232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9081e06768667ad742e1098a9851696f00f4e5e0c62eeccf573ae991a3ce8197`  
		Last Modified: Fri, 19 Oct 2018 03:13:24 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2c11a0bf6e507b432fecf06395c023d3ca5d9d194ce371f75bb4e8fb8bc4ce`  
		Last Modified: Fri, 19 Oct 2018 03:13:23 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5deece787233247a8f5535a761a4e99603eb794f8720c7b04efe32a95e38b5f9`  
		Last Modified: Fri, 19 Oct 2018 03:13:38 GMT  
		Size: 49.4 MB (49391535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f067fdeda0a0aeb8c60ddab26c2a6af9830f8a7c2cbd1b377690fc8fe8969720`  
		Last Modified: Fri, 19 Oct 2018 03:13:23 GMT  
		Size: 828.1 KB (828126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015e776748ff3027978ced4adf3ffe5512d733e2fd80f8869a7061e5073207f9`  
		Last Modified: Fri, 19 Oct 2018 03:14:23 GMT  
		Size: 260.8 MB (260796911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea0536394770b58b7cd8ed35c1c144a3b73d9389764065233587e6d14790914`  
		Last Modified: Fri, 19 Oct 2018 03:13:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a349cd2e30993f282461944b0bf0a18c4215345019c4493bdd65898e20aa887d`  
		Last Modified: Fri, 19 Oct 2018 03:15:16 GMT  
		Size: 68.2 MB (68171433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36754ad87323b32f9b3d167da26202a7b3cf339d303045794458408c5377f7ec`  
		Last Modified: Fri, 19 Oct 2018 03:17:59 GMT  
		Size: 358.7 MB (358680470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:72bdd0bc0029996150836567d57b9ca0f8179e16fc3d49d93da0ec3757231218
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.2 MB (688238482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaaec75ab920fd6a554fb8035697f700898de9227a308a3863ee9ce5725a4506`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 19 Oct 2018 12:27:59 GMT
ADD file:2cea81f148467da28c67eb5a52d47c6c05cdc44a8c91fa9c5b509f31842939e1 in / 
# Fri, 19 Oct 2018 12:28:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:28:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:28:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:28:04 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:27:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:28:22 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:28:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 19 Oct 2018 13:28:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 19 Oct 2018 13:29:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:29:29 GMT
ENV LANG=C.UTF-8
# Fri, 19 Oct 2018 13:29:30 GMT
ENV LC_ALL=C.UTF-8
# Fri, 19 Oct 2018 13:29:53 GMT
RUN rosdep init     && rosdep update
# Fri, 19 Oct 2018 13:29:57 GMT
ENV ROS_DISTRO=melodic
# Fri, 19 Oct 2018 13:33:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:33:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 19 Oct 2018 13:33:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 19 Oct 2018 13:33:41 GMT
CMD ["bash"]
# Fri, 19 Oct 2018 13:35:00 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:40:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:23025a23403ab115317132bd4ce2282a37103e3badb6f003949007c400c9d648`  
		Last Modified: Fri, 19 Oct 2018 12:30:18 GMT  
		Size: 27.4 MB (27396734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99727326c2f3e63be08e7cf6e87cb88af41f7fcc6d4d03b326cba116f1bb3da2`  
		Last Modified: Fri, 19 Oct 2018 12:30:10 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241db6d0729bfb3be0a6aae4cca0edeb72ce43ee2e9812c306762f89249209be`  
		Last Modified: Fri, 19 Oct 2018 12:30:10 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bb1a4b4b1e0196ebd9471b061206953e65a9862af42a38e824cae19e345392`  
		Last Modified: Fri, 19 Oct 2018 12:30:11 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b87388a705e45f1908fe201901ba7b759a1671391f0ec03566dec65b5f871ce`  
		Last Modified: Fri, 19 Oct 2018 13:53:07 GMT  
		Size: 833.1 KB (833144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d145a5034810d407a002061a6689101ae7f521443ecddacb4ded45077d8bb2`  
		Last Modified: Fri, 19 Oct 2018 13:53:10 GMT  
		Size: 13.2 MB (13230870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd0913bcab6e7bf81628f99ccbbb19f39c10fe45875953e4c40dd13e8227cae`  
		Last Modified: Fri, 19 Oct 2018 13:53:08 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a6ff941ef36e02c97ff8dd57cd7521f3e096053f3ec1aaee25fef7e937a890`  
		Last Modified: Fri, 19 Oct 2018 13:53:05 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de06668d4d0b12f74e968678730d65ab247a0f614659e73bafd10a6856ab208`  
		Last Modified: Fri, 19 Oct 2018 13:53:20 GMT  
		Size: 45.0 MB (45017149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bd7409b8b50c2844888a2d029bc3cc5fdd0e0c124f3655bf76bd3c191d74aa`  
		Last Modified: Fri, 19 Oct 2018 13:53:05 GMT  
		Size: 828.1 KB (828123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da70bd0a812dada38e7248bc78186c754bf2a4be9f5a71724ee3b237644756df`  
		Last Modified: Fri, 19 Oct 2018 13:54:08 GMT  
		Size: 232.2 MB (232185350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515d854332fe75ca2df1e1a4cf44a277cba6222029a3476b0f0961c06b40878b`  
		Last Modified: Fri, 19 Oct 2018 13:53:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945468883d277fe25f9e4ff40adbf8fca5edc707221c62332f72e2035327a71f`  
		Last Modified: Fri, 19 Oct 2018 13:54:41 GMT  
		Size: 60.0 MB (59985325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44fbb5e0abba6b7d1718ee59c43a7dbf350600829ab9cf767cea0849cecb0df`  
		Last Modified: Fri, 19 Oct 2018 13:57:38 GMT  
		Size: 308.8 MB (308753150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c2d3a05c4e09e08b5aca629e809c91852c7ca11894babeac3a03424dc4501569
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.5 MB (699468930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e8160d0430294616f025e6c1cd3c68d64916384d998320d532005ccd1375c6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 14:33:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 14:35:22 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 14:35:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 19 Oct 2018 14:35:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 19 Oct 2018 14:37:51 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 14:37:54 GMT
ENV LANG=C.UTF-8
# Fri, 19 Oct 2018 14:37:56 GMT
ENV LC_ALL=C.UTF-8
# Fri, 19 Oct 2018 14:38:39 GMT
RUN rosdep init     && rosdep update
# Fri, 19 Oct 2018 14:38:40 GMT
ENV ROS_DISTRO=melodic
# Fri, 19 Oct 2018 14:48:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 14:48:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 19 Oct 2018 14:48:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 19 Oct 2018 14:48:47 GMT
CMD ["bash"]
# Fri, 19 Oct 2018 14:51:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 15:13:25 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54633e5284eed4695397b3148aaff8d2d4a5e3fce9118dfe99657fff3bf588b5`  
		Last Modified: Fri, 19 Oct 2018 15:30:21 GMT  
		Size: 833.0 KB (832998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69f6f5999a5c7d3f4bd568181f1ca1d37b4fcb5a49eff064e3722e2ed6c040e`  
		Last Modified: Fri, 19 Oct 2018 15:30:27 GMT  
		Size: 13.8 MB (13823729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1d097c772d5f43e6a2896d3adce59b3094a36f40be164d1c1f9faab85a4586`  
		Last Modified: Fri, 19 Oct 2018 15:30:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516b1b2b478645a51df9d17150d227c9b75eeea2e4ef8fd4c8c4a92b8a4aaca3`  
		Last Modified: Fri, 19 Oct 2018 15:30:15 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e227fc3bb88b6ed0cdd978500c2369845a77453dafac3420620ce138d839dbbb`  
		Last Modified: Fri, 19 Oct 2018 15:30:39 GMT  
		Size: 47.6 MB (47611551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e0d09b51297af470a85fc7bbe2fac5494df605fd85be725c12f2de9b593363`  
		Last Modified: Fri, 19 Oct 2018 15:30:18 GMT  
		Size: 828.1 KB (828132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d62e0e3d12789858e38af9d49ffea8c172454463a2bd3dfed3ea76d8c00496`  
		Last Modified: Fri, 19 Oct 2018 15:31:39 GMT  
		Size: 202.8 MB (202818544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e384e2b86f50f83f8e6308a0519bbd2aa86fa27699c198e97bd56846447a4cc6`  
		Last Modified: Fri, 19 Oct 2018 15:30:15 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa23be7653f3df19b088346d4b32b991aab9282dd3cfcc2d836728fab68ccbb`  
		Last Modified: Fri, 19 Oct 2018 15:32:35 GMT  
		Size: 63.4 MB (63390471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29996f2f82e2f47009029e6a427359d4198c67b0857474cb979211e3671d541c`  
		Last Modified: Fri, 19 Oct 2018 15:36:19 GMT  
		Size: 341.3 MB (341321684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
