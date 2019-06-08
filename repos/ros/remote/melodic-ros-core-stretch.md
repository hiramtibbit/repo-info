## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:a3f69fd5a3214716a9b33c55e8bcaca2c53fac42b25dd92257f58c93ceec28bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:31758b4cd01963cf8d1aa623ddc400f0a505830544e040dee3dcd387292e005c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.9 MB (389934007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61f63e2c6f5601682d64d2e0416215bb7d72851947c7ef850c4d004cfb861676`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:11:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:40:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:41:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:37 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:47 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:58:56 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:00:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:00:40 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:00:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:00:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f9cf699210422079153157eff4d098d7573fa49263b6d8e5b5ff53f3690146`  
		Last Modified: Wed, 08 May 2019 01:16:05 GMT  
		Size: 21.1 MB (21090863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26b5b4e1cd38645a23a1bc9bb168b41b84c7a0fb26fce052d5902315354ddf7`  
		Last Modified: Sat, 08 Jun 2019 00:14:21 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3e583bcf5959950c102bc09ce7e7228f7149cf7b66e5c32703bef4bc156ad0`  
		Last Modified: Sat, 08 Jun 2019 00:14:20 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5353055058114e9c92e230ac9bbce10541d062bb7be939c7c06d825b051a8ded`  
		Last Modified: Sat, 08 Jun 2019 00:14:34 GMT  
		Size: 53.5 MB (53549147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfa5dae715417deb7a2f977469895eb22c328f1156a3975ee6d951dd58e4ef8`  
		Last Modified: Sat, 08 Jun 2019 00:14:20 GMT  
		Size: 452.5 KB (452481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d75a9db412f331aede8c81d37a69124fdc7fd955bcc7d0adeda927eec66a476`  
		Last Modified: Sat, 08 Jun 2019 00:21:51 GMT  
		Size: 269.5 MB (269495634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac6f1aae457d2a499ef753ab0239c9661a11e2a9003832560857d226fbf2116`  
		Last Modified: Sat, 08 Jun 2019 00:20:57 GMT  
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
