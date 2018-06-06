## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:a5fdec06c3a9c3804e56028991fc2962b87449670a388b04f1276d146a823c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:04b1c3d30a800fd0832713f86c90d21762e9e71b9aee9b5e25d7869707e64537
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.5 MB (552540435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161da7c12411cfcbf2a1033600b6358870bec5edeff0b5b3098b7842eca35c41`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:22:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:22:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Jun 2018 23:22:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Jun 2018 23:23:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:23:00 GMT
ENV LANG=C.UTF-8
# Tue, 05 Jun 2018 23:23:01 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Jun 2018 23:23:22 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Jun 2018 23:23:22 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Jun 2018 23:25:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:25:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 05 Jun 2018 23:25:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Jun 2018 23:25:37 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:26:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:28:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa09059316a6e28771affaf1f74ec4bfc58e3b354884ed50b2f3b04876b62a1`  
		Last Modified: Wed, 06 Jun 2018 00:28:40 GMT  
		Size: 6.9 MB (6859099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9409b6b97707c1714e085db435f4c2f0220121a43f324af7dbfe041c4a5cc390`  
		Last Modified: Wed, 06 Jun 2018 00:28:38 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f733673ba26a0c6f67a03a9f351a438f153d770691683a2715e55f3cef73d`  
		Last Modified: Wed, 06 Jun 2018 00:28:35 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290adae64d98bf687bf7340f7735900fbf1194eebf13f18db1c6c71989a07a74`  
		Last Modified: Wed, 06 Jun 2018 00:29:03 GMT  
		Size: 64.9 MB (64915987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506a8b7b9061eb54578c00fa2581bd221c9b35345b500f09ff94518b68cf352b`  
		Last Modified: Wed, 06 Jun 2018 00:28:35 GMT  
		Size: 866.5 KB (866499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91ededea2f627cc97a3f5e6cf2f71604bde28538ee050c6fa14c9dbcdf5f421`  
		Last Modified: Wed, 06 Jun 2018 00:30:08 GMT  
		Size: 251.9 MB (251912213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02af86d7b03bc1d9ef715844e7690f1cc1bf37c96ad5424e2adcd31626b62ca1`  
		Last Modified: Wed, 06 Jun 2018 00:28:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3af3ffca8dfbe03d244a11b4af7bb42541287066bdaf9cde2e386ba53a13f`  
		Last Modified: Wed, 06 Jun 2018 00:31:00 GMT  
		Size: 122.2 MB (122226574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4414082331c5deceb215e52b1adad9044040dc50888108ac2529d474c2221ced`  
		Last Modified: Wed, 06 Jun 2018 00:31:34 GMT  
		Size: 60.4 MB (60440112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:894f11683856b6ba206078297eb02f05e3fea4ecf06ba96e6dbaa47ac3269cf5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.6 MB (492646713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c4aba1fb2d7e94c22fabf73e1e0a28fcb4b3c11028bb0772b9613fe1afcae30`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:30:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:30:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 01 May 2018 03:30:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 01 May 2018 03:35:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:35:21 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 03:35:22 GMT
ENV LC_ALL=C.UTF-8
# Tue, 01 May 2018 03:36:07 GMT
RUN rosdep init     && rosdep update
# Tue, 01 May 2018 03:36:07 GMT
ENV ROS_DISTRO=lunar
# Tue, 01 May 2018 03:46:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:46:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 01 May 2018 03:46:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 01 May 2018 03:46:14 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:51:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:57:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994bacc3e1c11e50065156c511f0c11e001707e55b61e361b8dc44d236c76f24`  
		Last Modified: Tue, 01 May 2018 04:41:15 GMT  
		Size: 6.4 MB (6427112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663899231a010cf1e857473d7203c7e5f109b38379d2d822c31dba98a7f8af10`  
		Last Modified: Tue, 01 May 2018 04:41:09 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d9781734de3f7c1ce451752978a14ba285ad3c63d5ab58034a2008cd25ef`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678cb4b8d2f95bf400236eedd95783c53081503a2ed2b39f51e57a6062cd18c7`  
		Last Modified: Tue, 01 May 2018 04:42:23 GMT  
		Size: 61.9 MB (61938600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0225d679802c170200a58607e1e5a805065659ce28bdec6f9cc91f1c5f6ac461`  
		Last Modified: Tue, 01 May 2018 04:41:08 GMT  
		Size: 835.1 KB (835084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8018c896d8c469869af751ab6dedae7d929c8c1eecd50bd607c44492245c688`  
		Last Modified: Tue, 01 May 2018 04:44:18 GMT  
		Size: 206.8 MB (206795100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4f80d568803a6e955c93890cfbb1629933a150a5d0a54e78f081bf2731b724`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f59bacdd92efa26460f246475e05ca8c1d323676766477354f6c57571d53fa9`  
		Last Modified: Tue, 01 May 2018 04:45:14 GMT  
		Size: 116.0 MB (116022523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a10db811d6be31f3fd2565254776071b854565d4874d53a986fc12b15f011f`  
		Last Modified: Tue, 01 May 2018 04:45:50 GMT  
		Size: 57.5 MB (57517148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
