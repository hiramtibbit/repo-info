## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:9d9c04c3da483ba2f3429f92c5ff03d6dc60a5000f023a21f4fae80d06a5ce4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:8ecdd9aa8198e110ad0334aabbbec9f5804f3d37672c35c1a305d69e3c2fb403
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272076599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b6d7a34b5b6bea72d3ddb24805e4c63fef0ad7f0ebe8fd4afd4a8b4969c7d8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:03:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:03:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:04:01 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:04:01 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 04:05:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:05:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:05:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:05:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ee1ad18a6a8c6aa9c8a3974633ba9a9048e4111d788fb2fe41ef1edcb6df4b`  
		Last Modified: Wed, 07 Mar 2018 05:18:03 GMT  
		Size: 16.5 MB (16501179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca88b3fa6f5d03dc031fc0d764f2ed6acfd18199d652eb6b1b59e86c059202`  
		Last Modified: Wed, 07 Mar 2018 05:17:52 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdacb750aa7b70c3fbf7079c1c6a1902d065fa3ef835efe25765fcc92b63a988`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a01be126f4a4148eb3e6dc481c49acbcbe30043f44edaea10d8cbfc9d4ac39`  
		Last Modified: Wed, 07 Mar 2018 05:18:10 GMT  
		Size: 31.8 MB (31775722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce85bdc526cf83b49104a096f24004f215831aa8ee5a6f5cf4f131ce3e9912`  
		Last Modified: Wed, 07 Mar 2018 05:17:50 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5662b40c0986c55d64cf0492fbc9296b1d84bba06aaa12c8ba5fac1e4589da81`  
		Last Modified: Wed, 07 Mar 2018 05:18:45 GMT  
		Size: 149.9 MB (149927082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890a38357435884bb41e041a99cfac5e51d31d9d514ca9f5a04c81d68c9aa524`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:8874d0b0c85098c5ebc4888a365d921fc1ef0b9787ef7da089fa7d6408a52cd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248641016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57530e32249c5c9e9a41de0a73d376c57098cf6dd370686ce32fd4b131a7d8a0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:51:52 GMT
ADD file:b692b896b0edd9b58975a057f5cf1ffbb708c1e19051210af17c74e851cc3e9d in / 
# Wed, 07 Mar 2018 13:51:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:51:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:51:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:51:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:51:57 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:12:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:13:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:13:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:14:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:14:28 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:14:30 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 14:16:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:16:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:16:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:16:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ad81daf7d15843626b471a41bb1ab3959e0be552641bd869b946bf5a9a6d0ca1`  
		Last Modified: Wed, 07 Mar 2018 13:54:52 GMT  
		Size: 66.5 MB (66483588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd41ae8f709463fc3d9dbd6fcafcbe05d2ccd58fbc0a3e6430efb79c3d43aa`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f386f947ab554b90f853a00adbfeaafcace7831c9e77274eaa0bc7af3838d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08f616165305af3f3ead43e7e86e7046ff6a931a8f4285a0ee8812c41ec522d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03811c26fc00190fcf036253d253d71937e89ecb22bada1336b8f76b230476d`  
		Last Modified: Wed, 07 Mar 2018 13:54:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8bef12a6e0333f7b96fb3b0ee0f9213aff4256dd42828ad43b99edc4e771bc`  
		Last Modified: Wed, 07 Mar 2018 14:41:26 GMT  
		Size: 14.5 MB (14475026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f18c9a8d3e89e6063d11f9d1e1ec706d54b3fbb6220b2e403649040be870685`  
		Last Modified: Wed, 07 Mar 2018 14:41:21 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2ac7177b1ed1573ba36ddf6efc27bd45e381b314f4a745d31315a2e3dd0954`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6fd66f69dcf7af8ff011c102efb73f32b093980606f5dbb4e7e6e010ea761`  
		Last Modified: Wed, 07 Mar 2018 14:41:30 GMT  
		Size: 29.2 MB (29227524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86df45e9d77017773c1b95357454e4c2e9957e5f40f50c5cf69a239acb93ce34`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 788.3 KB (788335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50598a92a1bd79ae4748befd9a7f779efd4c048b7f84a649cfcd0bd07351b4c3`  
		Last Modified: Wed, 07 Mar 2018 14:42:01 GMT  
		Size: 137.6 MB (137574611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330e78d0207c2ca88bd6aeb97d7467b2caff8bf387da830f7bb2a8223735c7fa`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
