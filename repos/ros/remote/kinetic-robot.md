## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:2de90882ab15fee35fd006974e808e14bca7c940d5f348713abdd9efe24f2f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

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

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:0856b138e035dc4d7b7dd74d77eac0911154207a16c817fe7a52765134bc02bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.9 MB (423894175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab54708a35b0239bc479c6a683408fc62e690e73222d5e66bdfaf7418cf2203`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:34:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 14:35:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:35:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:35:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:35:51 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:38:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:39:31 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3820826b5e1ac48f76e3ae34bd72c35b6a17e6a31e0f5823e06a92a8939dc3`  
		Last Modified: Fri, 26 Jan 2018 15:08:36 GMT  
		Size: 164.7 MB (164718632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abec6ecaefac68d29f7ed2a5191f372a8805670292ca8a5d07674a48894821d`  
		Last Modified: Fri, 26 Jan 2018 15:07:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab8c340439854777ce2f9f8b028f8a5f7700a667214841ffc72d324cf21896`  
		Last Modified: Fri, 26 Jan 2018 15:09:13 GMT  
		Size: 75.1 MB (75091340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd228a7b357e4880b7b26cd7fe38762df722a4dd4d8413820b3cd7e76dfa8f9`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 90.0 MB (90021601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:439437a1d9aab61c0db344da38c51fa328cbe7511524c4bbf8d832da7b5dd33a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.5 MB (441473756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21184ea6bda0466ad4b1f26f3201f744043c01cfb142fed15b21a64dd1fc242e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 15:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 15:44:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:44:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 15:44:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 15:44:24 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 15:51:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:57:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c61c6bf3449fd51be34efca042de3d3a658c30a4a43802ec622318e50484caa`  
		Last Modified: Fri, 26 Jan 2018 16:51:32 GMT  
		Size: 173.9 MB (173937534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8f94e5fe3a6de5622d1dbb3931e445bea6c589200b82523a2a7cf3c2977d7e`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51458a6b0bfc83fb7fddd1f168576a8737586cc5df61c1416f3229d8f0cbea31`  
		Last Modified: Fri, 26 Jan 2018 16:52:33 GMT  
		Size: 76.5 MB (76533823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2368f5f0d7cfd6b211851eda9b17fbfd215db80c81efa589358544e6efd9ef`  
		Last Modified: Fri, 26 Jan 2018 16:54:00 GMT  
		Size: 93.9 MB (93868544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
