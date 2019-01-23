## `ros:melodic-ros-base-stretch`

```console
$ docker pull ros@sha256:f8a80c88bf27eb1d0240fdfe58d976d7dc2040a622bc6dcd89a54a0b7bde226c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:c0bfca01e2291f60e1af2f926bd541365df7e6914431e580b6fc210bf5629188
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.4 MB (498439009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3364aa924dd476f90f8a900f0e54ca33eb7b91a164bcbb276ac1e0e503ef3722`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:51:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 03:09:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 03:10:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:10:05 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 03:10:06 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 03:10:17 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:48:54 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 03:50:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:50:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:50:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:50:43 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:51:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520678ab4c4e263f82bfec96aa051faba9bae110dc9cb90dae5ed7cc65a9a8e1`  
		Last Modified: Wed, 23 Jan 2019 02:02:47 GMT  
		Size: 21.1 MB (21091495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0ed9bf8c4aff6f7565926235514c1d3b82a2f6e56e8a78409707d454dd1c5c`  
		Last Modified: Wed, 23 Jan 2019 04:29:24 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa2d8e87cb0127b826af1929e18a44aa51a708350a0a1d3c47c8445f2aa716c`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36f0be3d12f24b29a9c3c2877c6ec7541f12cef167d1f5899433e2a78f00b49`  
		Last Modified: Wed, 23 Jan 2019 04:29:38 GMT  
		Size: 53.5 MB (53542306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3717f59268f4c08ca7c833bbfc7b790a28e2cdd2581f1e62d6818e930bba5ac4`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 601.4 KB (601430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea95545097901bc897a72a4eb8c40301a39354e5f90110b0269d9c41021263f`  
		Last Modified: Wed, 23 Jan 2019 04:38:23 GMT  
		Size: 269.4 MB (269392057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745b1f092372d4339b98390ac9579923c178ed71209b01ad513739b988fc3a21`  
		Last Modified: Wed, 23 Jan 2019 04:37:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8a7b268289edd413a8f389a36705a0bcdc4b481f2f389bdbcf0fb94cad67dd`  
		Last Modified: Wed, 23 Jan 2019 04:38:55 GMT  
		Size: 108.5 MB (108460427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:727f9a314bfbc698662aaa569343859f405f164cb178529d4a6566b4182f3edc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.7 MB (441730752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05995e29f818cb67bb381dbc93954bd090d2c3d859206ba068c933f1b0136624`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:30:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:03:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:07:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:07:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:07:10 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:08:02 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 15:22:19 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:31:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:31:12 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:31:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:31:13 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:34:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1d1944f1d21b0c58e7ecc4e7f9f25e36a085797ae60e4aabc5344d7a3cbc71`  
		Last Modified: Sat, 29 Dec 2018 12:03:44 GMT  
		Size: 19.7 MB (19745752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6586dcb29ec8af9d07f3c4670b9a7496e2b3bc5f6ea163e31a93b97a1e0fc05d`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37e4a9ba06f80d84be393ddb829946e19740c760f06d8909f1fb992a278e5b`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22020bff8641d9bb568aaea39e2ec8b9999c05ff30dbca83b0d22bf7709cbd7`  
		Last Modified: Sat, 29 Dec 2018 16:12:40 GMT  
		Size: 51.5 MB (51492551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bcd6f637863ef42b5aedab288b1b03f4e37ec76b1219d130824a02ca4d3dc4`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c9cd9f445b613a93f857acd70bd062827d6891da0432194fe7d575049edf32`  
		Last Modified: Sat, 29 Dec 2018 16:31:42 GMT  
		Size: 223.6 MB (223579740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c189e922586ec4f9949edaba6811af53cd7fa6289536987ec4d3dcd7d2df635`  
		Last Modified: Sat, 29 Dec 2018 16:28:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b060d7b36f50df2ca9f71c032cd3b2b4dd288c2cc08a07e5d583b0b35c32fd52`  
		Last Modified: Sat, 29 Dec 2018 16:34:15 GMT  
		Size: 102.9 MB (102937727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
