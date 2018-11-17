## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:b88ed7696ee6411997e3c62e65b237a6ece7be452a100732dede43b72dcd22d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:efbc40590c9c686e0fa9f2eff8ca483bb0ec5de80d1374bb009e317ac98987a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **878.5 MB (878524749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d61a05e71e681dff6370d58a56817897e085b78dd8ef73901b2c81f39d704994`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:54:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:54:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Nov 2018 16:54:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Nov 2018 16:55:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Nov 2018 16:55:36 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Nov 2018 17:10:34 GMT
ENV ROS_DISTRO=melodic
# Fri, 16 Nov 2018 17:12:27 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:12:29 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Nov 2018 17:12:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Nov 2018 17:12:30 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:13:52 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:18:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5a027b4a84d28f6f7fb49d2f4cbbe83abce22d72c0d94fa3808deae31a648`  
		Last Modified: Fri, 16 Nov 2018 17:20:43 GMT  
		Size: 21.1 MB (21073371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a043e11e0e536d170a705a3ad7bd220584cf95e1f5a5b328a655eb55bd1f60b9`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8aa1e61cd41b81b1671dbea4704fb14b43d3c0312ea08c7413836cea027047`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401f374e5dfd4878b9bb8d584603e519b009c97b64be8433228dc8a6aa7921f`  
		Last Modified: Fri, 16 Nov 2018 17:20:57 GMT  
		Size: 53.5 MB (53505276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488d2ebff7eae41fbd2441b274bfb6c39f17e74336079a424e9d7ce85a426a4`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 835.2 KB (835229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90517b71b48df9d9f4a64a51edfeb790d045ae509b7f0582129e0940cd3b98`  
		Last Modified: Fri, 16 Nov 2018 17:28:42 GMT  
		Size: 268.5 MB (268547403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15271305688a561e9013dac9af49ce9ae6f3c6ff87b2a5927a732e0166308bc5`  
		Last Modified: Fri, 16 Nov 2018 17:27:17 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8ce1d41297f182e14457f0301f108ba05d4f00e96e7dd37c933ee5202e17aa`  
		Last Modified: Fri, 16 Nov 2018 17:29:37 GMT  
		Size: 108.5 MB (108462645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d120cd63bd86a2bf8bb244573f2ceaa5140f840e787bce431cddaeeef9358d8`  
		Last Modified: Fri, 16 Nov 2018 17:33:00 GMT  
		Size: 380.8 MB (380774029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1ba0683a44eaac6567b80144aa40da363f8cbd49f28f42a9041792b8cd20a09f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.2 MB (796161073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fb25c2245d577d87e8eed1ad0cd7ad1a68844089b5437fc3ac56285c2438a8f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:39:10 GMT
ENV ROS_DISTRO=melodic
# Sat, 17 Nov 2018 06:46:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:46:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:46:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:46:42 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:50:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:07:16 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c9dbae05908d343eb2792c34291a3d578becc04d21d65d3c1fe695420f87db`  
		Last Modified: Sat, 17 Nov 2018 07:16:01 GMT  
		Size: 222.7 MB (222730761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843ba6f04b15521ad2275ca8fbf573c124e491d5fa248881cded8c29ac062b2`  
		Last Modified: Sat, 17 Nov 2018 07:14:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f97ab40b2f0ff0bb8a3529bba7c732c2a9fd3c78fe3cdad14e0fb15a84597c9`  
		Last Modified: Sat, 17 Nov 2018 07:16:59 GMT  
		Size: 102.9 MB (102939373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e609d5deee22e0ccc6048140c08bc9abe328d30cda5275403c27a88d25b481f`  
		Last Modified: Sat, 17 Nov 2018 07:20:43 GMT  
		Size: 355.3 MB (355332922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
