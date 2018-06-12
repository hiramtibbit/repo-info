## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:f66608189917658dea87c4a58a3491bd3f6ced83b48b55e38960490dc39899d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:7e8face39e6e24d92eade3356e826cad5e73575fbcc4b697b4110445fd63820d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **554.5 MB (554519456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:659e24a38bca0ef3f1580202fe13f9640fef7456c6bdd480203d2e2d7bce118a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:27:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:27:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:27:54 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:28:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:29:05 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:29:05 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:31:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:31:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:31:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:31:16 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:32:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:34:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e6bd3118369aec5376ad611e074e5ec2d0a57eb5be0f17b6e4b33a3bacbbaa`  
		Last Modified: Tue, 12 Jun 2018 02:34:27 GMT  
		Size: 21.1 MB (21066933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f4bbb44cbd5ea61b81bdd08d23839931a23e65e6ef12447a89291b7f41cd7b`  
		Last Modified: Tue, 12 Jun 2018 02:34:16 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a25da568afffffd3bbfb46057285f245a9ce8dd1fcee27bd58a6263fa12564c`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887dc839562228b9898a946c9aec458a3d84d98d7e972aaa2b468796c23f0409`  
		Last Modified: Tue, 12 Jun 2018 02:34:36 GMT  
		Size: 53.5 MB (53530633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513505d9d0902b0fd12220b4cab7438dd10bb89326021991354381b8b9404c9d`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 868.3 KB (868286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6de56e9b583f99d735d770c014d267b04a55bb58f2105605bfe01af21b8fc2a`  
		Last Modified: Tue, 12 Jun 2018 02:35:46 GMT  
		Size: 251.1 MB (251059338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319686cc8e0894ee6325cbb659ad0573d38a3223691f7a7f63a2ba1a5f16a9ca`  
		Last Modified: Tue, 12 Jun 2018 02:34:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be35c1c41b67e123232fb0aaea6ea00a537bbfc6014ba04f53c03e712a4c59d`  
		Last Modified: Tue, 12 Jun 2018 02:36:47 GMT  
		Size: 122.2 MB (122228258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1644b2f362f91b7cfca9d6ea6dd5aa491b6b04a55397d302f3fb71e8ddff4e69`  
		Last Modified: Tue, 12 Jun 2018 02:37:25 GMT  
		Size: 60.4 MB (60441306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2b6c8d4db4eb61604377b829e8d277a9890ad692df6fdf7a25e79a2d34b882c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 MB (496500183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713f7de3a7f41afb332828b5be500e177d784e69c9a923db150b31cc46bb6425`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 11:44:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 11:44:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 11:44:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 11:46:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 11:46:58 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 11:46:58 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 11:47:46 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 11:47:47 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 11:56:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 11:56:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 11:56:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 11:56:56 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 12:01:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:05:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0114ab8571d3ebaeab2ffb5bd6e12c0df06623c8605c48ed7164348fdfd8e402`  
		Last Modified: Tue, 12 Jun 2018 14:36:45 GMT  
		Size: 19.7 MB (19731331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8668b655bfcfccf5ee3d743c6b5b9f16fe84c1a083dd35327910fe3309329869`  
		Last Modified: Tue, 12 Jun 2018 14:36:34 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59751daf9adb384eab1076ac399845ff679c44e6830c1732ce30c4a34759e84`  
		Last Modified: Tue, 12 Jun 2018 14:36:31 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986589bb13a136d3d1412ab334548abab4239ec475a018368d77352ef5bd5beb`  
		Last Modified: Tue, 12 Jun 2018 14:37:02 GMT  
		Size: 53.3 MB (53261564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626d743eedcd4870fa514c36763af7e8d01edda7ca3df7e5e618912e56496821`  
		Last Modified: Tue, 12 Jun 2018 14:36:31 GMT  
		Size: 868.4 KB (868416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b067a18ef4ba718ec51e41fc85fe94abebf6ace668f9fe23950d4f9229c92d53`  
		Last Modified: Tue, 12 Jun 2018 14:38:02 GMT  
		Size: 206.0 MB (205979829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3415aae92f05707c86285d32435d9230d7d51f75cbf696c9ce4d11844beaa2be`  
		Last Modified: Tue, 12 Jun 2018 14:36:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587039b9560dfdec25750ebaf1f56d5f52e8776602967595b518ddc949aebb87`  
		Last Modified: Tue, 12 Jun 2018 14:38:56 GMT  
		Size: 116.0 MB (116022561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5690272661d32c679ffa03ee418d76c51b174376bc12f507bbe2dded9ec8751`  
		Last Modified: Tue, 12 Jun 2018 14:39:30 GMT  
		Size: 57.5 MB (57520586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
