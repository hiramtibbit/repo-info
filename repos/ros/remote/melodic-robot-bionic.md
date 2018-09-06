## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:780dd28388b40e2d97a2030fb23007cd20c2d81c65beb6b6cadf2d2f539f9c5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:ffe97408851dd9aa3ef9bb9e1c801a98cb261cea09e41c8146ca8354d5625d88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.5 MB (418538334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f9e5cfffedf72ca7da5eeb00d8bbbfec78502fce194cd5237c1c7190ffda97`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:34:31 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:35:01 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:35:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 05 Sep 2018 23:35:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 05 Sep 2018 23:35:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:35:49 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 23:35:49 GMT
ENV LC_ALL=C.UTF-8
# Wed, 05 Sep 2018 23:36:04 GMT
RUN rosdep init     && rosdep update
# Wed, 05 Sep 2018 23:36:04 GMT
ENV ROS_DISTRO=melodic
# Wed, 05 Sep 2018 23:39:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:39:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 05 Sep 2018 23:39:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 05 Sep 2018 23:39:06 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 23:40:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:40:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a7073207e1457dc71fe3f7e0915c7ecd41056000607b15bc945ca888339b77`  
		Last Modified: Wed, 05 Sep 2018 23:55:24 GMT  
		Size: 832.9 KB (832873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a050a9f3a709177a89bf954a4bfd68f5b887a5a06869f57b8077c656e9c18de`  
		Last Modified: Wed, 05 Sep 2018 23:55:28 GMT  
		Size: 14.6 MB (14611293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f8fbe102928b9e9dd294177d8595a9dbe483bf62c94664942f9526fb63b90`  
		Last Modified: Wed, 05 Sep 2018 23:56:42 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903842599dbd0b8a718c3c2dd8a97771526ebbfca0f8ad2d9978da877b43f29c`  
		Last Modified: Wed, 05 Sep 2018 23:56:45 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5dfb31cf982e404d2d670fc31bd1b981e366ebc50b1a2e1ece17af98d8642f`  
		Last Modified: Wed, 05 Sep 2018 23:56:55 GMT  
		Size: 49.4 MB (49387059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905726f5f614b9a29b6be9e2c3151e8bc46373a951e99e50b01473b57cd08100`  
		Last Modified: Wed, 05 Sep 2018 23:56:40 GMT  
		Size: 810.9 KB (810853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5231f4de57592882a9acf3b3fbf976ff53a242db34738fa18f99499577a3228`  
		Last Modified: Wed, 05 Sep 2018 23:57:36 GMT  
		Size: 215.4 MB (215368234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f6737c5a155156ccbcf7e279da3c9d4e7740139e690bb70644a1dde03cd8e1`  
		Last Modified: Wed, 05 Sep 2018 23:56:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a203ecef8e040938b964417be1deb6652a4860e9530f51cc17c7ceb1e7a27b`  
		Last Modified: Wed, 05 Sep 2018 23:58:08 GMT  
		Size: 68.2 MB (68171418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3787a744275d99c55d2a018fe027e454a6572fb36decf499e0dfc4fb483426bf`  
		Last Modified: Wed, 05 Sep 2018 23:58:36 GMT  
		Size: 37.6 MB (37589896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:9f479caa987ead10b73da01841a476c09318efe719ce7769976516daa36ea582
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.1 MB (368055849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8817ce2c834fae40f9b08528cd35e3f39ad1434b1f16675edfb1c01f76425554`
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
# Thu, 23 Aug 2018 15:11:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:77ab93dd183ed212309f902f6733b062aa4d310d0899cc07375800025f02f1b6`  
		Last Modified: Thu, 23 Aug 2018 15:30:13 GMT  
		Size: 33.2 MB (33219224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7a6c492f0b09175074624d2515067202a0a5ac6b515f9c0d81eddc170a7fea33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.3 MB (393290939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1313bc34ea76bac486b330aac563273e70605406c8721676451fd16e913cb43b`
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
# Fri, 24 Aug 2018 00:34:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d29f97cb9faf93ea5bfdb3c79c00714e3e08cc4a95d19be8b0bef611e85adfae`  
		Last Modified: Fri, 24 Aug 2018 01:20:46 GMT  
		Size: 35.4 MB (35371879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
