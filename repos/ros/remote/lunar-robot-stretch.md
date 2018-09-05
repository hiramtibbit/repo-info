## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:ac01de44c9f396bea50ac487eca0b758376bc435220d598cbf20a29f505fb391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:8415fbd00b2f6eb1e7b06f35307b32c7c6d7370eb78171723f3b96d6c3362a6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **554.5 MB (554465131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4454b9a9989c4db9700b9689cdeb6de44a6cd3b27832311d48932a3eca31b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 07:22:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 07:22:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 05 Sep 2018 07:22:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 05 Sep 2018 07:23:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 07:23:16 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 07:23:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 05 Sep 2018 07:23:29 GMT
RUN rosdep init     && rosdep update
# Wed, 05 Sep 2018 07:23:29 GMT
ENV ROS_DISTRO=lunar
# Wed, 05 Sep 2018 07:24:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 07:24:52 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 05 Sep 2018 07:24:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 05 Sep 2018 07:24:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 07:26:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 07:27:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d35d34ad2c05d7e708e20b396a12d694b5e2dceeda1ddda67bfaefeaec8581`  
		Last Modified: Wed, 05 Sep 2018 08:02:07 GMT  
		Size: 21.1 MB (21067826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0408d25913963c576e46702fe9023e80e080e9c27b1c1d1fab77729c5c1c12f3`  
		Last Modified: Wed, 05 Sep 2018 08:01:59 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffee8a2335bce7bd1008574802d3675d5f1e3eff4b359b4179ba7f8bbf69efdf`  
		Last Modified: Wed, 05 Sep 2018 08:01:57 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbaee5e7cb601a6d1b39d0b015aa32b24ffd64b96df60c68aa2a255d0d102fad`  
		Last Modified: Wed, 05 Sep 2018 08:02:20 GMT  
		Size: 53.5 MB (53504558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab149d2c39ddc435ef0ac48243f46eddda94657a0acc6ce125df28d7429c0dd9`  
		Last Modified: Wed, 05 Sep 2018 08:01:58 GMT  
		Size: 809.8 KB (809758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3a20d519d41f7d7ece2c787e3cb2392cd683cf536d1f096868f9f799222ca0`  
		Last Modified: Wed, 05 Sep 2018 08:03:16 GMT  
		Size: 251.1 MB (251094203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9692840240f9812b5369784f009fda4ea9ffa34b63b865fccb550b4a23939ace`  
		Last Modified: Wed, 05 Sep 2018 08:01:57 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777b06e18b3dbf1cb324be294c81e2fab5fb3fdabdf2e993073d2edbf789dead`  
		Last Modified: Wed, 05 Sep 2018 08:04:01 GMT  
		Size: 122.2 MB (122230481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef94bbbf6955f9d011b1a50576b2c5f9fc51d1270c60ec383aa250e535e96864`  
		Last Modified: Wed, 05 Sep 2018 08:04:22 GMT  
		Size: 60.4 MB (60441703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:966f4ff11bb97a416d6f243cc78cd100401817be8a43c93dd4ad9a7515a548bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.7 MB (494665364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411ea03757a2cdef591bed7608fee5ff10565d5742a7f2f6e4772a4562a06703`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 19:40:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 19:40:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 19:41:51 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:41:58 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:41:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 19:42:55 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 19:42:55 GMT
ENV ROS_DISTRO=lunar
# Tue, 17 Jul 2018 19:54:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:54:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 19:54:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 19:54:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 20:00:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:06:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4c44f71d4be482c02fcf1b92b2c2fe291b5521c9e97a14ef18e94373ef6d`  
		Last Modified: Tue, 17 Jul 2018 21:01:22 GMT  
		Size: 19.7 MB (19731106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80d7b09efff2ece5ecbeae72fd76e399a37b14251a4c8329626669ba981e9f9`  
		Last Modified: Tue, 17 Jul 2018 21:00:30 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1094f909edceaf93e034e225b86dda0fe27065b2b0200cf3b4fd332f56521c0`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263b442182e43276514fd2a98a3fdf21541d94c3199925aa906a14eaf1b340b7`  
		Last Modified: Tue, 17 Jul 2018 21:02:18 GMT  
		Size: 51.5 MB (51463775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91cf8896e6ff5974ac156a936c4d9c329b56635e6ff5b349056c5fb6c20772d`  
		Last Modified: Tue, 17 Jul 2018 21:00:29 GMT  
		Size: 794.6 KB (794625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee3882d4da36d117c3ab74ec9bf7fcf73043379d68adc8e1a6eca10207db8d1`  
		Last Modified: Tue, 17 Jul 2018 21:04:44 GMT  
		Size: 206.0 MB (206001147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ca20c442a62eff879a20fa1e5cd24e601556e54de2f0dd0cc2bd90126b4893`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabb4b28b02c3faccb9aa57502156d0a5de60be34d0845cfdf6c967051e1e0d3`  
		Last Modified: Tue, 17 Jul 2018 21:06:09 GMT  
		Size: 116.0 MB (116023415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18c4e51a1409bfdbfcec3e44feec92341b51ecbe86a69889d9c7257338985a5`  
		Last Modified: Tue, 17 Jul 2018 21:06:56 GMT  
		Size: 57.5 MB (57521182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
