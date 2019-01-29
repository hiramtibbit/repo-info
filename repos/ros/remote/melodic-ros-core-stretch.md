## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:606fecea999788d8dc27ced0349c663bb1de8809bd391d393469a12768b7d4b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:c4d26dfd7572c2e8d67b5628e08509b66d102eacb1a72293ad5d00b2026f9d2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.0 MB (389978582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768c4927c7b2a3ed783e110ddca944ef08934571057ce358339f72296c3e5b09`
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

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ff690093c37aa2ef2b8f104efc722ff69fbecc593612788b7894b2e6714d1110
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.5 MB (338547508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a04c6b4393fee74a05670d4c7a6d7fd53e1ec26478a34d7a6769b692b1da358`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:03:54 GMT
ADD file:8e97108c1e48b9197ff71d26fbf0d9c12372f7197eace7801dd05a1b34e56e65 in / 
# Wed, 23 Jan 2019 10:03:55 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:04:59 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:49:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 16:49:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 16:51:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:51:01 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 16:51:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 16:51:41 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 17:56:27 GMT
ENV ROS_DISTRO=melodic
# Tue, 29 Jan 2019 18:05:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:05:51 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 18:05:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:05:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8c20612220f39dab58625e39fe6985d91acf6a5359517e82621d51d28bf82e05`  
		Last Modified: Wed, 23 Jan 2019 10:11:07 GMT  
		Size: 43.1 MB (43125634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394ae40b1c7c44334bbb4bd812fd8f53c9976d70ec59977ec32c8c272ea50cd3`  
		Last Modified: Wed, 23 Jan 2019 11:32:54 GMT  
		Size: 19.7 MB (19745787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfc11516b4e74dd7a4eb69d38128ab52ed1903e764f25a4fd42cc8e1b988502`  
		Last Modified: Tue, 29 Jan 2019 19:06:47 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2b4e738a6aaca15aaee02e3554d4958260e96dd232f6ef5b156783d6cc035f`  
		Last Modified: Tue, 29 Jan 2019 19:06:45 GMT  
		Size: 5.0 KB (4984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336a1965c7f9a6b0435731d031eddd18ebd11b16eb282fbf4da9b1c67f6a3b0d`  
		Last Modified: Tue, 29 Jan 2019 19:07:14 GMT  
		Size: 51.5 MB (51492899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8246a01c5d5b962a08d1239f1b9b09a972bf669719d065bb3b9335a58e3a6f`  
		Last Modified: Tue, 29 Jan 2019 19:06:47 GMT  
		Size: 605.1 KB (605135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05817b235ba2fb852359f66688b7c11fd44ad50e64a84b55b75525c94a733646`  
		Last Modified: Tue, 29 Jan 2019 19:19:46 GMT  
		Size: 223.6 MB (223571499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37381b80dc5a8325a581e224196ab8a85ffed30f13cbf3fa2288715c472f65a`  
		Last Modified: Tue, 29 Jan 2019 19:18:15 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
