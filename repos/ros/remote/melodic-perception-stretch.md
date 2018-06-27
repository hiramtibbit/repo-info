## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:a7f20ca6354ae60b3ca3d41ee60705d37ffb77feaab23c246348f4557c0cd500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:beddc454cc26f161a6be6efdfc7436ddc6c29179a2424d8b62f7879587a308f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **878.4 MB (878394904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308e975d94644195a9f6590c67950a1fd4918ca209206b98de87b1fcdac7ea8f`
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
# Wed, 27 Jun 2018 01:35:36 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Jun 2018 01:37:10 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:37:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Jun 2018 01:37:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Jun 2018 01:37:12 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:38:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:42:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:6640f4973d1c0f068eca0404250c0a787f9c70c86c07162fa4faa4cb28fbe874`  
		Last Modified: Wed, 27 Jun 2018 01:49:15 GMT  
		Size: 268.5 MB (268508752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82088ee4bb690a14f8fa34f19483a18d543d5efe0b0a28faacea8b0f0c82cd4`  
		Last Modified: Wed, 27 Jun 2018 01:48:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab788ed1d408dadd0417148c8bf55591932fed8c5cd863e3c1d941a748463b48`  
		Last Modified: Wed, 27 Jun 2018 01:50:05 GMT  
		Size: 108.5 MB (108461438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2521c54886a41e2248962dd7e2af61d847f00a766f3f9e230a6c47b14f08509`  
		Last Modified: Wed, 27 Jun 2018 01:52:59 GMT  
		Size: 380.7 MB (380710477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8da9f9e75c7c258a73794ab0460d67aea6b9005789b98add26f6b1ad1acaba65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.9 MB (797861977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30339d0576f54f04664ae50a4777d64c42b0101180bae9bc9979d7f6f6ec66eb`
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
# Tue, 12 Jun 2018 13:49:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 13:59:28 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 13:59:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 13:59:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 13:59:43 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 14:03:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 14:23:14 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:2ac5fa8a29089903b3ea1f320beebde01361044baac407f2cb756b98bcb9a79b`  
		Last Modified: Tue, 12 Jun 2018 14:49:42 GMT  
		Size: 222.7 MB (222652587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d134bc105d789af04988a5ca71369b6821cb2aa34066a20199b1f4e15143216`  
		Last Modified: Tue, 12 Jun 2018 14:48:18 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d79319ef7f7e6a91cee776d8acd6973249dce6426d224effd2a705c9e639f9`  
		Last Modified: Tue, 12 Jun 2018 14:50:28 GMT  
		Size: 102.9 MB (102930925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d469310cd74dff9f24f6bf5aff87c2bdfc7aacb7190cc12fc798455fa80b4e2d`  
		Last Modified: Tue, 12 Jun 2018 14:53:25 GMT  
		Size: 355.3 MB (355301258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
