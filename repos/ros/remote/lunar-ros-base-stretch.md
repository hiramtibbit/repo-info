## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:778412dc65940d9101076de5741b1d0e3ca5bb39fe65a9e6c4582244eb77a377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:e5f8248a0271360a816cfcd03a6a0848b69fac03743ce5b66e45c07479f722e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.1 MB (492093461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc888d45899b830606ef1d082986cde6e4034783cad580bf3a3e622d02d3e53`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:53:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 14 Mar 2018 21:53:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 14 Mar 2018 21:53:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:53:36 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:53:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 14 Mar 2018 21:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 14 Mar 2018 21:53:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 14 Mar 2018 21:54:47 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:54:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 14 Mar 2018 21:54:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 14 Mar 2018 21:54:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:08:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05a4c3253d30104c7609f60f5e8f7892fe226be34717c2e89739224349cc752`  
		Last Modified: Wed, 14 Mar 2018 22:55:30 GMT  
		Size: 7.2 MB (7218921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcb7476c006ff6f55a44e04d215cd759ad1ec99164fc88a2f619baf2380d6b1`  
		Last Modified: Wed, 14 Mar 2018 22:55:29 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3bf1c66ef8428babacd9ab8f4e999747f5f56430861e028de8c374e8bd6525`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fa0755d928527e19927cf73d533e7c0d0521e09b08dfa39be064b8c024ebb5`  
		Last Modified: Wed, 14 Mar 2018 22:55:53 GMT  
		Size: 64.9 MB (64857750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ae2502f91d46ad00ed03b7c7c14fedf05b3f7d379e45688d7147bdd36b9ba7`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 791.2 KB (791216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f518309020ae8617300e7ae7d116505e57de20ab6a5d61539c693fbad62e12`  
		Last Modified: Wed, 14 Mar 2018 22:56:29 GMT  
		Size: 251.9 MB (251873801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741578f11e50550b8c3745fcb7909219c67833ee58f74186730257cc672bf9e4`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e3a0f72a7be4c3486ea4de910dd1382d4074dbab5d70a701fc35f43315941a`  
		Last Modified: Wed, 14 Mar 2018 23:01:57 GMT  
		Size: 122.2 MB (122214904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0a8f94441debc936b6276ed0a0020e7aa5ef338907223f171f71f73916047fc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435270563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9ce02c44855bb4be6791b755eccaa51cd668983bc2e9ae7edc014c24e8f5ec`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:57:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Mar 2018 03:57:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Mar 2018 03:59:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:59:15 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 03:59:16 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Mar 2018 04:00:08 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Mar 2018 04:00:09 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Mar 2018 04:08:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:08:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Mar 2018 04:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Mar 2018 04:08:52 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:13:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b20ac93a23591cd708287109b38e6d3cfa4df28b7bc7f2d76ced9ebd071061`  
		Last Modified: Thu, 15 Mar 2018 04:47:36 GMT  
		Size: 6.8 MB (6794160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937289d9f2908bdc0632e69e9656a99838c8d74800329ea978a3141e026e857f`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f23cc8c9690e8a6fce553c81dda89cbb75cef86377245c1353396c3ebfe5de`  
		Last Modified: Thu, 15 Mar 2018 04:47:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3c6509781662d18c90e893dbae6c92b0c741d25e67e850edcfbcd16e192c34`  
		Last Modified: Thu, 15 Mar 2018 04:48:31 GMT  
		Size: 61.9 MB (61941449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb330d3be283162c5e8a7b4b4058a93e2693bd0328a6013da35fadcb9e1983`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 791.2 KB (791228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37eec5bcf4b898d4f3d46f7ddcb29e8fc7ebb29f8b67fdbfcb6a34656213410`  
		Last Modified: Thu, 15 Mar 2018 04:50:19 GMT  
		Size: 206.8 MB (206804765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdafe432be54c7abcb6d38871e0078cabf42e6bd288741bb263b1edf9958ecc`  
		Last Modified: Thu, 15 Mar 2018 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbd0df2dae9d9bb4b76963ccc5573cd94d60b1a02a4cb375dc2e90053f60c8d`  
		Last Modified: Thu, 15 Mar 2018 04:52:13 GMT  
		Size: 116.0 MB (116029340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
