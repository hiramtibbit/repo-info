## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:8882659dc9ec70079f693034035e0991f5f77de548d052409da4e1ee34a9f806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:76849e75d77ffd8622c7eac738f45375ce76a4c9fa3294c3a10b021cf2020b81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **933.2 MB (933246000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebcc496919ca0e0257de3b08d17c192901f295afdf3924471b850c41d706164c`
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
# Wed, 23 Jan 2019 03:10:17 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:11:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:11:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:11:46 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:12:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:17:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:568d720e263a27ef3f80173f2bd364721e449e187ebc12580de9843c94c18415`  
		Last Modified: Wed, 23 Jan 2019 04:30:32 GMT  
		Size: 251.1 MB (251128538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9beb7b83d23d9c0266adfc08b464f75bb51348e0fa20da74160b236c0a7209`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a541a653f290cac2215c1d0db192e705fbb96bbdf5b661524c7a566a394e6`  
		Last Modified: Wed, 23 Jan 2019 04:31:11 GMT  
		Size: 123.1 MB (123068757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dcbb3da044143b8634404f7938621c4ed06db029815c38c8fffd872bb34eacc`  
		Last Modified: Wed, 23 Jan 2019 04:33:13 GMT  
		Size: 438.5 MB (438462180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:fb8877e7d7699aef74227be195151a14203e8ba22cc67a3d5ee8557adff76a00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.4 MB (816412992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3421c114f3ccfc6afd7cf7a43cd74051619c5e684d930fac29b76bce6ddf3c9b`
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
# Tue, 29 Jan 2019 16:51:42 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 17:00:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 17:00:37 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 17:00:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 17:00:38 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 17:04:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 17:23:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:925fcff8a5f9b512a9a9ec9c6aca0bc7d827768dfe8a6f28dacb54a0a6ae0b76`  
		Last Modified: Tue, 29 Jan 2019 19:08:17 GMT  
		Size: 206.0 MB (206038817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6492203bf3b6728eb330754445c084244fa664dee10b4720e41b7687a0131ca`  
		Last Modified: Tue, 29 Jan 2019 19:06:46 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d46905144b0188d53a1f2f5b0f8c2cadfea08e06cf69c1516046edc181a03c`  
		Last Modified: Tue, 29 Jan 2019 19:09:07 GMT  
		Size: 116.9 MB (116872288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ca412e56c1e55a1f4637962d27e88f66b00bb5a70a2928249d9b20302da14`  
		Last Modified: Tue, 29 Jan 2019 19:12:08 GMT  
		Size: 378.5 MB (378525877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
