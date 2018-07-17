## `ros:melodic-robot`

```console
$ docker pull ros@sha256:7499b38fcbff2ded6eaedb8615bde3ebb158dd303a347fcf583d40a6b6095c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot` - linux; amd64

```console
$ docker pull ros@sha256:518d0e0692f12227d21a4109f7c57b4aff988246c2666dc82b6db248544145da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.2 MB (418243859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17663eb3a51afee81ef2da00b31aa94efbc13d6f85ada6966eaccd7804662180`
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
# Tue, 17 Jul 2018 08:45:24 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:47:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:b808f9702383043dd3759b41370621a357df4f78b28b033f2ae0e2c7fb2ab055`  
		Last Modified: Tue, 17 Jul 2018 09:40:57 GMT  
		Size: 68.2 MB (68172657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b485bafb4c6e77b481e0df5aafbd9be050d4b661443e9e09439f280a5360b24`  
		Last Modified: Tue, 17 Jul 2018 09:42:53 GMT  
		Size: 37.6 MB (37587812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:a0a61ad6acdc2758f1e0970888f8017e06bdd9ef2ac7ea5db2253da9a53d89b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.8 MB (367769625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8473ee36aaaba71f84227510f96401579b27bfddba4656754ee9b8118f3066`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:21:57 GMT
ADD file:aeb281d640e05709f27a7bd05b850d1f13602ab63c3182df6ecbd72a215caa59 in / 
# Tue, 17 Jul 2018 13:21:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:22:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:22:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:22:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:22:03 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 17:37:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:38:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:38:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 17:38:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 17:38:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:38:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:38:55 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 17:39:19 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 17:39:19 GMT
ENV ROS_DISTRO=melodic
# Tue, 17 Jul 2018 17:41:05 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:41:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 17:41:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 17:41:15 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 17:42:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:42:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d81ad7e8dedca0217770c02345ac2ec31105eb6a716cb40340365bf3303958ba`  
		Last Modified: Tue, 17 Jul 2018 13:24:44 GMT  
		Size: 26.9 MB (26937866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc32849e56f09e1df99922dbe9a1dc567c3ca76ce4e1d62125e8777bc177ec6b`  
		Last Modified: Tue, 17 Jul 2018 13:24:37 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1a7c883e79bb9ad4f98b1fb3a1328496596cafd31e38da455f4f7a8c72cde7`  
		Last Modified: Tue, 17 Jul 2018 13:24:37 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f11fb189b434d1140a14208c8be40006d7095eed8b33992ae39f66cb4fe79fc`  
		Last Modified: Tue, 17 Jul 2018 13:24:37 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa5deb5232bd1ced8a51793e85d06e1977d36b1773586481c081af034e7adf6`  
		Last Modified: Tue, 17 Jul 2018 13:24:37 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a80ccb68aca7c94c82d776ba0129b74f9277d221450b3ee608856b77157440`  
		Last Modified: Tue, 17 Jul 2018 18:06:02 GMT  
		Size: 832.7 KB (832711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6835c60d04da379e57abf5144069f348f9ea7782eea765e1ca5bf595852ce26`  
		Last Modified: Tue, 17 Jul 2018 18:06:07 GMT  
		Size: 13.0 MB (13024340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f56e2d383e7466a560f726ccf3e486b28096c0464df78efbf32d052368e6fc`  
		Last Modified: Tue, 17 Jul 2018 18:05:59 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3efa492df635ba64f7fc71c9c6baf7f9fe44fd1c587762332eb08f26872cea3`  
		Last Modified: Tue, 17 Jul 2018 18:05:58 GMT  
		Size: 5.4 KB (5446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1b52a5ba6a8c24a52c869ddc58654baaf8bf30f4a1743e88f84c7e6c66fd42`  
		Last Modified: Tue, 17 Jul 2018 18:06:21 GMT  
		Size: 45.0 MB (45000554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b89e223a28f15a44b3192b81c7354be1ced5546692a8cd961b54b3d2659179`  
		Last Modified: Tue, 17 Jul 2018 18:05:59 GMT  
		Size: 794.7 KB (794666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e96d636d1722e12e5a64cfe8daa51415361aa8905e4ec6291c24ea45c67654e`  
		Last Modified: Tue, 17 Jul 2018 18:07:03 GMT  
		Size: 188.0 MB (187970997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd103bfebdd6a4855fddf02cca86951f8eebb6cb6726bc8018f5d066db872310`  
		Last Modified: Tue, 17 Jul 2018 18:05:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cab9792d0ba1bb4b48afc88da22b2121ae422073fe39445d733ff36c2bab9d3`  
		Last Modified: Tue, 17 Jul 2018 18:07:44 GMT  
		Size: 60.0 MB (59982308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78839836c5d5a91c5764a63677cdb4f4c80524e63e0c082adaa804551f44bac4`  
		Last Modified: Tue, 17 Jul 2018 18:09:37 GMT  
		Size: 33.2 MB (33216805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f6039eb36d9c40642819b64c38b545bbdeada3ad75c3e0dc80a77b6cfdd5cfb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.1 MB (393113108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40eb713f8bc239c3b1be421788a4dd687de0a062f54d1ad290ee4803f040064d`
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
# Tue, 12 Jun 2018 13:04:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 13:11:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:8809f12ace9ed052a72b917f094ff97b30325959a05d469faf8fc1d8c12e72d7`  
		Last Modified: Tue, 12 Jun 2018 14:44:24 GMT  
		Size: 63.4 MB (63383073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735626fa3d218399415639f5986257674fd00e135fa33ddc661a74841f074e8f`  
		Last Modified: Tue, 12 Jun 2018 14:45:15 GMT  
		Size: 35.4 MB (35373513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
