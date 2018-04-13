## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:2c0b1f92850713ddab72c85ded6d888bb16311f5adfec715169c6e03823acbba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:df45b3bb71723dbd80f5435b672064f350a80a8a2a4f085686e863503eaa8dbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.6 MB (485637253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb343230363f2dc694590cc6465adb6ab162dff8f18962bb45674ebfcec9043`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:23:59 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 04:25:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:25:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:25:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:25:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:29:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:33:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf992befce791249e12b1de14873dc7994a62aaddf88cd16538460787907726a`  
		Last Modified: Wed, 07 Mar 2018 05:24:12 GMT  
		Size: 193.4 MB (193420853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052757a7efdb65c5c80abf168ae60b8d4aeeda2b26643234ec3c249f12e71f1a`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b2d150f383e7cc4df04f7c561e029b0ff408451ea149faa5b5279406cbb71c`  
		Last Modified: Wed, 07 Mar 2018 05:36:40 GMT  
		Size: 83.9 MB (83909499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3f2772f769fc88a139802d4fe47199e49b6c934e2b70e765201f1e5c77b17d`  
		Last Modified: Wed, 07 Mar 2018 05:38:20 GMT  
		Size: 103.6 MB (103618550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:f6cd6e983cbf5be95745e073cadb320c89af5bc54bfd20f89d4640eb2c8d99ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.2 MB (424226060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c139b33706f7e2a45380f46d66f384700f078802304d83439556bb4a723a3b29`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:30:06 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 12:31:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:31:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:31:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:31:25 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:32:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:33:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6480cf1b9a31d8581a81b63fb0a824cf72b1d8c2563410f4516c6263c333ff`  
		Last Modified: Fri, 13 Apr 2018 12:46:31 GMT  
		Size: 164.9 MB (164889232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce6685b662dbca3aa49468e3fef65f606da4631a629d1b2a587da38a09f0bc`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50abeee6b8325b389e316007513694b793fa225063339fb0366c775a8c1baa19`  
		Last Modified: Fri, 13 Apr 2018 12:47:05 GMT  
		Size: 75.1 MB (75090702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1af5dd6c2f7812dd59212fb54cbc8618db9c2e9d191db6c5dc0cccc7e8298d2`  
		Last Modified: Fri, 13 Apr 2018 12:47:56 GMT  
		Size: 90.0 MB (90003697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b0e6b1bb1124c51942a4902f43f793cdd83157a407e20b6db7f66ccc91cc3e8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.9 MB (441886328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301bf8be7452503b1e4a23cd5ae694e9814ea36ce45c6eda1690bab652d9d06e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 09:32:15 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 09:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:44:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 09:44:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 09:44:15 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 09:50:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:57:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9db73190ac261a6852e117758f438f954f83acb53b538404a946e6b6a3ba9d0`  
		Last Modified: Fri, 13 Apr 2018 10:52:23 GMT  
		Size: 174.2 MB (174163521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe090abb32faca8fa586a1855f8878352b30a20ff3b5563c87713d15ae61190`  
		Last Modified: Fri, 13 Apr 2018 10:50:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c196da31060b08066a751fee97929120caae3c72c731cb9f7cd99404f180e`  
		Last Modified: Fri, 13 Apr 2018 10:53:45 GMT  
		Size: 76.5 MB (76544969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a16a69e58e3645757d1e39a6c3267ec5e0d456275030d6722f91a2a3d181bf8`  
		Last Modified: Fri, 13 Apr 2018 10:56:05 GMT  
		Size: 93.9 MB (93863551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
