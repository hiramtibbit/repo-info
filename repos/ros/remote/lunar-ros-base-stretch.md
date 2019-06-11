## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:29c09a483d07c570e2623195e58e4a4d949e05faf043877c0f454771134475a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:ecb05d54e5f53e815bcfcf6a4d200b560de13e6738219ffb24e06f665a251958
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.7 MB (494687044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223448ad720a26f649b0cd168c7c39b392a8b01d1e68470584bab3271956ccb3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:34:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 11 Jun 2019 07:34:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 11 Jun 2019 07:35:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LC_ALL=C.UTF-8
# Tue, 11 Jun 2019 07:36:02 GMT
RUN rosdep init     && rosdep update
# Tue, 11 Jun 2019 07:36:02 GMT
ENV ROS_DISTRO=lunar
# Tue, 11 Jun 2019 07:38:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:38:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 11 Jun 2019 07:38:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 11 Jun 2019 07:38:13 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 07:39:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df675b1ebb834402f7a83f1dc173534327f311851beb4eba463b393de8a36b36`  
		Last Modified: Mon, 10 Jun 2019 23:49:28 GMT  
		Size: 21.1 MB (21091054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b39fd50f51db605f6f97ecf72c1d1d774051b48b1b53c856951cffa2738dd`  
		Last Modified: Tue, 11 Jun 2019 07:56:47 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9c225d768aac5406d30cd80c1c60ad8acb99c744dd05f3e38a4f51b6999955`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 5.0 KB (4976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb63bef9b434389e9c8b0b452623fd347f021229ee12624e77fa00c0797c0a7`  
		Last Modified: Tue, 11 Jun 2019 07:57:08 GMT  
		Size: 53.5 MB (53549403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2af7f00e31bdee6e764752cd4461e6096e83b78a4cda5724c567355b0a0da4`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 453.8 KB (453837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9778d1569e21f1ba421953f26ceb6dd7f7eef53e966181373e2bcf2223e574e5`  
		Last Modified: Tue, 11 Jun 2019 07:58:14 GMT  
		Size: 251.2 MB (251181917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60152eade6e2d9b36295f9916063b60ea8dd4a1274aec87f1cc955a413b228e`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba89385c55791a2f8281c611422bf77281a362f4e474ad1238e054c0e1ee579d`  
		Last Modified: Tue, 11 Jun 2019 07:59:02 GMT  
		Size: 123.1 MB (123064913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:be81793310cb12540e6ed4b1783fa5af50e319a0c91da3f256eb109f4d58daa7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.8 MB (437826707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9092e7665169047b769c034707fc0701e8cc85606e2aed0b125b0816d86c3e69`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:00:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:00:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:01:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:19 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:01:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:01:45 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:01:46 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:03:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:03:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:03:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:03:59 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:05:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74936204b55f2fd2f6ee46ff63cf304606bb277c472cdb00515970ada200549`  
		Last Modified: Tue, 28 May 2019 23:53:07 GMT  
		Size: 19.7 MB (19745769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdfafa85cbb0200cb2a9543b2cd3643aa1a46fdb6d57a89415a40fb749478ab`  
		Last Modified: Sat, 08 Jun 2019 00:42:18 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b22db6d80f262326d5ac51a591bdc7b88f94a6d9ac09f82175e2ae8d4d1bf7c`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 5.0 KB (5013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16753181aa66a7a5805ea6f91bb57b855eab21bc93a9646161cc92950f45acea`  
		Last Modified: Sat, 08 Jun 2019 00:42:36 GMT  
		Size: 51.5 MB (51495220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f03d88b18c736bbdd51f1cb5038337ff918fcbae67ce631cb1c21eda94438c3`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 452.7 KB (452729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e9c16548f0045008d04a938587cedb92ff554a9d21cf8a75fb3806be9f362d`  
		Last Modified: Sat, 08 Jun 2019 00:43:22 GMT  
		Size: 206.1 MB (206098495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89c203f26e83494ddfd0fb5489bff95ed161f013607036cc23a5ac9f95abc2a`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e16370a912dba4564be7bfd5b07a423f3eb204c6e1762b5e009932ef7855d45`  
		Last Modified: Sat, 08 Jun 2019 00:44:00 GMT  
		Size: 116.9 MB (116885935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
