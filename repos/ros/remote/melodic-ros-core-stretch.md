## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:918f97f2189eb6621b73b09579506162f37243ff78e1a09ab75ee883125f3a87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:a9afe6896e9e2ebd9716ec28c791bd1bc8a155d55f21feadcd40617a4e525a67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.0 MB (389983227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02da96569a53d424c6e7f1c1254da941e5c0383a609f195c1fe1f66f0f89685`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:36:19 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:14:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:14:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:14:59 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:34:12 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:35:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:35:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:35:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:35:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2e0634b1abf3c79b90216e4aeb7471536660714c9370b9e596f13a4590a78`  
		Last Modified: Wed, 06 Feb 2019 06:42:10 GMT  
		Size: 21.1 MB (21091338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55a746cc16dedbd68479782b923905c1797c3933512b43a3ee001ac8a192982`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bb99ff6d7aabcd302e9711c969c25fd06d9cff8ceb1919dcc2201b5ac95d61`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e95756a0aae62cd8a8b53475e29aa65fc3fb7e9498cff2554dd98b00a0591cd`  
		Last Modified: Wed, 06 Feb 2019 07:46:29 GMT  
		Size: 53.5 MB (53542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a4f75134b8da0e9a9fffcc4db3d2b17423cdb9dbef687f2b449cb6109c1b3`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 606.5 KB (606506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea702ef21014109748e2e5ed0564b75ef42fada4b67d191e9e8dc2184035e700`  
		Last Modified: Wed, 06 Feb 2019 07:55:27 GMT  
		Size: 269.4 MB (269391962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67f8f01e80e2c81d4dca5d25cce779f870c7e0148e0cacf4c94d434ad3865aa`  
		Last Modified: Wed, 06 Feb 2019 07:54:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:57507b741e834f5e53df9f4f789a1f6852a5b34f0ac36d68cadcc6b5d58491a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.6 MB (338552697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d899c391e0e62a77fabd73b65d9a5e10348c6cd91689b71aaaf99d3f948892a5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:15:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 22:42:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 22:44:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 22:45:18 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 00:17:53 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 00:28:49 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:29:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 00:29:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 00:29:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08582476d34c8c1cceb2158965fdbe1badbbf6dafad9fc321c3695ba4bacbe68`  
		Last Modified: Wed, 06 Feb 2019 21:43:27 GMT  
		Size: 19.7 MB (19745851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c6cf74d096dd8d937facb9fb8aaca47b064848c835dae7e86243cdc0a9aa7`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70defd0a05c382a9eab849db8989a9400b4f2578612cfa8af7384355c1aedba`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c6916cf4d073b090049bc644ff06798c69e13ae23b85acbebc3d868be455b7`  
		Last Modified: Thu, 07 Feb 2019 01:26:54 GMT  
		Size: 51.5 MB (51493235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad1ee10367110bbab518f68d190514b7255c78c66e819d0f0b0983c121d62b9`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 606.7 KB (606684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db33ccb93c5564332295bfdf165fea36f364ce14e317625dca7f2db19fe9bad0`  
		Last Modified: Thu, 07 Feb 2019 01:45:50 GMT  
		Size: 223.6 MB (223575400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa5bdbf5d61701774d78c6d0294d2a60d4d4ce9de4ba4534130ba71bf7c41d`  
		Last Modified: Thu, 07 Feb 2019 01:43:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
