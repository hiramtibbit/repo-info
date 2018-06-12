## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:35447a11557a456680f1d71f8575cd2eb9924454710cf8e5f6ef6215e4d6b7df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:96c1d9a6b23e0525db90962f909e1ccae7d700a3cdfa5fa69c31711803680ff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.3 MB (389311195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25fce190fecacbc1bbe1be758abcee2703df193557f59d90dd46a96d9a51a89`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:27:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:27:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:27:54 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:28:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:29:05 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 02:04:49 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 02:07:29 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:07:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 02:07:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 02:07:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e6bd3118369aec5376ad611e074e5ec2d0a57eb5be0f17b6e4b33a3bacbbaa`  
		Last Modified: Tue, 12 Jun 2018 02:34:27 GMT  
		Size: 21.1 MB (21066933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f4bbb44cbd5ea61b81bdd08d23839931a23e65e6ef12447a89291b7f41cd7b`  
		Last Modified: Tue, 12 Jun 2018 02:34:16 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a25da568afffffd3bbfb46057285f245a9ce8dd1fcee27bd58a6263fa12564c`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887dc839562228b9898a946c9aec458a3d84d98d7e972aaa2b468796c23f0409`  
		Last Modified: Tue, 12 Jun 2018 02:34:36 GMT  
		Size: 53.5 MB (53530633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513505d9d0902b0fd12220b4cab7438dd10bb89326021991354381b8b9404c9d`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 868.3 KB (868286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1271095ee7cfbc9fc32645c3db40276bda7efe3c748809b3d1d30a22b79113ef`  
		Last Modified: Tue, 12 Jun 2018 02:49:10 GMT  
		Size: 268.5 MB (268520641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8817725b0e5de89434918cfd28c95afdaef0875451d26ee0b4576644da710f`  
		Last Modified: Tue, 12 Jun 2018 02:47:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:dc7b974469aff36c538d065de65e273992f873a3698f81ec571383037c782cec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.6 MB (339629794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054acf7a7280a571157961091812c5c657f44ea1fbcc032e0556631f3b994a4d`
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
