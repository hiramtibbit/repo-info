## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:57d04f7ae6f5456bd8f8e36cadf5fa671bd8073a53e08f9651c5cc471cb665c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:78213306d5a67ad8c2d703aa6f4d3a3d54292ca61cfd10315b0cfb8032b3a447
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **932.5 MB (932499930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d87802ebcec7f8dcb7c3be90ceb35e8017b331c4c17244b292116671001eb0`
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
# Tue, 12 Jun 2018 01:38:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:17f449182d2ebabadcf0c35175edf9e25415321f6cc2f6bc0a7bad3ee812ecf9`  
		Last Modified: Tue, 12 Jun 2018 02:40:29 GMT  
		Size: 438.4 MB (438421780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e8341b4f4bd7aba3332b7374022f9a96bbab03b59cdbcfc616abba0cb0dcab84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **817.5 MB (817497738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166857d650bd7d2aa4d9d73b6255f8a53b38136c383595a3e63c8564aeecdc89`
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
# Tue, 12 Jun 2018 12:22:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d26cfd23b221b479ca5ebe98829585e969d143626a0534797b361601406b038e`  
		Last Modified: Tue, 12 Jun 2018 14:42:01 GMT  
		Size: 378.5 MB (378518141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
