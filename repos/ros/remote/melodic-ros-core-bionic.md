## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:57f39ea8c5a41f362555ea9b3cd676b1d1591ab6872022722f49854d3dcec66a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:1b7e7a54b27400a04dd5d7bb1ff1a7550536b65c4c948f7ffe4f127a269f423a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.5 MB (312483390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56161463aa0c77c532e4173f57b2bd5400484a99e535e16077470d53f9cb151a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 08:36:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:36:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:37:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 08:37:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 08:38:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:38:21 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:38:21 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 08:38:35 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 08:38:35 GMT
ENV ROS_DISTRO=melodic
# Tue, 17 Jul 2018 08:43:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:43:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 08:43:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 08:43:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e754e84cb6b52f34f65a3a44c84d55aa51deb1773eaa0454af6befb769498104`  
		Last Modified: Tue, 17 Jul 2018 09:38:20 GMT  
		Size: 833.0 KB (833019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c395bb24e93d10de44765593677038b83adf49292b7b9a5433c401de3f6fdda`  
		Last Modified: Tue, 17 Jul 2018 09:38:25 GMT  
		Size: 14.6 MB (14611570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2c98e9661f01ca0b5f0ab57ba35197c8e5ca2b35b85f752f746e40fc0dc41a`  
		Last Modified: Tue, 17 Jul 2018 09:38:19 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95d8819ab19fc5135800a308efd1fb9f93feeb31b34da6ea0e88623f0d2db36`  
		Last Modified: Tue, 17 Jul 2018 09:38:16 GMT  
		Size: 5.4 KB (5411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844f5ab1206952c64615b3ad52efa6741d288abb0738f1a20f0699cfda9699f8`  
		Last Modified: Tue, 17 Jul 2018 09:38:39 GMT  
		Size: 49.4 MB (49390153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4956bf0141ac10b7cfd0ca75d302e41c155fb50f97ca67b9f8d4f1a59ab3fe9b`  
		Last Modified: Tue, 17 Jul 2018 09:38:17 GMT  
		Size: 794.1 KB (794116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adf57e0b6eb011222ae0af93f7f63119a610e950a6ff9e63c5ca09bb66c98ca`  
		Last Modified: Tue, 17 Jul 2018 09:39:48 GMT  
		Size: 215.3 MB (215346384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b47f23d1c144020a1d36928b299bca180993a3de595d726401f79edce97745`  
		Last Modified: Tue, 17 Jul 2018 09:38:16 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:17d6a8ba37fd209fc932c25c4f9aaac80f605f051cf7e2858a50cd9f7f773831
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274626644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea5b904e4d966ba23b48d5f555f0f81a2a89178d284a1b8891c59cc2b7bef29`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 12:16:08 GMT
ADD file:f4d27a69bc5473e5f5eb5dad6fc8826911740b7c04ffa555c991446ec6c287fe in / 
# Wed, 06 Jun 2018 12:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 12:16:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:16:12 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 12:16:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 12:16:13 GMT
CMD ["/bin/bash"]
# Tue, 12 Jun 2018 13:52:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 13:54:29 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 13:54:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 13:54:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 13:58:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 13:58:16 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 13:58:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 13:58:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 13:58:40 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 14:11:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 14:11:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 14:11:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 14:11:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:253c7c36e8ff222be6ae46b8a8b0274cacd471a9539af3178155497f98bb6f2f`  
		Last Modified: Wed, 06 Jun 2018 12:22:18 GMT  
		Size: 26.7 MB (26734895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7c768a65c7849ed925f8924b6da2470aa34ca22e1d70325c112d1139fae364`  
		Last Modified: Wed, 06 Jun 2018 12:22:12 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8d0d2ce80ebc3eb68df32d260e990ce42538e7feec69b9947bf18a2869f13a`  
		Last Modified: Wed, 06 Jun 2018 12:22:10 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28492cd57e466858970f9c49b2f9ac45b8a99b1895ca1edd4781eceeaf659c94`  
		Last Modified: Wed, 06 Jun 2018 12:22:10 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfd257d89dc79a9116e3059d142e75d882a9312878d0ed63afa9568a3073287`  
		Last Modified: Wed, 06 Jun 2018 12:22:10 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22565ca561f06d621e606476a307d5070c9713b1491497d6f975d9ae408b0540`  
		Last Modified: Tue, 12 Jun 2018 14:43:33 GMT  
		Size: 831.9 KB (831867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0aa4f07722ee1e37e74079219bb63846d1cda7749860231f006eb39a072d3cd`  
		Last Modified: Tue, 12 Jun 2018 14:43:36 GMT  
		Size: 13.2 MB (13208193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48741555dea365ccfbad023c0baaedaef74ac0613f8eb4675ffd81426d1bc48e`  
		Last Modified: Tue, 12 Jun 2018 14:43:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9629f05f754b23b014b96c300e2a600c0925eeaebacb4c1db89791b5928b4546`  
		Last Modified: Tue, 12 Jun 2018 14:43:30 GMT  
		Size: 5.4 KB (5447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c91e8d954ff4bdce24bcfc086a02be9ca1448778e1d66ce3e1bb75d71e71b2`  
		Last Modified: Tue, 12 Jun 2018 14:43:48 GMT  
		Size: 45.0 MB (45009475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50da0cc71913c2b2f1d262881357d41e6731abbcbbee963798b0ce9f455d6ce2`  
		Last Modified: Tue, 12 Jun 2018 14:43:31 GMT  
		Size: 868.5 KB (868465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addd3c471874ee323a543b5d8fa8b31ef1255389dd62fd19393a34ab36fbd04d`  
		Last Modified: Tue, 12 Jun 2018 14:44:27 GMT  
		Size: 188.0 MB (187964366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbf7e931cf2db957ba6ab41eb8e2561af0eb8cd987c93c7e2ca25da442d9cef`  
		Last Modified: Tue, 12 Jun 2018 14:43:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:afff39aa00d581457f1d566b320cbc019d4a6648a58381829331a44782830ae1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.4 MB (294356522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc7773f2c8b92f068723f77477f7ac78e98fa661d30d2fd9f9427b78996cbf1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:15:02 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:25:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:25:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 12:25:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 12:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:30:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 12:30:06 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 12:30:44 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 12:30:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 12:56:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:56:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 12:56:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 12:56:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bca181cf195a49efa74526992d33ea0b897c861356478d8ffa8f2f2722b8ef9`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 831.7 KB (831653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b40a7cf8c92f732a98ed0c91a8f376ac5d026966bb62ae8a3cc31950149a865`  
		Last Modified: Tue, 12 Jun 2018 14:42:25 GMT  
		Size: 14.0 MB (14025602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64161ea3457828bf106e2a41ea1bdec4fa57b0d91be42273e1ff8dffd8df257e`  
		Last Modified: Tue, 12 Jun 2018 14:42:15 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d133e469e364e410d95018672de36eb9eeb81c3fe907432b2990ebe279c415e`  
		Last Modified: Tue, 12 Jun 2018 14:42:14 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388e22ee416c388786a3b452453ecba80d4276f795882240d8bb27e353e670`  
		Last Modified: Tue, 12 Jun 2018 14:42:39 GMT  
		Size: 47.6 MB (47598703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356cfd429774875db9a2a54f6c8cb0febf375f1bb762af541aeeff987d1ebf36`  
		Last Modified: Tue, 12 Jun 2018 14:42:14 GMT  
		Size: 868.4 KB (868392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f364401d16f83e21dbe354babf5043963ede9bb2c4fc08f8937eeac914894bb2`  
		Last Modified: Tue, 12 Jun 2018 14:43:39 GMT  
		Size: 202.8 MB (202839689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6d6fdd8ae904e2c320dbe80b81324367e33ec71255263006d6912b4053b6d4`  
		Last Modified: Tue, 12 Jun 2018 14:42:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
