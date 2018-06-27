## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:4e21dfa75bc0801739f26b4a6c16e6fdbbd72a14740b4724642c27502eac21e5
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
$ docker pull ros@sha256:2a3c4c9ead5561403c0210b39177f1b08b0bd4f378099d04f9ab97347720b705
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **815.6 MB (815649992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55218358f412e500d48907ca1c8e2b9faedc7310b856a1c1fbe5e7e659585066`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 16:47:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:47:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Jun 2018 16:47:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Jun 2018 16:52:03 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:52:04 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 16:52:05 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Jun 2018 16:52:51 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Jun 2018 16:52:52 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Jun 2018 17:00:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:01:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Jun 2018 17:01:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Jun 2018 17:01:09 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 17:05:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:27:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021385a58df3162f2007ef8af908051a20c3fa53fec10f43a788db7f1e95be0`  
		Last Modified: Wed, 27 Jun 2018 18:06:11 GMT  
		Size: 19.7 MB (19731685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5769ea981ce493dc799d6608c89759038f65b3cbc395223a0e014abf93f3d04b`  
		Last Modified: Wed, 27 Jun 2018 18:05:38 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659f7514745c7ac182096b3895f8b6c740088ca6dd2c439eddfdd4c1f3882e93`  
		Last Modified: Wed, 27 Jun 2018 18:05:35 GMT  
		Size: 5.0 KB (4973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca431ff9b9fa3a1ad491d449302d25428908498e00329fb3906e0c8d60e67ad`  
		Last Modified: Wed, 27 Jun 2018 18:07:00 GMT  
		Size: 51.5 MB (51500966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4645f46ca09160f0b6635c1979be7e17f62b6b97adef31f61f45a46f95566c`  
		Last Modified: Wed, 27 Jun 2018 18:05:36 GMT  
		Size: 782.1 KB (782096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ed567a5fc8c4ee5814fd0a161ae51147079c1c23adc231a798a75be1d012ac`  
		Last Modified: Wed, 27 Jun 2018 18:08:43 GMT  
		Size: 206.0 MB (205979681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f4fa41eb70487cc6cc843095ede957a3b9809917e8c56c7f4cc3201c2d823b`  
		Last Modified: Wed, 27 Jun 2018 18:05:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11612a97309d24990ed2b9abd0e635abe9c14429e61a32ad822f989acd50b817`  
		Last Modified: Wed, 27 Jun 2018 18:09:53 GMT  
		Size: 116.0 MB (116023162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469d171dbf33f3a1761745e6e09d71006eb7091cee0929d5c90a78bd4e29be51`  
		Last Modified: Wed, 27 Jun 2018 18:13:48 GMT  
		Size: 378.5 MB (378510067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
