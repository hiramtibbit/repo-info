## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:e48932701843a64be920ffcfb980365511295a02d8cd74d03768ffc347fa35c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:c5802b511047f6952f77c23a0c3355832fbeb6f7007378e16d2c9f45736f3ce7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **932.4 MB (932418387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08672d21c2c23bfb8acdb4a67191ff42673de0b53a30667114c44ed649c71a95`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:25:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:25:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Jun 2018 01:25:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Jun 2018 01:26:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:26:06 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 01:26:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Jun 2018 01:26:22 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Jun 2018 01:26:22 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Jun 2018 01:27:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:27:59 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Jun 2018 01:27:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Jun 2018 01:27:59 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:29:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:35:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e82c15d2707a7929a22d142191cf2f6d4f93c70f56cddfad9e24ee21ea3b318`  
		Last Modified: Wed, 27 Jun 2018 01:42:56 GMT  
		Size: 21.1 MB (21066771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74379de5c7f50fec8dacac4219f1073b9e6a918e511bfccb00d8b00c81ca515f`  
		Last Modified: Wed, 27 Jun 2018 01:42:49 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6321064321c62b9d3ba1c7081bfbc4ca8e109aa774927a4673310f23c7a501e`  
		Last Modified: Wed, 27 Jun 2018 01:42:46 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e076f364c4a30aa0bd146ee5f62c82da313e0e3377fb663969cf4a9254868e1`  
		Last Modified: Wed, 27 Jun 2018 01:42:59 GMT  
		Size: 53.5 MB (53530409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56c96cbe95671e1eda5ea8811ef26d6f13ec6a5d90c29ff4d6cdb7666f7f593`  
		Last Modified: Wed, 27 Jun 2018 01:42:47 GMT  
		Size: 791.3 KB (791291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae83ae2181f3a3ee7472367645ef8902ccaf8ceada6004cd26c5635d0900018`  
		Last Modified: Wed, 27 Jun 2018 01:43:39 GMT  
		Size: 251.1 MB (251055969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8f3740518786940440fd8910d5047c8fb891781ffceb66123c019e5f415d58`  
		Last Modified: Wed, 27 Jun 2018 01:42:46 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72e3f75f547c02b53bab55fcf8880c81ae4cfc5f3f61c0a451ef3e284bf3e31`  
		Last Modified: Wed, 27 Jun 2018 01:44:36 GMT  
		Size: 122.2 MB (122228264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4a4c9a862e621df7c7b58d3350aed0242abd9cbc4db9b7b3f7bcb3ffb1be42`  
		Last Modified: Wed, 27 Jun 2018 01:47:47 GMT  
		Size: 438.4 MB (438419917 bytes)  
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
