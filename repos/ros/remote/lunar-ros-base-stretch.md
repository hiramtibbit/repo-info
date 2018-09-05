## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:aaf463b6c9c3709e46b2419ac6c287685a49300f99044025772e31555b155537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:15470fb5e3645e93dbdcdb4c0b9cd35d6e891b1fbc5b7f13dc1e36668b6cb7de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.0 MB (494023428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ca149f9c5c30b5e45200946f5eaafbb7706b7e50e817a082abdc5089fb243e`
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

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2cc97875522ba96b70a3fb41f790eeb5332051b0843e1ea90161b19759f58fb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.2 MB (437172074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e8f5a9927f3a152f6c0d22a9cf8a85ca6d1c6c8551890ea1e04aa84dee218e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 19:12:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:12:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 05 Sep 2018 19:12:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 05 Sep 2018 19:14:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:14:19 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 19:14:20 GMT
ENV LC_ALL=C.UTF-8
# Wed, 05 Sep 2018 19:15:07 GMT
RUN rosdep init     && rosdep update
# Wed, 05 Sep 2018 19:15:07 GMT
ENV ROS_DISTRO=lunar
# Wed, 05 Sep 2018 19:24:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:24:46 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 05 Sep 2018 19:24:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 05 Sep 2018 19:24:48 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 19:28:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2b999e6626b77886e3c38e8a785a7e1a7e36e0039445255654d5bc5ad24d76`  
		Last Modified: Wed, 05 Sep 2018 20:30:40 GMT  
		Size: 19.7 MB (19730993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac738c1923ba135a921c240522fdce8b7030d13698f3f0904005bbea14ee354`  
		Last Modified: Wed, 05 Sep 2018 20:29:12 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f424c24b55fa5004b2452d07e0a983ea358de7216774776775ad9a9c919767d7`  
		Last Modified: Wed, 05 Sep 2018 20:29:09 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ce9c4049ae683de69beffcf613062f883f5de22797cf56c118afff6a7e4e5a`  
		Last Modified: Wed, 05 Sep 2018 20:31:42 GMT  
		Size: 51.5 MB (51465804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e1ffb408b178aa6dcc279a4dd049a621c4035340001992130302a183cece83`  
		Last Modified: Wed, 05 Sep 2018 20:29:12 GMT  
		Size: 811.0 KB (810967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da38415276ff7fd267f1623bb9559ed90d906ba58a54deb60977b117ed7e81f`  
		Last Modified: Wed, 05 Sep 2018 20:33:51 GMT  
		Size: 206.0 MB (206009753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bac2fdbb948a8f7acb0f5a8cde5d1fe6f1ef9ab504432386d0c01ed7149c647`  
		Last Modified: Wed, 05 Sep 2018 20:29:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba51884f4662bbc8c84b501f5d2e3c77ded491da5288a22fd548708f49184e`  
		Last Modified: Wed, 05 Sep 2018 20:35:45 GMT  
		Size: 116.0 MB (116024392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
