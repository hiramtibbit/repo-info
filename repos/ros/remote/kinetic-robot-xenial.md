## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:774714c2310b05d00763b1ba039499a02bf6ecec0b8e7bd7fe5f3a0ccb01a843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:19178b690e3d83aaed8aa1a74067c483adcb481d6729db1db7efb4912e11152a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.3 MB (488316896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8a3294dffcdb2180f2fc6e30780bd5a4272ea5064d95d491d1cb5665a7fd16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:57:21 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:21:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 19 Oct 2018 02:21:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 19 Oct 2018 02:22:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:22:12 GMT
ENV LANG=C.UTF-8
# Fri, 19 Oct 2018 02:22:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 19 Oct 2018 02:22:28 GMT
RUN rosdep init     && rosdep update
# Fri, 19 Oct 2018 02:22:28 GMT
ENV ROS_DISTRO=kinetic
# Fri, 19 Oct 2018 02:24:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:24:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 19 Oct 2018 02:24:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 19 Oct 2018 02:24:28 GMT
CMD ["bash"]
# Fri, 19 Oct 2018 02:25:51 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:27:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688e54c7beef798f364782f71d7cdfc619b89e9c896278c5511c257a15150387`  
		Last Modified: Fri, 19 Oct 2018 02:13:11 GMT  
		Size: 16.7 MB (16658418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e9be0dc36435f5eaba87f45dbeb90db505fc1f4b73d96b112a56029119ee60`  
		Last Modified: Fri, 19 Oct 2018 03:03:00 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95852460c6162b14146fc988a4f375c57ef4e5c0840d23a4702ba12f300ef8e`  
		Last Modified: Fri, 19 Oct 2018 03:02:59 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594f6cf6e786a9c63fc90d4689ff2277a898f1ea646ff04b2cecb288771c49b5`  
		Last Modified: Fri, 19 Oct 2018 03:03:15 GMT  
		Size: 44.9 MB (44874083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcddd5ec5bf7d41e872f831e1055a6d35f55eb81c6141ba7b19e5a336499915e`  
		Last Modified: Fri, 19 Oct 2018 03:02:59 GMT  
		Size: 828.1 KB (828127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d7ced7de10347e97ea47053a1ebce59714a7a89760feb852529c024c0f1d11`  
		Last Modified: Fri, 19 Oct 2018 03:03:51 GMT  
		Size: 193.3 MB (193251962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af482589154315dd23c52214fffe14a075ea7b23556fc4088acf635e7b078c`  
		Last Modified: Fri, 19 Oct 2018 03:02:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a096d1c4cb0a3d37a3f872bb79b82ee9b0e1c656c7a0c62d747cefbe174ab897`  
		Last Modified: Fri, 19 Oct 2018 03:04:38 GMT  
		Size: 85.7 MB (85693293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2eb21564f264130d5b3041f66ec857a5fdba09531c3bfbb7e3d00cda0b3f6f`  
		Last Modified: Fri, 19 Oct 2018 03:05:56 GMT  
		Size: 103.6 MB (103637735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:0bf8b5912737da8c06985d4d47832dfa9b09aa9dc16c32acfeb1363794d92737
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426164396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39cb3abe21e02922c716e7906913d3802a312c1c0048de2d6463adc2019d70c1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 19 Oct 2018 12:29:52 GMT
ADD file:c4b4eb4a1dc7776d33a1fd00d06b4e3af0fc41110484f0b4b83e6d9c11bf8f9f in / 
# Fri, 19 Oct 2018 12:29:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:29:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:29:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:29:57 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:04:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:04:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 19 Oct 2018 13:04:44 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 19 Oct 2018 13:05:40 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:05:42 GMT
ENV LANG=C.UTF-8
# Fri, 19 Oct 2018 13:05:42 GMT
ENV LC_ALL=C.UTF-8
# Fri, 19 Oct 2018 13:06:05 GMT
RUN rosdep init     && rosdep update
# Fri, 19 Oct 2018 13:06:10 GMT
ENV ROS_DISTRO=kinetic
# Fri, 19 Oct 2018 13:08:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:08:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 19 Oct 2018 13:08:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 19 Oct 2018 13:08:57 GMT
CMD ["bash"]
# Fri, 19 Oct 2018 13:10:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:12:36 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:dbf9133eddb2e9c9699031104085d378764b6e60fcc046ce6293dd1ec5e33244`  
		Last Modified: Fri, 19 Oct 2018 12:32:16 GMT  
		Size: 38.3 MB (38348531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71ea1c6e754c21f1f61c388431a7fbf3abd63146382ec0b0734ceaa67fcf6b2`  
		Last Modified: Fri, 19 Oct 2018 12:32:05 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56aeef54f57e991a04e31d3fc21370bfb2b04bdb4340b22d474f4a7f0d97080`  
		Last Modified: Fri, 19 Oct 2018 12:32:05 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc13104654667fd3798eff8b920776a99b4d0a7c428845c642e6b820744eb8d`  
		Last Modified: Fri, 19 Oct 2018 12:32:05 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc520710ec1c893d34a393e5f60b317ec0248622b230f0d42d5a1cbb3d41b30`  
		Last Modified: Fri, 19 Oct 2018 13:44:38 GMT  
		Size: 15.0 MB (14953085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb794596ceee85cd78396cc73c1c92477da44c4a2e878319e98a82bad21c84f2`  
		Last Modified: Fri, 19 Oct 2018 13:44:32 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4579124a9138b300c565215c2d9c295bfd5c20bbf31fa5fc71a1b64a8ee14b99`  
		Last Modified: Fri, 19 Oct 2018 13:44:31 GMT  
		Size: 5.5 KB (5535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48b4a690c1180a166f76f36986473bf3bc832bf8e42f9fd314964dd4697b3bf`  
		Last Modified: Fri, 19 Oct 2018 13:44:46 GMT  
		Size: 40.9 MB (40930510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03340f312e2f4458087b5c0901d3152c8f4926a8345ae4814387409216c2a67`  
		Last Modified: Fri, 19 Oct 2018 13:44:31 GMT  
		Size: 828.1 KB (828111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08aa02a8bc4adaebcd74f4d92b3cf33ccff0f2e2db95d591076d7d31e12e55ac`  
		Last Modified: Fri, 19 Oct 2018 13:45:20 GMT  
		Size: 164.6 MB (164581773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b48f5a5712b0fbb2157eda505f2252a12207369656ddb2c6f2c1b2b5409ea16`  
		Last Modified: Fri, 19 Oct 2018 13:44:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59b6e337e8779344044423e852c78bc5f94cebf51b13ba75904aab5442e9a3b`  
		Last Modified: Fri, 19 Oct 2018 13:45:58 GMT  
		Size: 76.5 MB (76468968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb83b0409b5d3658d8e9513190b272da56a54b559509a86fc43a6311552c15b3`  
		Last Modified: Fri, 19 Oct 2018 13:46:47 GMT  
		Size: 90.0 MB (90032976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:113eb5a33ed2866876dbab14767cd565a402617ad59af08ca5810461caef3917
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443882562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22abb1673a582f5fdfba77caf5a76aa1012429cdcad554a2412d137b0b331389`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 19 Oct 2018 11:22:58 GMT
ADD file:9770ac4ecb41798c5999796e611468c62bf20e585daf48667db9f39757ec5ad9 in / 
# Fri, 19 Oct 2018 11:23:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:23:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:23:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:23:08 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:21:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:21:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 19 Oct 2018 13:21:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 19 Oct 2018 13:23:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:23:47 GMT
ENV LANG=C.UTF-8
# Fri, 19 Oct 2018 13:23:48 GMT
ENV LC_ALL=C.UTF-8
# Fri, 19 Oct 2018 13:24:33 GMT
RUN rosdep init     && rosdep update
# Fri, 19 Oct 2018 13:24:34 GMT
ENV ROS_DISTRO=kinetic
# Fri, 19 Oct 2018 13:32:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:32:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 19 Oct 2018 13:32:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 19 Oct 2018 13:32:37 GMT
CMD ["bash"]
# Fri, 19 Oct 2018 13:38:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:43:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e4852cc2dcfa698a092467d4b0a8a4f34f9ac6d20b64dbd4a8be0a764f29564d`  
		Last Modified: Fri, 05 Oct 2018 22:11:51 GMT  
		Size: 39.4 MB (39432395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf455d9dd16d488d1c230ceb231351c1abd0733011acf191b6a63339e7b5cfca`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abc38e50c7444b0314ce04d70d73a1bd3733e860f550ad9edd236fd650769c0`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cecbdd5ae3d455dc9ef1c1be196ac6ef7c70e3062656dadcec822910202d798`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17e1806177afd680da2d33e020a70d58e9f44352eb430f2a3bf0f88c2cdbd4d`  
		Last Modified: Fri, 19 Oct 2018 15:15:07 GMT  
		Size: 15.0 MB (15047404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043a8b02b9557609ef15b061dce25d26b6687bd7d83499666549dd9b344a995b`  
		Last Modified: Fri, 19 Oct 2018 15:14:20 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d6e116f9e3854be3e3a088a7d6bb71a5666da60ff97ee45fbdcf26ef9e3772`  
		Last Modified: Fri, 19 Oct 2018 15:14:17 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3d583899bd2b75f5ab3d460a8331eeb0b47b4e5f92f39633c1e36389f0d7ff`  
		Last Modified: Fri, 19 Oct 2018 15:15:50 GMT  
		Size: 42.8 MB (42803517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0de7905a2aaeddd64e61e916031f7a4a972833b850a6a72f4ad73b635158db`  
		Last Modified: Fri, 19 Oct 2018 15:14:19 GMT  
		Size: 828.1 KB (828137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed8e4101927abb4f3ccc1abcf1e41f980717a3c25a84c650b12fbdff645798c`  
		Last Modified: Fri, 19 Oct 2018 15:18:00 GMT  
		Size: 173.9 MB (173864963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53533258a8ffe9f0d5e3295b7f682059b19e3de6ada159b74c7703d62b5e12bb`  
		Last Modified: Fri, 19 Oct 2018 15:14:17 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae059c3ddafe250362ab700ea0a4a0de354ca554c1c71ca889722e431360f6e6`  
		Last Modified: Fri, 19 Oct 2018 15:19:14 GMT  
		Size: 78.0 MB (77963270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5638aab8b141c925ed1960c450c5a84a6e6350429b0d35dd10deb4979fe80d5d`  
		Last Modified: Fri, 19 Oct 2018 15:20:31 GMT  
		Size: 93.9 MB (93922524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
