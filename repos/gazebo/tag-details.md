<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `gazebo`

-	[`gazebo:gzserver7`](#gazebogzserver7)
-	[`gazebo:gzserver7-xenial`](#gazebogzserver7-xenial)
-	[`gazebo:gzserver8`](#gazebogzserver8)
-	[`gazebo:gzserver8-xenial`](#gazebogzserver8-xenial)
-	[`gazebo:gzserver9`](#gazebogzserver9)
-	[`gazebo:gzserver9-bionic`](#gazebogzserver9-bionic)
-	[`gazebo:gzserver9-stretch`](#gazebogzserver9-stretch)
-	[`gazebo:gzserver9-xenial`](#gazebogzserver9-xenial)
-	[`gazebo:latest`](#gazebolatest)
-	[`gazebo:libgazebo7`](#gazebolibgazebo7)
-	[`gazebo:libgazebo7-xenial`](#gazebolibgazebo7-xenial)
-	[`gazebo:libgazebo8`](#gazebolibgazebo8)
-	[`gazebo:libgazebo8-xenial`](#gazebolibgazebo8-xenial)
-	[`gazebo:libgazebo9`](#gazebolibgazebo9)
-	[`gazebo:libgazebo9-bionic`](#gazebolibgazebo9-bionic)
-	[`gazebo:libgazebo9-stretch`](#gazebolibgazebo9-stretch)
-	[`gazebo:libgazebo9-xenial`](#gazebolibgazebo9-xenial)

## `gazebo:gzserver7`

```console
$ docker pull gazebo@sha256:d5b24953c8eeecb597bf8454264fab9e4567f018357cc29eb7b37c3e3e3764d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver7` - linux; amd64

```console
$ docker pull gazebo@sha256:49887a22b51a6bf43a1ed7afb13fde2e1c6d5e503c3a51d16391aefb666c6681
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249850904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5980dbf2bcabde818588e0232719f9edff13ef104f04aa14e4ffd8731fa0f2de`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:55:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 21:55:25 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 19 Nov 2018 21:57:20 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.14.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:57:21 GMT
EXPOSE 11345/tcp
# Mon, 19 Nov 2018 21:57:21 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Mon, 19 Nov 2018 21:57:21 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 19 Nov 2018 21:57:21 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73289f5b144f68412e6c2ea83c36c1756c184548da8e6c7d721dd6fd7a2bcec8`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2194b5d9305d63b244d755f1eb2bc5eb2fe94548436ed89971367414df64a1c9`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 5.5 KB (5522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38278df38a13cef7e4d7a89514289e863ee1f270b9ba0aecde7cf080fa670c5e`  
		Last Modified: Mon, 19 Nov 2018 22:16:18 GMT  
		Size: 189.8 MB (189757536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dc433eb5065b54bad01b0edd847dd467f05a0b44aa0d5d43f312cac59dd75c`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver7-xenial`

```console
$ docker pull gazebo@sha256:d5b24953c8eeecb597bf8454264fab9e4567f018357cc29eb7b37c3e3e3764d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver7-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:49887a22b51a6bf43a1ed7afb13fde2e1c6d5e503c3a51d16391aefb666c6681
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249850904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5980dbf2bcabde818588e0232719f9edff13ef104f04aa14e4ffd8731fa0f2de`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:55:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 21:55:25 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 19 Nov 2018 21:57:20 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.14.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:57:21 GMT
EXPOSE 11345/tcp
# Mon, 19 Nov 2018 21:57:21 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Mon, 19 Nov 2018 21:57:21 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 19 Nov 2018 21:57:21 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73289f5b144f68412e6c2ea83c36c1756c184548da8e6c7d721dd6fd7a2bcec8`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2194b5d9305d63b244d755f1eb2bc5eb2fe94548436ed89971367414df64a1c9`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 5.5 KB (5522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38278df38a13cef7e4d7a89514289e863ee1f270b9ba0aecde7cf080fa670c5e`  
		Last Modified: Mon, 19 Nov 2018 22:16:18 GMT  
		Size: 189.8 MB (189757536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dc433eb5065b54bad01b0edd847dd467f05a0b44aa0d5d43f312cac59dd75c`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver8`

```console
$ docker pull gazebo@sha256:181d09cd7e11565b619e520ed65a893b039f342f822400fe171c93fbd6a8be31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver8` - linux; amd64

```console
$ docker pull gazebo@sha256:646b0cbeddf95dbb40b6b4da6619c262d9004b6d64d8e37185cddf9a27f5fdb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278619135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71c32981f8990cef1564e2f232ef4fee27ee92340eec7d644843bc36ad45262f`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:55:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 21:55:25 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 19 Nov 2018 22:02:10 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:02:15 GMT
EXPOSE 11345/tcp
# Mon, 19 Nov 2018 22:02:16 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Mon, 19 Nov 2018 22:02:16 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 19 Nov 2018 22:02:16 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73289f5b144f68412e6c2ea83c36c1756c184548da8e6c7d721dd6fd7a2bcec8`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2194b5d9305d63b244d755f1eb2bc5eb2fe94548436ed89971367414df64a1c9`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 5.5 KB (5522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bad23c4b8c7284856206fef926ac270076ff0690625a23f3105a60942f050e`  
		Last Modified: Mon, 19 Nov 2018 22:19:12 GMT  
		Size: 218.5 MB (218525766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db51803b09645502aabb787c57d2427f6b30a19b5644bfeb26f54111b46bd12c`  
		Last Modified: Mon, 19 Nov 2018 22:18:37 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver8-xenial`

```console
$ docker pull gazebo@sha256:181d09cd7e11565b619e520ed65a893b039f342f822400fe171c93fbd6a8be31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver8-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:646b0cbeddf95dbb40b6b4da6619c262d9004b6d64d8e37185cddf9a27f5fdb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278619135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71c32981f8990cef1564e2f232ef4fee27ee92340eec7d644843bc36ad45262f`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:55:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 21:55:25 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 19 Nov 2018 22:02:10 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:02:15 GMT
EXPOSE 11345/tcp
# Mon, 19 Nov 2018 22:02:16 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Mon, 19 Nov 2018 22:02:16 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 19 Nov 2018 22:02:16 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73289f5b144f68412e6c2ea83c36c1756c184548da8e6c7d721dd6fd7a2bcec8`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2194b5d9305d63b244d755f1eb2bc5eb2fe94548436ed89971367414df64a1c9`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 5.5 KB (5522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bad23c4b8c7284856206fef926ac270076ff0690625a23f3105a60942f050e`  
		Last Modified: Mon, 19 Nov 2018 22:19:12 GMT  
		Size: 218.5 MB (218525766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db51803b09645502aabb787c57d2427f6b30a19b5644bfeb26f54111b46bd12c`  
		Last Modified: Mon, 19 Nov 2018 22:18:37 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver9`

```console
$ docker pull gazebo@sha256:5e657786165a881a7bab4766835f6391f40584a517828d87c38a82ff2d52d7d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `gazebo:gzserver9` - linux; amd64

```console
$ docker pull gazebo@sha256:45b8b3603be8e0ebf5eee31c265532a85bf17c3130ee14af2a9d2ca78e929469
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.2 MB (297197841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3ba50cf36f35885844c651669f24b7d716a6b12dcb8e5efdef9718853d9586`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:08:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 22:08:07 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 24 Dec 2018 23:28:43 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 24 Dec 2018 23:28:43 GMT
EXPOSE 11345
# Mon, 24 Dec 2018 23:28:43 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Mon, 24 Dec 2018 23:28:44 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 24 Dec 2018 23:28:44 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f952ee8207ba7bd8f05a26dbf3c530011a60a82b479c7b46221b905155a1f9de`  
		Last Modified: Mon, 19 Nov 2018 22:24:02 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd533576ee712b4aaad8a7c27b15253f40b385e04be2b45c8d1306543536250f`  
		Last Modified: Mon, 19 Nov 2018 22:24:02 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5061f6768083ad79ea912651b0497b227e6492510dcc2dfaee04bb5ba702b74b`  
		Last Modified: Mon, 24 Dec 2018 23:38:33 GMT  
		Size: 249.3 MB (249344344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d067b56066cbd161153f97ecb2db90323651b5091dca7cac7a373b0bf69a79fa`  
		Last Modified: Mon, 24 Dec 2018 23:37:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:gzserver9` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:04baf85014b53fbbb021274f20cdd36192423c28f9b29440348990fc298a0d33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279131180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee053dcd78fbe59878be9a5856067b9d5acc81ce863a567302d95fa1f50402f7`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 09:43:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 09:43:53 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 25 Dec 2018 09:56:31 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Dec 2018 09:56:34 GMT
EXPOSE 11345
# Tue, 25 Dec 2018 09:56:34 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 25 Dec 2018 09:56:35 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 25 Dec 2018 09:56:36 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612b3e7bd4844afaccfead5fc4a208ce98fb779027e80be8bf94976c2cd4e8d8`  
		Last Modified: Tue, 27 Nov 2018 10:21:15 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4910dcf0893089b2c80214acbdea723e40423a08cbd929c71743d744164312`  
		Last Modified: Tue, 27 Nov 2018 10:21:15 GMT  
		Size: 5.4 KB (5441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb1cce1e906cf2eef8c30083705028bedc6808811dee7a32db1da5b92241a0f`  
		Last Modified: Tue, 25 Dec 2018 10:35:20 GMT  
		Size: 235.6 MB (235559623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbfcb04bbb40ffabdea3a38f51abf6e088d50d38e77c7226b8235de356fe0f1d`  
		Last Modified: Tue, 25 Dec 2018 10:34:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver9-bionic`

```console
$ docker pull gazebo@sha256:5e657786165a881a7bab4766835f6391f40584a517828d87c38a82ff2d52d7d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `gazebo:gzserver9-bionic` - linux; amd64

```console
$ docker pull gazebo@sha256:45b8b3603be8e0ebf5eee31c265532a85bf17c3130ee14af2a9d2ca78e929469
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.2 MB (297197841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3ba50cf36f35885844c651669f24b7d716a6b12dcb8e5efdef9718853d9586`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:08:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 22:08:07 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 24 Dec 2018 23:28:43 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 24 Dec 2018 23:28:43 GMT
EXPOSE 11345
# Mon, 24 Dec 2018 23:28:43 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Mon, 24 Dec 2018 23:28:44 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 24 Dec 2018 23:28:44 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f952ee8207ba7bd8f05a26dbf3c530011a60a82b479c7b46221b905155a1f9de`  
		Last Modified: Mon, 19 Nov 2018 22:24:02 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd533576ee712b4aaad8a7c27b15253f40b385e04be2b45c8d1306543536250f`  
		Last Modified: Mon, 19 Nov 2018 22:24:02 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5061f6768083ad79ea912651b0497b227e6492510dcc2dfaee04bb5ba702b74b`  
		Last Modified: Mon, 24 Dec 2018 23:38:33 GMT  
		Size: 249.3 MB (249344344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d067b56066cbd161153f97ecb2db90323651b5091dca7cac7a373b0bf69a79fa`  
		Last Modified: Mon, 24 Dec 2018 23:37:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:gzserver9-bionic` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:04baf85014b53fbbb021274f20cdd36192423c28f9b29440348990fc298a0d33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279131180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee053dcd78fbe59878be9a5856067b9d5acc81ce863a567302d95fa1f50402f7`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 09:43:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 09:43:53 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 25 Dec 2018 09:56:31 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Dec 2018 09:56:34 GMT
EXPOSE 11345
# Tue, 25 Dec 2018 09:56:34 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 25 Dec 2018 09:56:35 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 25 Dec 2018 09:56:36 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612b3e7bd4844afaccfead5fc4a208ce98fb779027e80be8bf94976c2cd4e8d8`  
		Last Modified: Tue, 27 Nov 2018 10:21:15 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4910dcf0893089b2c80214acbdea723e40423a08cbd929c71743d744164312`  
		Last Modified: Tue, 27 Nov 2018 10:21:15 GMT  
		Size: 5.4 KB (5441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb1cce1e906cf2eef8c30083705028bedc6808811dee7a32db1da5b92241a0f`  
		Last Modified: Tue, 25 Dec 2018 10:35:20 GMT  
		Size: 235.6 MB (235559623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbfcb04bbb40ffabdea3a38f51abf6e088d50d38e77c7226b8235de356fe0f1d`  
		Last Modified: Tue, 25 Dec 2018 10:34:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver9-stretch`

```console
$ docker pull gazebo@sha256:d9f7e3a30a6f504c9aa68191ec04d061ce7220303150747e32bf334da4532b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:gzserver9-stretch` - linux; amd64

```console
$ docker pull gazebo@sha256:9a0a003a0428743dc7dcc4db84cbd149e305d3211a80e89a8c79f3170d31bf77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.5 MB (345487270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67e603681d7af1a35e45ea1ce939a743a98e080cb117068b2de45d5ea2d9903a`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:54:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 00:46:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 00:46:40 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 24 Dec 2018 23:34:23 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 24 Dec 2018 23:34:23 GMT
EXPOSE 11345
# Mon, 24 Dec 2018 23:34:23 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Mon, 24 Dec 2018 23:34:24 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 24 Dec 2018 23:34:24 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5a027b4a84d28f6f7fb49d2f4cbbe83abce22d72c0d94fa3808deae31a648`  
		Last Modified: Fri, 16 Nov 2018 17:20:43 GMT  
		Size: 21.1 MB (21073371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb77a096619ec9ca6d1222a5193efb98c37cef1f2b395993c22e1058e0d2cbff`  
		Last Modified: Tue, 27 Nov 2018 01:00:07 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc66ec6426953182799856e18109e4e3fb651b63323a0bd2b7853af751c40bbe`  
		Last Modified: Tue, 27 Nov 2018 01:00:07 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da5b5ca9b7f124d4df869623e96837e7784e64b6922bfde7d532294d0f010c0`  
		Last Modified: Mon, 24 Dec 2018 23:40:09 GMT  
		Size: 279.1 MB (279087047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98c3adc8898b8e074efd7d4041422e7eb8209ec8077fb7dc790db59270151d4`  
		Last Modified: Mon, 24 Dec 2018 23:39:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:gzserver9-stretch` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:27f5ab31845ef299e19c538e38d84b61f891c11759e1b6c3078e081b72c43265
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.3 MB (319335718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96752cca457334b439d76125845831137fbc9aa3530b8c46fb20434fabfd7e8f`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 12:59:08 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 12:59:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 12:59:15 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 27 Nov 2018 13:11:14 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 13:11:19 GMT
EXPOSE 11345/tcp
# Tue, 27 Nov 2018 13:11:19 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 27 Nov 2018 13:11:20 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 27 Nov 2018 13:11:20 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f91b3513e76659f7e80c78fcddf249633ef3705c81279a88bb3c67399b3decd`  
		Last Modified: Tue, 27 Nov 2018 13:14:33 GMT  
		Size: 19.5 MB (19543722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3284a500de9bcfef46a9273eaef8907952f0f9786bb9bf08bb2dd56fced2539b`  
		Last Modified: Tue, 27 Nov 2018 13:14:25 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba32d797633f081791f6a037965ca4dda268644751d75483a624fa2dd33ae34`  
		Last Modified: Tue, 27 Nov 2018 13:14:25 GMT  
		Size: 5.0 KB (5012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3b069312013a497203faae6d8bd8acd9165cc0de8d82182b648a5a4b54204d`  
		Last Modified: Tue, 27 Nov 2018 13:15:28 GMT  
		Size: 257.7 MB (257709236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c77080024d63b97d5c593053cbd5395c001ee6007395f7cf2b4b5515c52c2a1`  
		Last Modified: Tue, 27 Nov 2018 13:14:25 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:gzserver9-stretch` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:dbf9f3ea625d23e1e933f7fcb1f9506ec7e1acbc9242824ae832a3a7d633b405
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.0 MB (328045332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db3b4da2c699cecd3da54150683a58924f83127baf09aaf2d14267b8d8e998a4`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 10:02:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 10:02:57 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 25 Dec 2018 10:20:19 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Dec 2018 10:20:26 GMT
EXPOSE 11345
# Tue, 25 Dec 2018 10:20:26 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 25 Dec 2018 10:20:27 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 25 Dec 2018 10:20:29 GMT
CMD ["gzserver"]
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
	-	`sha256:f37552d18cd6e07626d82fe5fbd08a3c6d18471cde429a6897e0ae52150a1ef6`  
		Last Modified: Tue, 27 Nov 2018 10:25:58 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b54dbe83debf769be094a9d476cc7dc58b3d1e109d020ed2233ac876efaaf1`  
		Last Modified: Tue, 27 Nov 2018 10:25:58 GMT  
		Size: 5.0 KB (4989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47978ab10077d02db49db4b178e05a9d36cc7f936b80a15077a5b6114c742f39`  
		Last Modified: Tue, 25 Dec 2018 10:38:34 GMT  
		Size: 265.2 MB (265187722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3714e88379ff88e8bf239256c19a8b0625a7c394262ee387192c6861612000`  
		Last Modified: Tue, 25 Dec 2018 10:37:14 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver9-xenial`

```console
$ docker pull gazebo@sha256:df530c962062116416bf28b35df3a027165a67d6f604e6c73760700791cf009a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver9-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:5b11c55850d72b85d8a23527dae19bca3a8807d56e6aa0628154f251f5c52e97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279677300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705c181ddb9172661305bca6b06772d127c769bf0dccc74a743d2465009ee36b`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:55:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 21:55:25 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 24 Dec 2018 23:22:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 24 Dec 2018 23:22:22 GMT
EXPOSE 11345
# Mon, 24 Dec 2018 23:22:22 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Mon, 24 Dec 2018 23:22:22 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 24 Dec 2018 23:22:23 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73289f5b144f68412e6c2ea83c36c1756c184548da8e6c7d721dd6fd7a2bcec8`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2194b5d9305d63b244d755f1eb2bc5eb2fe94548436ed89971367414df64a1c9`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 5.5 KB (5522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307ef9face1550ec9d53cfc3005666df52a4ab43293f260da299ea1cdcf41366`  
		Last Modified: Mon, 24 Dec 2018 23:37:05 GMT  
		Size: 219.6 MB (219583931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c780d94ed14c6aabe8d18256423604c572b437cf38c9846c0e4e132f528966f`  
		Last Modified: Mon, 24 Dec 2018 23:36:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:latest`

```console
$ docker pull gazebo@sha256:edf72127222c247d1cd797573aa28e9f982b708daff88087b5cd786c93430bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `gazebo:latest` - linux; amd64

```console
$ docker pull gazebo@sha256:2736db61e993bdfb0d3886c207c6eb945e726d680d50e4ca5161f78d94d1f12c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **578.5 MB (578542372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb6d19a3e66a2c256e65c86fa1d20a95c37b87ee120b34b81ca4fdd4dbdcd49`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:08:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 22:08:07 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 24 Dec 2018 23:28:43 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 24 Dec 2018 23:28:43 GMT
EXPOSE 11345
# Mon, 24 Dec 2018 23:28:43 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Mon, 24 Dec 2018 23:28:44 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 24 Dec 2018 23:28:44 GMT
CMD ["gzserver"]
# Mon, 24 Dec 2018 23:32:17 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f952ee8207ba7bd8f05a26dbf3c530011a60a82b479c7b46221b905155a1f9de`  
		Last Modified: Mon, 19 Nov 2018 22:24:02 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd533576ee712b4aaad8a7c27b15253f40b385e04be2b45c8d1306543536250f`  
		Last Modified: Mon, 19 Nov 2018 22:24:02 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5061f6768083ad79ea912651b0497b227e6492510dcc2dfaee04bb5ba702b74b`  
		Last Modified: Mon, 24 Dec 2018 23:38:33 GMT  
		Size: 249.3 MB (249344344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d067b56066cbd161153f97ecb2db90323651b5091dca7cac7a373b0bf69a79fa`  
		Last Modified: Mon, 24 Dec 2018 23:37:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309961889178c023c300180f96b742678d8e93cb8c21e94c853d6e635e84983d`  
		Last Modified: Mon, 24 Dec 2018 23:39:24 GMT  
		Size: 281.3 MB (281344531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:latest` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:3e244d806ff5bed94e4b0564cad7c03900bbd8bb632638f029267b0222a1fb3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.1 MB (497079387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38ae3c77f9b5341469d90faabad65f64cac56efcc5ddae9cde7822879b44f05`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 09:43:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 09:43:53 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 25 Dec 2018 09:56:31 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Dec 2018 09:56:34 GMT
EXPOSE 11345
# Tue, 25 Dec 2018 09:56:34 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 25 Dec 2018 09:56:35 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 25 Dec 2018 09:56:36 GMT
CMD ["gzserver"]
# Tue, 25 Dec 2018 10:07:55 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612b3e7bd4844afaccfead5fc4a208ce98fb779027e80be8bf94976c2cd4e8d8`  
		Last Modified: Tue, 27 Nov 2018 10:21:15 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4910dcf0893089b2c80214acbdea723e40423a08cbd929c71743d744164312`  
		Last Modified: Tue, 27 Nov 2018 10:21:15 GMT  
		Size: 5.4 KB (5441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb1cce1e906cf2eef8c30083705028bedc6808811dee7a32db1da5b92241a0f`  
		Last Modified: Tue, 25 Dec 2018 10:35:20 GMT  
		Size: 235.6 MB (235559623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbfcb04bbb40ffabdea3a38f51abf6e088d50d38e77c7226b8235de356fe0f1d`  
		Last Modified: Tue, 25 Dec 2018 10:34:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d0e8d5e95103ac7724a4e6d65087fd467f5361c03d9846202d393d23b87f2a`  
		Last Modified: Tue, 25 Dec 2018 10:37:00 GMT  
		Size: 217.9 MB (217948207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo7`

```console
$ docker pull gazebo@sha256:4221639f3989d2708f71a86ee28eca45773eac4ae0d1cf5347d42729561fbaeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7` - linux; amd64

```console
$ docker pull gazebo@sha256:deeee5b404ba7a8608ba57c0e5ddf61a7faf47c58fff61f6e52e2807c25a940d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **509.4 MB (509446865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863fc94ace1290bb6749f6be98acc1c825c3ddfa7ca1a04b802ac9df9d8196e1`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:55:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 21:55:25 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 19 Nov 2018 21:57:20 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.14.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:57:21 GMT
EXPOSE 11345/tcp
# Mon, 19 Nov 2018 21:57:21 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Mon, 19 Nov 2018 21:57:21 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 19 Nov 2018 21:57:21 GMT
CMD ["gzserver"]
# Mon, 19 Nov 2018 22:00:33 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.14.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73289f5b144f68412e6c2ea83c36c1756c184548da8e6c7d721dd6fd7a2bcec8`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2194b5d9305d63b244d755f1eb2bc5eb2fe94548436ed89971367414df64a1c9`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 5.5 KB (5522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38278df38a13cef7e4d7a89514289e863ee1f270b9ba0aecde7cf080fa670c5e`  
		Last Modified: Mon, 19 Nov 2018 22:16:18 GMT  
		Size: 189.8 MB (189757536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dc433eb5065b54bad01b0edd847dd467f05a0b44aa0d5d43f312cac59dd75c`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3277214f37bb41607c62e0bf7b586c3af11c4cc22d5f025e6d08028aab3453`  
		Last Modified: Mon, 19 Nov 2018 22:17:51 GMT  
		Size: 259.6 MB (259595961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo7-xenial`

```console
$ docker pull gazebo@sha256:4221639f3989d2708f71a86ee28eca45773eac4ae0d1cf5347d42729561fbaeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:deeee5b404ba7a8608ba57c0e5ddf61a7faf47c58fff61f6e52e2807c25a940d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **509.4 MB (509446865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863fc94ace1290bb6749f6be98acc1c825c3ddfa7ca1a04b802ac9df9d8196e1`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:55:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 21:55:25 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 19 Nov 2018 21:57:20 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.14.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:57:21 GMT
EXPOSE 11345/tcp
# Mon, 19 Nov 2018 21:57:21 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Mon, 19 Nov 2018 21:57:21 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 19 Nov 2018 21:57:21 GMT
CMD ["gzserver"]
# Mon, 19 Nov 2018 22:00:33 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.14.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73289f5b144f68412e6c2ea83c36c1756c184548da8e6c7d721dd6fd7a2bcec8`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2194b5d9305d63b244d755f1eb2bc5eb2fe94548436ed89971367414df64a1c9`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 5.5 KB (5522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38278df38a13cef7e4d7a89514289e863ee1f270b9ba0aecde7cf080fa670c5e`  
		Last Modified: Mon, 19 Nov 2018 22:16:18 GMT  
		Size: 189.8 MB (189757536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dc433eb5065b54bad01b0edd847dd467f05a0b44aa0d5d43f312cac59dd75c`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3277214f37bb41607c62e0bf7b586c3af11c4cc22d5f025e6d08028aab3453`  
		Last Modified: Mon, 19 Nov 2018 22:17:51 GMT  
		Size: 259.6 MB (259595961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo8`

```console
$ docker pull gazebo@sha256:1a28de9424a56b23f4cb52aedf9d5237094406ed21694e21323e93ddbe18f0a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8` - linux; amd64

```console
$ docker pull gazebo@sha256:4c5a3418ea081eebbdca962bf5fc2677af8d0fa6f3bd5cba3b402e296a186ab5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.6 MB (512562390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b2a67f60035f992e74ea0f8e52b1d21133d29539e6a1c977dc91385b1f3186`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:55:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 21:55:25 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 19 Nov 2018 22:02:10 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:02:15 GMT
EXPOSE 11345/tcp
# Mon, 19 Nov 2018 22:02:16 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Mon, 19 Nov 2018 22:02:16 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 19 Nov 2018 22:02:16 GMT
CMD ["gzserver"]
# Mon, 19 Nov 2018 22:04:01 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73289f5b144f68412e6c2ea83c36c1756c184548da8e6c7d721dd6fd7a2bcec8`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2194b5d9305d63b244d755f1eb2bc5eb2fe94548436ed89971367414df64a1c9`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 5.5 KB (5522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bad23c4b8c7284856206fef926ac270076ff0690625a23f3105a60942f050e`  
		Last Modified: Mon, 19 Nov 2018 22:19:12 GMT  
		Size: 218.5 MB (218525766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db51803b09645502aabb787c57d2427f6b30a19b5644bfeb26f54111b46bd12c`  
		Last Modified: Mon, 19 Nov 2018 22:18:37 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43b81188d76ce98dffe17fb3e2193403066f85129e003e8c37608fc67c295f7`  
		Last Modified: Mon, 19 Nov 2018 22:20:43 GMT  
		Size: 233.9 MB (233943255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo8-xenial`

```console
$ docker pull gazebo@sha256:1a28de9424a56b23f4cb52aedf9d5237094406ed21694e21323e93ddbe18f0a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:4c5a3418ea081eebbdca962bf5fc2677af8d0fa6f3bd5cba3b402e296a186ab5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.6 MB (512562390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b2a67f60035f992e74ea0f8e52b1d21133d29539e6a1c977dc91385b1f3186`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:55:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 21:55:25 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 19 Nov 2018 22:02:10 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:02:15 GMT
EXPOSE 11345/tcp
# Mon, 19 Nov 2018 22:02:16 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Mon, 19 Nov 2018 22:02:16 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 19 Nov 2018 22:02:16 GMT
CMD ["gzserver"]
# Mon, 19 Nov 2018 22:04:01 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73289f5b144f68412e6c2ea83c36c1756c184548da8e6c7d721dd6fd7a2bcec8`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2194b5d9305d63b244d755f1eb2bc5eb2fe94548436ed89971367414df64a1c9`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 5.5 KB (5522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bad23c4b8c7284856206fef926ac270076ff0690625a23f3105a60942f050e`  
		Last Modified: Mon, 19 Nov 2018 22:19:12 GMT  
		Size: 218.5 MB (218525766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db51803b09645502aabb787c57d2427f6b30a19b5644bfeb26f54111b46bd12c`  
		Last Modified: Mon, 19 Nov 2018 22:18:37 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43b81188d76ce98dffe17fb3e2193403066f85129e003e8c37608fc67c295f7`  
		Last Modified: Mon, 19 Nov 2018 22:20:43 GMT  
		Size: 233.9 MB (233943255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo9`

```console
$ docker pull gazebo@sha256:edf72127222c247d1cd797573aa28e9f982b708daff88087b5cd786c93430bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `gazebo:libgazebo9` - linux; amd64

```console
$ docker pull gazebo@sha256:2736db61e993bdfb0d3886c207c6eb945e726d680d50e4ca5161f78d94d1f12c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **578.5 MB (578542372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb6d19a3e66a2c256e65c86fa1d20a95c37b87ee120b34b81ca4fdd4dbdcd49`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:08:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 22:08:07 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 24 Dec 2018 23:28:43 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 24 Dec 2018 23:28:43 GMT
EXPOSE 11345
# Mon, 24 Dec 2018 23:28:43 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Mon, 24 Dec 2018 23:28:44 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 24 Dec 2018 23:28:44 GMT
CMD ["gzserver"]
# Mon, 24 Dec 2018 23:32:17 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f952ee8207ba7bd8f05a26dbf3c530011a60a82b479c7b46221b905155a1f9de`  
		Last Modified: Mon, 19 Nov 2018 22:24:02 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd533576ee712b4aaad8a7c27b15253f40b385e04be2b45c8d1306543536250f`  
		Last Modified: Mon, 19 Nov 2018 22:24:02 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5061f6768083ad79ea912651b0497b227e6492510dcc2dfaee04bb5ba702b74b`  
		Last Modified: Mon, 24 Dec 2018 23:38:33 GMT  
		Size: 249.3 MB (249344344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d067b56066cbd161153f97ecb2db90323651b5091dca7cac7a373b0bf69a79fa`  
		Last Modified: Mon, 24 Dec 2018 23:37:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309961889178c023c300180f96b742678d8e93cb8c21e94c853d6e635e84983d`  
		Last Modified: Mon, 24 Dec 2018 23:39:24 GMT  
		Size: 281.3 MB (281344531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:3e244d806ff5bed94e4b0564cad7c03900bbd8bb632638f029267b0222a1fb3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.1 MB (497079387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38ae3c77f9b5341469d90faabad65f64cac56efcc5ddae9cde7822879b44f05`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 09:43:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 09:43:53 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 25 Dec 2018 09:56:31 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Dec 2018 09:56:34 GMT
EXPOSE 11345
# Tue, 25 Dec 2018 09:56:34 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 25 Dec 2018 09:56:35 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 25 Dec 2018 09:56:36 GMT
CMD ["gzserver"]
# Tue, 25 Dec 2018 10:07:55 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612b3e7bd4844afaccfead5fc4a208ce98fb779027e80be8bf94976c2cd4e8d8`  
		Last Modified: Tue, 27 Nov 2018 10:21:15 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4910dcf0893089b2c80214acbdea723e40423a08cbd929c71743d744164312`  
		Last Modified: Tue, 27 Nov 2018 10:21:15 GMT  
		Size: 5.4 KB (5441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb1cce1e906cf2eef8c30083705028bedc6808811dee7a32db1da5b92241a0f`  
		Last Modified: Tue, 25 Dec 2018 10:35:20 GMT  
		Size: 235.6 MB (235559623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbfcb04bbb40ffabdea3a38f51abf6e088d50d38e77c7226b8235de356fe0f1d`  
		Last Modified: Tue, 25 Dec 2018 10:34:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d0e8d5e95103ac7724a4e6d65087fd467f5361c03d9846202d393d23b87f2a`  
		Last Modified: Tue, 25 Dec 2018 10:37:00 GMT  
		Size: 217.9 MB (217948207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo9-bionic`

```console
$ docker pull gazebo@sha256:edf72127222c247d1cd797573aa28e9f982b708daff88087b5cd786c93430bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `gazebo:libgazebo9-bionic` - linux; amd64

```console
$ docker pull gazebo@sha256:2736db61e993bdfb0d3886c207c6eb945e726d680d50e4ca5161f78d94d1f12c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **578.5 MB (578542372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb6d19a3e66a2c256e65c86fa1d20a95c37b87ee120b34b81ca4fdd4dbdcd49`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:08:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 22:08:07 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 24 Dec 2018 23:28:43 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 24 Dec 2018 23:28:43 GMT
EXPOSE 11345
# Mon, 24 Dec 2018 23:28:43 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Mon, 24 Dec 2018 23:28:44 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 24 Dec 2018 23:28:44 GMT
CMD ["gzserver"]
# Mon, 24 Dec 2018 23:32:17 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f952ee8207ba7bd8f05a26dbf3c530011a60a82b479c7b46221b905155a1f9de`  
		Last Modified: Mon, 19 Nov 2018 22:24:02 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd533576ee712b4aaad8a7c27b15253f40b385e04be2b45c8d1306543536250f`  
		Last Modified: Mon, 19 Nov 2018 22:24:02 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5061f6768083ad79ea912651b0497b227e6492510dcc2dfaee04bb5ba702b74b`  
		Last Modified: Mon, 24 Dec 2018 23:38:33 GMT  
		Size: 249.3 MB (249344344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d067b56066cbd161153f97ecb2db90323651b5091dca7cac7a373b0bf69a79fa`  
		Last Modified: Mon, 24 Dec 2018 23:37:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309961889178c023c300180f96b742678d8e93cb8c21e94c853d6e635e84983d`  
		Last Modified: Mon, 24 Dec 2018 23:39:24 GMT  
		Size: 281.3 MB (281344531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-bionic` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:3e244d806ff5bed94e4b0564cad7c03900bbd8bb632638f029267b0222a1fb3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.1 MB (497079387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38ae3c77f9b5341469d90faabad65f64cac56efcc5ddae9cde7822879b44f05`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 09:43:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 09:43:53 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 25 Dec 2018 09:56:31 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Dec 2018 09:56:34 GMT
EXPOSE 11345
# Tue, 25 Dec 2018 09:56:34 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 25 Dec 2018 09:56:35 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 25 Dec 2018 09:56:36 GMT
CMD ["gzserver"]
# Tue, 25 Dec 2018 10:07:55 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612b3e7bd4844afaccfead5fc4a208ce98fb779027e80be8bf94976c2cd4e8d8`  
		Last Modified: Tue, 27 Nov 2018 10:21:15 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4910dcf0893089b2c80214acbdea723e40423a08cbd929c71743d744164312`  
		Last Modified: Tue, 27 Nov 2018 10:21:15 GMT  
		Size: 5.4 KB (5441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb1cce1e906cf2eef8c30083705028bedc6808811dee7a32db1da5b92241a0f`  
		Last Modified: Tue, 25 Dec 2018 10:35:20 GMT  
		Size: 235.6 MB (235559623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbfcb04bbb40ffabdea3a38f51abf6e088d50d38e77c7226b8235de356fe0f1d`  
		Last Modified: Tue, 25 Dec 2018 10:34:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d0e8d5e95103ac7724a4e6d65087fd467f5361c03d9846202d393d23b87f2a`  
		Last Modified: Tue, 25 Dec 2018 10:37:00 GMT  
		Size: 217.9 MB (217948207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo9-stretch`

```console
$ docker pull gazebo@sha256:c524720ba050b0162d963d8517aad3878a8b9c53c46d50f53f959f298dbd286e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:libgazebo9-stretch` - linux; amd64

```console
$ docker pull gazebo@sha256:de8789acd683a7ec1d17f9cfde76e2ac97b839d9d3984127434cfd5042ebd8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.0 MB (652014246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcacc306db9d3def91abf81d7f5045b028ba5cd69bc2ea675c97ad14a79c74b`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:54:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 00:46:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 00:46:40 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 24 Dec 2018 23:34:23 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 24 Dec 2018 23:34:23 GMT
EXPOSE 11345
# Mon, 24 Dec 2018 23:34:23 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Mon, 24 Dec 2018 23:34:24 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 24 Dec 2018 23:34:24 GMT
CMD ["gzserver"]
# Mon, 24 Dec 2018 23:36:08 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5a027b4a84d28f6f7fb49d2f4cbbe83abce22d72c0d94fa3808deae31a648`  
		Last Modified: Fri, 16 Nov 2018 17:20:43 GMT  
		Size: 21.1 MB (21073371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb77a096619ec9ca6d1222a5193efb98c37cef1f2b395993c22e1058e0d2cbff`  
		Last Modified: Tue, 27 Nov 2018 01:00:07 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc66ec6426953182799856e18109e4e3fb651b63323a0bd2b7853af751c40bbe`  
		Last Modified: Tue, 27 Nov 2018 01:00:07 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da5b5ca9b7f124d4df869623e96837e7784e64b6922bfde7d532294d0f010c0`  
		Last Modified: Mon, 24 Dec 2018 23:40:09 GMT  
		Size: 279.1 MB (279087047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98c3adc8898b8e074efd7d4041422e7eb8209ec8077fb7dc790db59270151d4`  
		Last Modified: Mon, 24 Dec 2018 23:39:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8107f2f9412af9fee4d805a8c341c5c8869885adc4b7b68c5be461355935e4`  
		Last Modified: Mon, 24 Dec 2018 23:41:02 GMT  
		Size: 306.5 MB (306526976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:ac4509c69e0a6f9ac7663691aeefa7774caacb672919d336a2475c2d12748601
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.8 MB (596787132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e99d487382538844d65e5e470b87e267e83031ccbe8d025bc4a7ad43bcbe70`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 12:59:08 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 12:59:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 12:59:15 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 27 Nov 2018 13:11:14 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 13:11:19 GMT
EXPOSE 11345/tcp
# Tue, 27 Nov 2018 13:11:19 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 27 Nov 2018 13:11:20 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 27 Nov 2018 13:11:20 GMT
CMD ["gzserver"]
# Tue, 27 Nov 2018 13:14:03 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.5.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f91b3513e76659f7e80c78fcddf249633ef3705c81279a88bb3c67399b3decd`  
		Last Modified: Tue, 27 Nov 2018 13:14:33 GMT  
		Size: 19.5 MB (19543722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3284a500de9bcfef46a9273eaef8907952f0f9786bb9bf08bb2dd56fced2539b`  
		Last Modified: Tue, 27 Nov 2018 13:14:25 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba32d797633f081791f6a037965ca4dda268644751d75483a624fa2dd33ae34`  
		Last Modified: Tue, 27 Nov 2018 13:14:25 GMT  
		Size: 5.0 KB (5012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3b069312013a497203faae6d8bd8acd9165cc0de8d82182b648a5a4b54204d`  
		Last Modified: Tue, 27 Nov 2018 13:15:28 GMT  
		Size: 257.7 MB (257709236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c77080024d63b97d5c593053cbd5395c001ee6007395f7cf2b4b5515c52c2a1`  
		Last Modified: Tue, 27 Nov 2018 13:14:25 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b52b8b29e6d126138c38296739fb9960ed4f12c4306aaf5eda3abe976ac590`  
		Last Modified: Tue, 27 Nov 2018 13:17:07 GMT  
		Size: 277.5 MB (277451414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:b5c5dfc821d2de8124c4b21cff3ca799b6df83bebbccb1bed8cb4133b6d4c2a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.9 MB (585860846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9641a00643c44af0df1b0ea1d739de45d71040cd5976a2b748bf82694bcc5ab7`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 10:02:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 10:02:57 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 25 Dec 2018 10:20:19 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Dec 2018 10:20:26 GMT
EXPOSE 11345
# Tue, 25 Dec 2018 10:20:26 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 25 Dec 2018 10:20:27 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 25 Dec 2018 10:20:29 GMT
CMD ["gzserver"]
# Tue, 25 Dec 2018 10:33:37 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f37552d18cd6e07626d82fe5fbd08a3c6d18471cde429a6897e0ae52150a1ef6`  
		Last Modified: Tue, 27 Nov 2018 10:25:58 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b54dbe83debf769be094a9d476cc7dc58b3d1e109d020ed2233ac876efaaf1`  
		Last Modified: Tue, 27 Nov 2018 10:25:58 GMT  
		Size: 5.0 KB (4989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47978ab10077d02db49db4b178e05a9d36cc7f936b80a15077a5b6114c742f39`  
		Last Modified: Tue, 25 Dec 2018 10:38:34 GMT  
		Size: 265.2 MB (265187722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3714e88379ff88e8bf239256c19a8b0625a7c394262ee387192c6861612000`  
		Last Modified: Tue, 25 Dec 2018 10:37:14 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92861c7a2ac5fb0c46c4dee378b36a8c638620b61e7cb7a1fa1b177bcd3e7441`  
		Last Modified: Tue, 25 Dec 2018 10:40:22 GMT  
		Size: 257.8 MB (257815514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo9-xenial`

```console
$ docker pull gazebo@sha256:b38396fabe8df73e5c666b1f2a694e2d9e4b4f12057715c16d27b84e42a0ca53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo9-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:4ae1fc681b392f5710db27365c199d15e1c44944f42026eb4c9fdf51ce2d4d12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.1 MB (525125679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc838b7215c300f6014a1228976a09956371bf6b29cb041078ef5b60805df76`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:55:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 21:55:25 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 24 Dec 2018 23:22:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 24 Dec 2018 23:22:22 GMT
EXPOSE 11345
# Mon, 24 Dec 2018 23:22:22 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Mon, 24 Dec 2018 23:22:22 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 24 Dec 2018 23:22:23 GMT
CMD ["gzserver"]
# Mon, 24 Dec 2018 23:25:26 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73289f5b144f68412e6c2ea83c36c1756c184548da8e6c7d721dd6fd7a2bcec8`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2194b5d9305d63b244d755f1eb2bc5eb2fe94548436ed89971367414df64a1c9`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 5.5 KB (5522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307ef9face1550ec9d53cfc3005666df52a4ab43293f260da299ea1cdcf41366`  
		Last Modified: Mon, 24 Dec 2018 23:37:05 GMT  
		Size: 219.6 MB (219583931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c780d94ed14c6aabe8d18256423604c572b437cf38c9846c0e4e132f528966f`  
		Last Modified: Mon, 24 Dec 2018 23:36:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac38146c8ed79c57c009750213424e109ac35b7e8d57ab3734083e3fc3ed7797`  
		Last Modified: Mon, 24 Dec 2018 23:37:50 GMT  
		Size: 245.4 MB (245448379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
