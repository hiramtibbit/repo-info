## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:4008cbfe18a12d0bcecf16882d31914bd1420a9c92413712414a31480fe344c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:ff90a69f6dbd78a59a3fe120e967e8c81c1f40e9f374d755279660262ae88779
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.2 MB (879241776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cfdd0d348469205ac9c4b4df5bf72ed96555b352febe4840524e44490b66ee1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:46:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:54:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 04:54:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 04:55:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:55:39 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:55:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 04:55:54 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 05:04:39 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 05:06:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:06:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 05:06:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 05:06:14 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:07:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:10:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf3ccf167266b9fe9ed95a296cf36c71c5328236d6cf99143cb3cf9d46ac2d`  
		Last Modified: Tue, 05 Mar 2019 03:50:18 GMT  
		Size: 21.1 MB (21090956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbf04bf072f949e6b658624a0852db5ed213adcf41d560ae9e74db880d9138c`  
		Last Modified: Tue, 05 Mar 2019 05:11:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9645b190879c433284609e5a27932a02ba2111e2ea02d05bc8ad6c7cf3432a75`  
		Last Modified: Tue, 05 Mar 2019 05:11:56 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972d6cc8af240b1a39bf256ec1656bc1c1e8cd51ce5db7be87ac46bc29b268df`  
		Last Modified: Tue, 05 Mar 2019 05:12:07 GMT  
		Size: 53.5 MB (53540016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2b0c6392f893a9829435db8abf13f55f3d8f2f7b72f0a040b2d1addc28f2f3`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 616.7 KB (616734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179f44b37fa9655ba208e384c7dda5be2e700ef43323725b91b2177bb5fa50b8`  
		Last Modified: Tue, 05 Mar 2019 05:17:01 GMT  
		Size: 269.4 MB (269419318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e195d50183855faa4f2c4366116011f1fb11e092f27ca631aeb2627b30f0f4`  
		Last Modified: Tue, 05 Mar 2019 05:15:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318310d7b90622cb646022f7895951ee24797e44b337f3c4805d04cdbcd0478f`  
		Last Modified: Tue, 05 Mar 2019 05:17:35 GMT  
		Size: 108.5 MB (108461343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c5edf9e6fb3696fd0e273ab4d1ec98e52d3c12d8044f69aea4d03ac94c2cff`  
		Last Modified: Tue, 05 Mar 2019 05:19:24 GMT  
		Size: 380.8 MB (380764332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d2dcdb717e7f18134cf2b666b93c0b759f5f12f5219c3d1557f419c116337e1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.9 MB (796871265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ca9c8e8b62a9735a5a6f86fc955fc040ddb036404be5f85a409803d166701d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:15:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 22:42:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 22:44:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 22:45:18 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 00:17:53 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 00:28:49 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:29:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 00:29:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 00:29:32 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:32:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:02:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08582476d34c8c1cceb2158965fdbe1badbbf6dafad9fc321c3695ba4bacbe68`  
		Last Modified: Wed, 06 Feb 2019 21:43:27 GMT  
		Size: 19.7 MB (19745851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c6cf74d096dd8d937facb9fb8aaca47b064848c835dae7e86243cdc0a9aa7`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70defd0a05c382a9eab849db8989a9400b4f2578612cfa8af7384355c1aedba`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c6916cf4d073b090049bc644ff06798c69e13ae23b85acbebc3d868be455b7`  
		Last Modified: Thu, 07 Feb 2019 01:26:54 GMT  
		Size: 51.5 MB (51493235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad1ee10367110bbab518f68d190514b7255c78c66e819d0f0b0983c121d62b9`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 606.7 KB (606684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db33ccb93c5564332295bfdf165fea36f364ce14e317625dca7f2db19fe9bad0`  
		Last Modified: Thu, 07 Feb 2019 01:45:50 GMT  
		Size: 223.6 MB (223575400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa5bdbf5d61701774d78c6d0294d2a60d4d4ce9de4ba4534130ba71bf7c41d`  
		Last Modified: Thu, 07 Feb 2019 01:43:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a964ac6cbfa68cd10e5d787987aa5b9902372c5b40f58d33ce3a7301bf88f4`  
		Last Modified: Thu, 07 Feb 2019 01:46:47 GMT  
		Size: 102.9 MB (102938853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d619c789c1f110ec0975e4b80be4f3c6debbf4026abb8ddf1622af9e12a45a1`  
		Last Modified: Thu, 07 Feb 2019 01:49:59 GMT  
		Size: 355.4 MB (355379715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
