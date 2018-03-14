## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:8c488cf37bc59061924ebe1809117c60bf805096dedd8f01e899fd8d255bcc38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:911a786de99a9c108cea7af1d3df4db2c4467e7ffac640f598ad0fa26788ba30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.5 MB (552520932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62fb39dff5fdc7efc262ea1ec94bbbfca8afb1096f33673101cf845cb763510`
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
# Wed, 14 Mar 2018 22:11:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:4aea43193abe69c9679c0cf0d212ec40200a2f8201c0f2edebd1d025b84842c3`  
		Last Modified: Wed, 14 Mar 2018 23:09:03 GMT  
		Size: 60.4 MB (60427471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b85e4a6112aa649d79fb4dbbab52f375b571cada0399bd797056affdbd633d00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.7 MB (492748899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ef30cecddd2d35cae20b6f99d04c42f98f9bf8d28e9266c3174aa7fc894ce2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:18:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:19:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 04:19:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 04:21:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:21:38 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 04:21:39 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 04:22:26 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 04:22:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 16 Feb 2018 04:32:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 04:32:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 04:32:10 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:36:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:41:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1aa9de31195f13a194a89e8cab460e42e89785da4de296ee67f49a473151502`  
		Last Modified: Fri, 16 Feb 2018 05:02:17 GMT  
		Size: 6.8 MB (6793887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bd0f2d5b7b2d1640ece1997ec9b4c0ba35182ab50e9b76c7a5dd5b1036fb7a`  
		Last Modified: Fri, 16 Feb 2018 05:02:13 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50d0729a045cc054a9c5ef1740283f8a4a96ca631ec59e91a6ac8bdaac8463e`  
		Last Modified: Fri, 16 Feb 2018 05:02:10 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc43d45db2b7da99f77fed625e4a05a21f6562e263528fb36a038982f6ded28`  
		Last Modified: Fri, 16 Feb 2018 05:02:47 GMT  
		Size: 61.9 MB (61941610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603fdd990e3bdef118a53a405a6364271e640a935f1a6486cbee20ccfc5d39b3`  
		Last Modified: Fri, 16 Feb 2018 05:02:11 GMT  
		Size: 785.5 KB (785511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d61e469bd70b92ebd66aba2e25058603d6bc147542ca8709ca21b14b80dd10f`  
		Last Modified: Fri, 16 Feb 2018 05:03:38 GMT  
		Size: 206.8 MB (206769329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937262db05ad615818da854a8f99c96962bc7eb1c78647951dfb515a968ef62`  
		Last Modified: Fri, 16 Feb 2018 05:02:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8494a24671515648e678840d16acdaf9bbb398b9dac822beff545deffd65512c`  
		Last Modified: Fri, 16 Feb 2018 05:04:38 GMT  
		Size: 116.0 MB (116029937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087799164de456ec4f1435a2dd850ba7e18e19ebcf5925293220068e8647b916`  
		Last Modified: Fri, 16 Feb 2018 05:05:22 GMT  
		Size: 57.5 MB (57504921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
