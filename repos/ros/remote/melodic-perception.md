## `ros:melodic-perception`

```console
$ docker pull ros@sha256:9cb2be7c8e0656259e37ba872094e32d963dc2cb87c3a21d37e3f3b50118bb3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:81093f571b1feb2753e42fe48d41bd22006ecbaf1dc6da98b6dcef784da5e377
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.6 MB (739613513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e82669b4ccc050ca785f8c783d85b02db5bc353c738577cef0b4e83b774ca6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:28:39 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 22 Aug 2018 17:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:28:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:28:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 07:30:55 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 07:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 07:31:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 05 Sep 2018 07:31:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 05 Sep 2018 07:32:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 07:32:33 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 07:32:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 05 Sep 2018 07:32:56 GMT
RUN rosdep init     && rosdep update
# Wed, 05 Sep 2018 07:32:56 GMT
ENV ROS_DISTRO=melodic
# Wed, 05 Sep 2018 07:35:46 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 07:35:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 05 Sep 2018 07:35:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 05 Sep 2018 07:35:47 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 07:37:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 07:43:31 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ebc019eb4e2bbd192e61bce91038048924216d72dfe6ac3255322caaeb70144`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac0825f7ffbea2ddf119026b0d6c4c453dfa38edb5c2abbe59bdba6ffdb3b9f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0bb65d1bfb978cd646dcd653164f74b7e8656aa1b3a87657b8d244b56d324`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3b655c7f887451d42e45a04c2d13478171e4d451419bc8cf76c635f509532f`  
		Last Modified: Wed, 22 Aug 2018 17:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1036c7966ac6573c88a789cf5f8371041f2194864e18065897d605c685da0aac`  
		Last Modified: Wed, 05 Sep 2018 08:06:06 GMT  
		Size: 832.9 KB (832883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6db3fde6c42f97b57be89071562af0b2a3a2c6edbf0d4fbba4ebe00006d4df`  
		Last Modified: Wed, 05 Sep 2018 08:06:11 GMT  
		Size: 14.6 MB (14611586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6c6d9d12686f32f6d77a6e1e84964aeb14f73454b9b772e21c05b240048c8d`  
		Last Modified: Wed, 05 Sep 2018 08:06:05 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b4ed3fcb18ba895f635f0c783af9a47b1fd5120fef7aafeff3c42bd70bad13`  
		Last Modified: Wed, 05 Sep 2018 08:06:04 GMT  
		Size: 5.4 KB (5413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b9c59a0bbbd8b80b7fab691a0e111ea62227e5cdb0462e4fb54b77f26115cf`  
		Last Modified: Wed, 05 Sep 2018 08:06:21 GMT  
		Size: 49.4 MB (49387274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a4c902fb00288b81c1664e727a19e62f9093c9ed76920e50ea5a74b1689276`  
		Last Modified: Wed, 05 Sep 2018 08:06:04 GMT  
		Size: 809.8 KB (809752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26df54e9d70e86e9a65d8eb7c84bc4124571bbbeeba9a14187221408f84a2be5`  
		Last Modified: Wed, 05 Sep 2018 08:06:59 GMT  
		Size: 215.4 MB (215372360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563fac294d417a01d3ae6d845ffb6d2b65ab7e95b466fed246f96d019930fc5f`  
		Last Modified: Wed, 05 Sep 2018 08:06:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602d543c6c8b6f849db3c12b7b9b3dcd346f9033eef3b651b83dd824f5afee89`  
		Last Modified: Wed, 05 Sep 2018 08:07:29 GMT  
		Size: 68.2 MB (68171488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086bbaa874ace1d62a8d10d0866c83cd3b5f65561cc3c9bbc6c1cc3c0819ab0f`  
		Last Modified: Wed, 05 Sep 2018 08:10:00 GMT  
		Size: 358.7 MB (358661473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:87550b6ef32b96f02910c9053d339324d7f676c51220069a1b60d4419f14c5c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **643.6 MB (643562918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6963bfb9e1a36b257cfad0de7f06bedd62204082935e541570d2599be99740b2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 23 Aug 2018 13:29:21 GMT
ADD file:f15cbff8d74891f1401f6e7f27502f7bf45c8a4c30054a8c23224b3e9629314d in / 
# Thu, 23 Aug 2018 13:29:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 13:29:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 13:29:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 13:29:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 13:29:25 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:00:03 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:01:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:01:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 23 Aug 2018 15:01:10 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 23 Aug 2018 15:02:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:02:48 GMT
ENV LANG=C.UTF-8
# Thu, 23 Aug 2018 15:02:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 23 Aug 2018 15:03:12 GMT
RUN rosdep init     && rosdep update
# Thu, 23 Aug 2018 15:03:12 GMT
ENV ROS_DISTRO=melodic
# Thu, 23 Aug 2018 15:07:30 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:07:32 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 23 Aug 2018 15:07:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 23 Aug 2018 15:07:32 GMT
CMD ["bash"]
# Thu, 23 Aug 2018 15:09:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:15:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bca6ec5b89c4a31091b27541e4838ef3a204105cebb544ce3600b2584811540e`  
		Last Modified: Thu, 23 Aug 2018 13:30:55 GMT  
		Size: 27.2 MB (27167440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadf4d1c3fab0bf807227d06f578e81cbc58c72f389da721bdf67e95c4e23a6e`  
		Last Modified: Thu, 23 Aug 2018 13:30:48 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ba9e49ecf13fa83d77d03bac48fbd2d506ca32d3d581df8995e1024f085203`  
		Last Modified: Thu, 23 Aug 2018 13:30:48 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29fd3e166029462053d78de0dd5ef15dfbb542ff4b0374c82ad3281bb49231d`  
		Last Modified: Thu, 23 Aug 2018 13:30:48 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a08f32902ceef3d4e1453674ac9c0fa5f849aaeaefcff172299842d95f88207`  
		Last Modified: Thu, 23 Aug 2018 13:30:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91d3be6b1c3c3331f90301bcadfa87eaf7e71d73e36898d23dd49ebd38db374`  
		Last Modified: Thu, 23 Aug 2018 15:28:05 GMT  
		Size: 832.9 KB (832909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4068627e94dcfa3efe79a7b60af7fa71485740297caa916b11ab09a0f0b7ed9a`  
		Last Modified: Thu, 23 Aug 2018 15:28:10 GMT  
		Size: 13.0 MB (13024599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac082f38158c1e917b18b029489f5977ceb815da69d7b811a51274e6ef5211b2`  
		Last Modified: Thu, 23 Aug 2018 15:28:04 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bee2e2c9b702f3c01c5c49b3af420a699b310e23f32a43ae1e7cca82ff0f79`  
		Last Modified: Thu, 23 Aug 2018 15:28:03 GMT  
		Size: 5.4 KB (5445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea709749df23ecab5e5cc22e66309a6c600d12e92ab3cfb952c7b92d73383e6`  
		Last Modified: Thu, 23 Aug 2018 15:28:19 GMT  
		Size: 45.0 MB (45018440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780ef910823804c74f1fea145d8333472b481246f64b130b0d10ddbe8b81e203`  
		Last Modified: Thu, 23 Aug 2018 15:28:03 GMT  
		Size: 801.4 KB (801424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0a2982d97aa8e254ba4c1c154cb34c888cb845951fabc3c632ef72614043ef`  
		Last Modified: Thu, 23 Aug 2018 15:28:58 GMT  
		Size: 188.0 MB (187998729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db319aaab3effb5fc15d096c54158aa825847c78244b9fb7b70905a40a0e9e7b`  
		Last Modified: Thu, 23 Aug 2018 15:28:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cf0da8bf52061b535db72b31c1fcc8136042ef24dd3d53a2252fe5b4d5547b`  
		Last Modified: Thu, 23 Aug 2018 15:29:32 GMT  
		Size: 60.0 MB (59983718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d626cd2425b65c37499ac6021fbf6c818cb6c51da15e2d458d098aa8ded7ea`  
		Last Modified: Thu, 23 Aug 2018 15:31:58 GMT  
		Size: 308.7 MB (308726293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ec6923ac6a25d09b58665b1519b3ad2abacfa0abd176132f8e2572dbc26115d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.2 MB (699175579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2ba294ea0218a47ca225109dc071999a22033ed38d9fbea195ea4ef904ab46`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Fri, 24 Aug 2018 00:06:08 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 24 Aug 2018 00:07:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 24 Aug 2018 00:07:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 24 Aug 2018 00:07:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 24 Aug 2018 00:09:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 24 Aug 2018 00:09:11 GMT
ENV LANG=C.UTF-8
# Fri, 24 Aug 2018 00:09:15 GMT
ENV LC_ALL=C.UTF-8
# Fri, 24 Aug 2018 00:10:04 GMT
RUN rosdep init     && rosdep update
# Fri, 24 Aug 2018 00:10:08 GMT
ENV ROS_DISTRO=melodic
# Fri, 24 Aug 2018 00:26:00 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 24 Aug 2018 00:26:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 24 Aug 2018 00:26:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 24 Aug 2018 00:26:23 GMT
CMD ["bash"]
# Fri, 24 Aug 2018 00:31:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 24 Aug 2018 00:53:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29125b6cd4e060643d3e1326716ce6bde115f5b68d33b4c0af262a3e112580aa`  
		Last Modified: Fri, 24 Aug 2018 01:14:32 GMT  
		Size: 832.9 KB (832920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef79402083e07bfa267f3c1f1b9f415d2f9c081818735d74903a004f5c8e104c`  
		Last Modified: Fri, 24 Aug 2018 01:14:39 GMT  
		Size: 13.8 MB (13820745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb19c108b9e2e0633c7594bb34577ab9e16fbaeaef3b2a2bb57fccf151dac3b`  
		Last Modified: Fri, 24 Aug 2018 01:14:26 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e83626dc5ebb7be8998db10db3bed9600c5bd30e604c7f0cc2776f605037ab`  
		Last Modified: Fri, 24 Aug 2018 01:14:24 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e105fe2452bb0aa3d54f47f35802c81143206c9bbdcd09b8de3ef40e6428a93d`  
		Last Modified: Fri, 24 Aug 2018 01:15:02 GMT  
		Size: 47.6 MB (47609104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe75a50f69c1d0fb4705b56243f9573c2f5fc8cce641f3746ea0475d73810b`  
		Last Modified: Fri, 24 Aug 2018 01:14:24 GMT  
		Size: 801.5 KB (801476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fe230efd015c8ec4c6331585edb81d99ffedb0d04c577493e69a769cdc6a2b`  
		Last Modified: Fri, 24 Aug 2018 01:16:36 GMT  
		Size: 202.8 MB (202844539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9232ae664e3a4a384beb92e5b12dea3927531490d1627df7cd3676faa3f3aed`  
		Last Modified: Fri, 24 Aug 2018 01:14:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc3d17cf233762d738892920497583faf7da432a39bc3d4d260d9f680f19200`  
		Last Modified: Fri, 24 Aug 2018 01:18:43 GMT  
		Size: 63.4 MB (63379916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0d40e25af4b0060ffa268554f2693bddb3422cae21cd27dad4725d85e15fa2`  
		Last Modified: Fri, 24 Aug 2018 01:24:51 GMT  
		Size: 341.3 MB (341256519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
