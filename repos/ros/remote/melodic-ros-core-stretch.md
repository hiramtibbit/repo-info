## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:45c701331a5f3c877fb6521f593318cbb09985a3e9a7e9ac18be047ea984e67e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:307ac1df03af853704ae1b8ff51e807728f8eb643e49bf58cb0fcdd06046c7d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.2 MB (389241127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e60ef12300c25a4f92dffde182a84b7362c5ce1689a97a29436cbec3f603b15d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:26:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:26:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Oct 2018 04:26:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Oct 2018 04:27:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:27:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 04:27:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Oct 2018 04:27:32 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Oct 2018 04:35:07 GMT
ENV ROS_DISTRO=melodic
# Tue, 16 Oct 2018 04:36:25 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:36:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Oct 2018 04:36:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Oct 2018 04:36:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92621335313bdf29cf5d4406ff53c827bde17e6936b190b93487a1944925805`  
		Last Modified: Tue, 16 Oct 2018 04:40:47 GMT  
		Size: 21.1 MB (21073344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30add05bdc21dc6892959670bda987c92184067f30e99fc9b3e7d5f3c78ba33d`  
		Last Modified: Tue, 16 Oct 2018 04:40:40 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b835ded999bbd4710a8b78b722c5eb36806004e976f7fbe01455967e3b176a`  
		Last Modified: Tue, 16 Oct 2018 04:40:39 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c212122530d83f220c9e4e19a88eb803d2bfc723530364bcc0a272a2f3721175`  
		Last Modified: Tue, 16 Oct 2018 04:40:56 GMT  
		Size: 53.5 MB (53504624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660f51cf7f33d9235a49e4ca68e2345e88ebb06d90b82c22da722173b2d96489`  
		Last Modified: Tue, 16 Oct 2018 04:40:39 GMT  
		Size: 827.6 KB (827575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09e96aa297a1fb4c2754b68ab091a070f95d1dd690069ed95b45bd26573a950`  
		Last Modified: Tue, 16 Oct 2018 04:46:21 GMT  
		Size: 268.5 MB (268519108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac3d6c88f164a0ec7c40f9575ccddaf344d82d52da79f2ff8cd09f361c7c6ee`  
		Last Modified: Tue, 16 Oct 2018 04:45:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d71414a1d02d81284fe7aaa0c01a98df9327abdc6b9903b23cf40179c1f2d5be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337876485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04eece2b68b5d0f7da751165ad82ac7f97710f6df83efea5418d952626fe6821`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:15:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:15:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Oct 2018 21:15:34 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Oct 2018 21:17:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:17:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 21:17:07 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Oct 2018 21:17:58 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Oct 2018 21:53:47 GMT
ENV ROS_DISTRO=melodic
# Tue, 16 Oct 2018 22:03:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:03:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Oct 2018 22:03:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Oct 2018 22:03:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc137dcfaaba7d390266fe4e3e5b97f857078f572f28d3560b2489dea1daa01`  
		Last Modified: Tue, 16 Oct 2018 22:26:19 GMT  
		Size: 19.7 MB (19731124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdfbdd246ccf0883ba9ff4b0464458b9831fdbce6f4694c761cfe64d18f7839`  
		Last Modified: Tue, 16 Oct 2018 22:25:58 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c06a789f45726eb744c963a637b73a0f3f08397ced59ec277eb0ba8f37e3aa`  
		Last Modified: Tue, 16 Oct 2018 22:25:56 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c871c8248f32bbd136b6d2838dcb1ed25ecf5234cb63308df746cdb199256619`  
		Last Modified: Tue, 16 Oct 2018 22:26:27 GMT  
		Size: 51.5 MB (51462107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342c2cbb0393e84df453e913f377fa68262a11b7c76c577bb1e352eb1b66800c`  
		Last Modified: Tue, 16 Oct 2018 22:25:56 GMT  
		Size: 828.0 KB (827997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2447e1266d5f39a7f14a963465fb8af08150c2dc50202af7845977e583ad5804`  
		Last Modified: Tue, 16 Oct 2018 22:32:57 GMT  
		Size: 222.7 MB (222725114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538a48995f8d2af2eb667a867d088a40e09b785741e39fadffbd1039907722c9`  
		Last Modified: Tue, 16 Oct 2018 22:31:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
