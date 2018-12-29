## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:86fc6e30c1897da8c84473cf26c7139ceaf4a869ca2717c7d14d639c05e7f1aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:f75aa1df106b3ae1ed83612cd596e255a67255f700ce66938493d8ef1db922ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.9 MB (371938778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48443a43142f65026915911a1bec2aeef9645d6045371264ed5224d3da11b0b8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:10:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:48:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:48:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:52 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:48:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:49:08 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:49:08 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:50:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:50:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:50:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:50:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dbd30b808800417a52844c612f887e55d4ba4e5135b6a446eef49389d8c411`  
		Last Modified: Sat, 29 Dec 2018 00:21:57 GMT  
		Size: 21.1 MB (21091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2026a0910d3c85336f2ac754871d67555438238bd2d252468caa5a001f188c`  
		Last Modified: Sat, 29 Dec 2018 01:24:22 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f6b1f044485b869afdc00aa12d422bab89494e1928073d916e260f5eac7aac`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b555a783a42682bd3f6c9457b7af77b612e63cead2919b35e8be22157b295`  
		Last Modified: Sat, 29 Dec 2018 01:24:38 GMT  
		Size: 53.5 MB (53537845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1192a1e839a86b699d1f76267da62f805d5194412d956dd7c66f7d01409472b2`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 852.0 KB (851960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9000e58abb18ea709b21b3f074c8d3ac269c3d2c60cab1db1cf46a8978fe6e`  
		Last Modified: Sat, 29 Dec 2018 01:25:15 GMT  
		Size: 251.1 MB (251127331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9264b7e775cf55e8099c1d57e10933bf3f8f0ee2f6d8d986d398209b506f3a75`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e392caeb2abfc75ebb71a450c821f7427a4b95750a47ee77bfaf52018f40369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.2 MB (321216720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c217755a7b45c1b30dcf054d45ddb58577b7c987442388598206cea8ee1fbd6e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:02:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 17 Nov 2018 06:12:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:12:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:12:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:12:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dbd9965893daff269efa9854e4915e81eeedccb28885bea5351e089566d60f`  
		Last Modified: Sat, 17 Nov 2018 07:09:30 GMT  
		Size: 206.1 MB (206058703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956455f470af9c9e304bdcea21658b9e346ce89c7e6eeb2589fbedf41174513e`  
		Last Modified: Sat, 17 Nov 2018 07:08:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
