## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:01f454db77e2f6fab210b17bb34263f4485b87a00e72e452ef8d513d8a42716f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:9600a0359a296dfb38160e91dc41a72627ed209209c88380dc971a120933d2dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.9 MB (389940155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bfe71ccf9b749fc16cdf660afd809cf55024088060af6e1aa2e81e152ed2ae5`
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
# Tue, 11 Jun 2019 07:46:54 GMT
ENV ROS_DISTRO=melodic
# Tue, 11 Jun 2019 07:49:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:49:22 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 11 Jun 2019 07:49:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 11 Jun 2019 07:49:23 GMT
CMD ["bash"]
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
	-	`sha256:a8ff836545d8853a45a32d375c553789a361cc25335d45ee22458105615b1d9f`  
		Last Modified: Tue, 11 Jun 2019 08:03:31 GMT  
		Size: 269.5 MB (269499941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7411aff7023a6878a021482bcbdc0b13cd679418f5f63ca1e4b61300b858b53f`  
		Last Modified: Tue, 11 Jun 2019 08:02:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a5f4b87bc4c7eaab64509c5982a092a95f69b8bc897b2ea708483b4beac0d4ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.5 MB (338535338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66cc138b3d44e6c2aef911f7ee9b3c4aa874c0b4bcd0b39e785b92474f507aa`
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
# Sat, 08 Jun 2019 00:24:43 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:26:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:26:40 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:26:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:26:41 GMT
CMD ["bash"]
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
	-	`sha256:fe0020bfa8e8d576f4049eff90d61eb6c9beca5d5d8696ae9034977fabcf6524`  
		Last Modified: Sat, 08 Jun 2019 00:52:25 GMT  
		Size: 223.7 MB (223693060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a03e3a6efbd3febb03abd6e4a77f3598a645e0ddc1bccc59c5521de060a36`  
		Last Modified: Sat, 08 Jun 2019 00:51:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
