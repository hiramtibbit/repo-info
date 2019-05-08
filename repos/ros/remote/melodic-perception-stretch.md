## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:e8001fb72285cd972798f0501e7bf4d29b84303a8b5a655198dd42dd6712aa90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:5c9b857fdb2cbd1b7b29d8d0d2b52680e6f6c6605ec6c47a3762463dd22baa02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.4 MB (879359223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db98df701eb8c38ee23deda09002008b334027d379c1480538d8d32f82906464`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:11:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 08 May 2019 01:48:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 08 May 2019 01:48:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 01:48:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 08 May 2019 01:48:48 GMT
RUN rosdep init     && rosdep update
# Wed, 08 May 2019 01:55:39 GMT
ENV ROS_DISTRO=melodic
# Wed, 08 May 2019 01:57:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:57:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 01:57:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 01:57:04 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:57:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:00:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f0bea7b6a7e144228d241eba7ed6108bf5f01c9683c9ececa901d356bafe18ce`  
		Last Modified: Wed, 08 May 2019 02:01:40 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27d855df06f71f1a31eabe4d8068bb63250d3359cc8efea15c0b672096a226e`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17173731882ab6af3c3fb1b9b22c6dd580d6a76fbcd34865e39776f3a1ed4e71`  
		Last Modified: Wed, 08 May 2019 02:01:53 GMT  
		Size: 53.5 MB (53547735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0c36841004b7f30103b35c363ef4c6fc0671a9b14bc86ee206f59c0ccd382c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 656.4 KB (656376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b0f237e6800bd8cd93d1eba6af7ff270cd673e7dca3b3cde75223baf7a1d1c`  
		Last Modified: Wed, 08 May 2019 02:06:26 GMT  
		Size: 269.5 MB (269499783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c137a57430681e4e7cc6c4d68e50bdcbdbd551b92115890ee74c48f399e20c9`  
		Last Modified: Wed, 08 May 2019 02:05:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5202c076b92887bc29a487a374ae6dce2feec957c85ffb20cf87adc38f382dbd`  
		Last Modified: Wed, 08 May 2019 02:06:53 GMT  
		Size: 108.5 MB (108461109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9122b19d47cd553369c62c4527b022d9868cf7adbdb7a963c64b7cb3ce9f5448`  
		Last Modified: Wed, 08 May 2019 02:08:36 GMT  
		Size: 380.8 MB (380757501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bdd87f84b37ec8eb47aa57e2657bf6af67d46d77059aa00fbf15a03fe18085b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.0 MB (796953566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d19513cf4c44b5525512934ad2eefc6c10b0eb62b9fccdcb3f25d4383d305d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:35:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:30:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 15:31:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 15:34:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:34:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:34:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 15:35:27 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 16:29:26 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Mar 2019 16:40:23 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:40:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 16:40:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 16:40:31 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:45:24 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:06:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d338dbd78ea3a9e8f68cefe88489efca81668d61c3fab2dbde834ef5aed274d`  
		Last Modified: Wed, 27 Mar 2019 17:07:59 GMT  
		Size: 19.7 MB (19745047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb4ff9aa67af9bbc91dd85bc722aac01a15b3a16feb8ba8d31b9a6a7139d8b`  
		Last Modified: Wed, 27 Mar 2019 17:07:40 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7aa0272c2ab5991755fd4536238fce51210c60be48217c7284821c98d7c398`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f89edf17fb85923794e64c55739228a59087832785d0067a277ee9477e61d2`  
		Last Modified: Wed, 27 Mar 2019 17:08:22 GMT  
		Size: 51.5 MB (51493680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd402b06f6ad66ae39e7cb8a08ea0bb88e892d2d4269bbf88405779ca3902e9f`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 628.9 KB (628922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f8c8997cc36e3a773e7cf60b9ef94b54ce8a908809b365db44bca39460641c`  
		Last Modified: Wed, 27 Mar 2019 17:15:45 GMT  
		Size: 223.6 MB (223619842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1501ec1c53ae64a49c2f352362485137c585ee1c2b3ff3d83aa3b7b454f8f677`  
		Last Modified: Wed, 27 Mar 2019 17:14:14 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973bacf086c78a493f752bfe360fdc4fabd84c0ff45b8b68a125c555c2af12fa`  
		Last Modified: Wed, 27 Mar 2019 17:16:27 GMT  
		Size: 102.9 MB (102941102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff451a6e4f6b6d38893f5c4b7801bf255dd92c8b92b858da1e624ca3ae2665cb`  
		Last Modified: Wed, 27 Mar 2019 17:20:29 GMT  
		Size: 355.4 MB (355386421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
