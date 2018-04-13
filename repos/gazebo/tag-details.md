<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `gazebo`

-	[`gazebo:gzserver4`](#gazebogzserver4)
-	[`gazebo:gzserver4-trusty`](#gazebogzserver4-trusty)
-	[`gazebo:gzserver5`](#gazebogzserver5)
-	[`gazebo:gzserver5-trusty`](#gazebogzserver5-trusty)
-	[`gazebo:gzserver6`](#gazebogzserver6)
-	[`gazebo:gzserver6-trusty`](#gazebogzserver6-trusty)
-	[`gazebo:gzserver7`](#gazebogzserver7)
-	[`gazebo:gzserver7-xenial`](#gazebogzserver7-xenial)
-	[`gazebo:gzserver8`](#gazebogzserver8)
-	[`gazebo:gzserver8-xenial`](#gazebogzserver8-xenial)
-	[`gazebo:gzserver9`](#gazebogzserver9)
-	[`gazebo:gzserver9-xenial`](#gazebogzserver9-xenial)
-	[`gazebo:latest`](#gazebolatest)
-	[`gazebo:libgazebo4`](#gazebolibgazebo4)
-	[`gazebo:libgazebo4-trusty`](#gazebolibgazebo4-trusty)
-	[`gazebo:libgazebo5`](#gazebolibgazebo5)
-	[`gazebo:libgazebo5-trusty`](#gazebolibgazebo5-trusty)
-	[`gazebo:libgazebo6`](#gazebolibgazebo6)
-	[`gazebo:libgazebo6-trusty`](#gazebolibgazebo6-trusty)
-	[`gazebo:libgazebo7`](#gazebolibgazebo7)
-	[`gazebo:libgazebo7-xenial`](#gazebolibgazebo7-xenial)
-	[`gazebo:libgazebo8`](#gazebolibgazebo8)
-	[`gazebo:libgazebo8-xenial`](#gazebolibgazebo8-xenial)
-	[`gazebo:libgazebo9`](#gazebolibgazebo9)
-	[`gazebo:libgazebo9-xenial`](#gazebolibgazebo9-xenial)

## `gazebo:gzserver4`

```console
$ docker pull gazebo@sha256:efdd8dfeb371ca9f83f1b52da8b736b2d26ce9f9b71e7afc6774b38572a49e7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver4` - linux; amd64

```console
$ docker pull gazebo@sha256:4dad4bcfc1b9c7604badafe72f3b6d21b666d92a8c266a6bc15619d8063af2c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219617346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9568b8575b2f084a16281c39eefcce01585ff834db49190e2518e64117ae12e5`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:33:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 12 Apr 2018 23:33:46 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 12 Apr 2018 23:35:00 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 23:35:00 GMT
EXPOSE 11345/tcp
# Thu, 12 Apr 2018 23:35:01 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 12 Apr 2018 23:35:01 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 12 Apr 2018 23:35:01 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdde1f371a819fcaddbabfd04371bd9147a290ed0c587c7f5d68d722be6d326`  
		Last Modified: Fri, 13 Apr 2018 02:16:21 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9dff326fbc9fd35342c4fe1b022d0400416adaf35e021bbd9cc73eeb4b166e`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fa2a99d13faf72107efbb3fce8faca02b360b0d1d6811eab8fb5e0070fcf11`  
		Last Modified: Fri, 13 Apr 2018 02:16:45 GMT  
		Size: 146.5 MB (146464965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcce72b455a3b6f009eabf7c78402a56e2e03e9855eb4e7b86a9e92173ce512`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver4-trusty`

```console
$ docker pull gazebo@sha256:efdd8dfeb371ca9f83f1b52da8b736b2d26ce9f9b71e7afc6774b38572a49e7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver4-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:4dad4bcfc1b9c7604badafe72f3b6d21b666d92a8c266a6bc15619d8063af2c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219617346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9568b8575b2f084a16281c39eefcce01585ff834db49190e2518e64117ae12e5`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:33:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 12 Apr 2018 23:33:46 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 12 Apr 2018 23:35:00 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 23:35:00 GMT
EXPOSE 11345/tcp
# Thu, 12 Apr 2018 23:35:01 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 12 Apr 2018 23:35:01 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 12 Apr 2018 23:35:01 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdde1f371a819fcaddbabfd04371bd9147a290ed0c587c7f5d68d722be6d326`  
		Last Modified: Fri, 13 Apr 2018 02:16:21 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9dff326fbc9fd35342c4fe1b022d0400416adaf35e021bbd9cc73eeb4b166e`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fa2a99d13faf72107efbb3fce8faca02b360b0d1d6811eab8fb5e0070fcf11`  
		Last Modified: Fri, 13 Apr 2018 02:16:45 GMT  
		Size: 146.5 MB (146464965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcce72b455a3b6f009eabf7c78402a56e2e03e9855eb4e7b86a9e92173ce512`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver5`

```console
$ docker pull gazebo@sha256:ad7af2880c757a2aea101130c2b2498b6ab6df3a7d7fb1d609cb41ee6090208e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver5` - linux; amd64

```console
$ docker pull gazebo@sha256:4d99d2d639893e959d12f13a57432e1bd998eccd46f86840f37922f36a1a96b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240420954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a800109d157d5dcf15c64c75801fbb10b5ea200edd0f7ae3395a9d337c8c151a`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:33:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 12 Apr 2018 23:33:46 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 12 Apr 2018 23:56:14 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 23:56:15 GMT
EXPOSE 11345/tcp
# Thu, 12 Apr 2018 23:56:15 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 12 Apr 2018 23:56:15 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 12 Apr 2018 23:56:16 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdde1f371a819fcaddbabfd04371bd9147a290ed0c587c7f5d68d722be6d326`  
		Last Modified: Fri, 13 Apr 2018 02:16:21 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9dff326fbc9fd35342c4fe1b022d0400416adaf35e021bbd9cc73eeb4b166e`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3b29a4db6a989214b69c68861eaaa2314eb35d68ee6fc25e3fc2433aca9c5`  
		Last Modified: Fri, 13 Apr 2018 02:47:24 GMT  
		Size: 167.3 MB (167268574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7f6293bf1891b453932ede8469e0039f49459acd8c60c705c122613c1df09e`  
		Last Modified: Fri, 13 Apr 2018 02:46:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver5-trusty`

```console
$ docker pull gazebo@sha256:ad7af2880c757a2aea101130c2b2498b6ab6df3a7d7fb1d609cb41ee6090208e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver5-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:4d99d2d639893e959d12f13a57432e1bd998eccd46f86840f37922f36a1a96b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240420954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a800109d157d5dcf15c64c75801fbb10b5ea200edd0f7ae3395a9d337c8c151a`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:33:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 12 Apr 2018 23:33:46 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 12 Apr 2018 23:56:14 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 23:56:15 GMT
EXPOSE 11345/tcp
# Thu, 12 Apr 2018 23:56:15 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 12 Apr 2018 23:56:15 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 12 Apr 2018 23:56:16 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdde1f371a819fcaddbabfd04371bd9147a290ed0c587c7f5d68d722be6d326`  
		Last Modified: Fri, 13 Apr 2018 02:16:21 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9dff326fbc9fd35342c4fe1b022d0400416adaf35e021bbd9cc73eeb4b166e`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3b29a4db6a989214b69c68861eaaa2314eb35d68ee6fc25e3fc2433aca9c5`  
		Last Modified: Fri, 13 Apr 2018 02:47:24 GMT  
		Size: 167.3 MB (167268574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7f6293bf1891b453932ede8469e0039f49459acd8c60c705c122613c1df09e`  
		Last Modified: Fri, 13 Apr 2018 02:46:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver6`

```console
$ docker pull gazebo@sha256:44de9125c01d76748c59ad27dc657649af8eae3cfc3b2d9c992754d127539048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver6` - linux; amd64

```console
$ docker pull gazebo@sha256:1aa7904841b96d0f4f712073c3d6ec843e6765cbcba8ac77fb839adb3e5d3927
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244488160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae502acf11288e54562063b494f2b6d1f470e53fcebc79f7aecb1db6e3d715b0`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:33:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 12 Apr 2018 23:33:46 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 13 Apr 2018 00:21:16 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 00:21:16 GMT
EXPOSE 11345/tcp
# Fri, 13 Apr 2018 00:21:17 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 13 Apr 2018 00:21:17 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 13 Apr 2018 00:21:17 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdde1f371a819fcaddbabfd04371bd9147a290ed0c587c7f5d68d722be6d326`  
		Last Modified: Fri, 13 Apr 2018 02:16:21 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9dff326fbc9fd35342c4fe1b022d0400416adaf35e021bbd9cc73eeb4b166e`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8298e42e2a36667e60de5e0e0f772b7d380fa202d8a52034a1e44f8be47301f3`  
		Last Modified: Fri, 13 Apr 2018 03:26:50 GMT  
		Size: 171.3 MB (171335780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d82d0f7eb3fe1fb56d05cbf49c88ff543009bed06ac40bf0dd407cbfd66af0e`  
		Last Modified: Fri, 13 Apr 2018 03:26:23 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver6-trusty`

```console
$ docker pull gazebo@sha256:44de9125c01d76748c59ad27dc657649af8eae3cfc3b2d9c992754d127539048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver6-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:1aa7904841b96d0f4f712073c3d6ec843e6765cbcba8ac77fb839adb3e5d3927
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244488160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae502acf11288e54562063b494f2b6d1f470e53fcebc79f7aecb1db6e3d715b0`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:33:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 12 Apr 2018 23:33:46 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 13 Apr 2018 00:21:16 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 00:21:16 GMT
EXPOSE 11345/tcp
# Fri, 13 Apr 2018 00:21:17 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 13 Apr 2018 00:21:17 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 13 Apr 2018 00:21:17 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdde1f371a819fcaddbabfd04371bd9147a290ed0c587c7f5d68d722be6d326`  
		Last Modified: Fri, 13 Apr 2018 02:16:21 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9dff326fbc9fd35342c4fe1b022d0400416adaf35e021bbd9cc73eeb4b166e`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8298e42e2a36667e60de5e0e0f772b7d380fa202d8a52034a1e44f8be47301f3`  
		Last Modified: Fri, 13 Apr 2018 03:26:50 GMT  
		Size: 171.3 MB (171335780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d82d0f7eb3fe1fb56d05cbf49c88ff543009bed06ac40bf0dd407cbfd66af0e`  
		Last Modified: Fri, 13 Apr 2018 03:26:23 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver7`

```console
$ docker pull gazebo@sha256:8345ac79eac41c6a2b3b458029dc8d3d6657bdae5255196ccf7c74de594530e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver7` - linux; amd64

```console
$ docker pull gazebo@sha256:9308c09297e7ec279f41a1599d8cad6d607ecb60f52edc5bac8ee4cb5e8e64a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235391637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:092b3f423a513f6a8b387c5e6812bdc5b0ed1612d8aba9133b4da27f4f659987`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 00:49:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Fri, 13 Apr 2018 00:49:51 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 13 Apr 2018 00:51:06 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.11.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 00:51:06 GMT
EXPOSE 11345/tcp
# Fri, 13 Apr 2018 00:51:07 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 13 Apr 2018 00:51:07 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 13 Apr 2018 00:51:07 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a983478dc0d88b17d794a1645befd7e55fc0cb5ce4704c7635a931461dbc6d`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6828506b5cb3889183afcd29d32d78f6b6c079f9688d258799811fa95ba08c`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e17274c445ba4a4523496096f53cd714a5484e4807729240ef20f5df0b38f`  
		Last Modified: Fri, 13 Apr 2018 04:04:16 GMT  
		Size: 192.4 MB (192352656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6700f287f1e06b831c4922d309b83f877cf1fde3d495454364bd2383de3cc44f`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver7-xenial`

```console
$ docker pull gazebo@sha256:8345ac79eac41c6a2b3b458029dc8d3d6657bdae5255196ccf7c74de594530e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver7-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:9308c09297e7ec279f41a1599d8cad6d607ecb60f52edc5bac8ee4cb5e8e64a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235391637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:092b3f423a513f6a8b387c5e6812bdc5b0ed1612d8aba9133b4da27f4f659987`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 00:49:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Fri, 13 Apr 2018 00:49:51 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 13 Apr 2018 00:51:06 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.11.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 00:51:06 GMT
EXPOSE 11345/tcp
# Fri, 13 Apr 2018 00:51:07 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 13 Apr 2018 00:51:07 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 13 Apr 2018 00:51:07 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a983478dc0d88b17d794a1645befd7e55fc0cb5ce4704c7635a931461dbc6d`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6828506b5cb3889183afcd29d32d78f6b6c079f9688d258799811fa95ba08c`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e17274c445ba4a4523496096f53cd714a5484e4807729240ef20f5df0b38f`  
		Last Modified: Fri, 13 Apr 2018 04:04:16 GMT  
		Size: 192.4 MB (192352656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6700f287f1e06b831c4922d309b83f877cf1fde3d495454364bd2383de3cc44f`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver8`

```console
$ docker pull gazebo@sha256:9767eba7079e6d3d377c9ff3aea227b3f725573d69155851d72716d4046de5f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver8` - linux; amd64

```console
$ docker pull gazebo@sha256:b0e732f9f1fd384609ab0746c04ce1409f5486d9d63a0af01d2f9ee8f7ee2de0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264170235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03bf795ca553ff37f045087e549dba90daa6ec7c30daceae300cd9df57615a88`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 00:49:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Fri, 13 Apr 2018 00:49:51 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 13 Apr 2018 01:26:46 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 01:26:47 GMT
EXPOSE 11345/tcp
# Fri, 13 Apr 2018 01:26:47 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 13 Apr 2018 01:26:47 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 13 Apr 2018 01:26:48 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a983478dc0d88b17d794a1645befd7e55fc0cb5ce4704c7635a931461dbc6d`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6828506b5cb3889183afcd29d32d78f6b6c079f9688d258799811fa95ba08c`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075ccc7c7fe0318fe389ce7bf5f21c77c4ba7374f77c0763a616b4e90ac9a99b`  
		Last Modified: Fri, 13 Apr 2018 04:38:51 GMT  
		Size: 221.1 MB (221131256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889f60ce9bdf42f7cec8b9896c55b027dc033507deac4da9b3d1012247ee8cd3`  
		Last Modified: Fri, 13 Apr 2018 04:38:13 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver8-xenial`

```console
$ docker pull gazebo@sha256:9767eba7079e6d3d377c9ff3aea227b3f725573d69155851d72716d4046de5f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver8-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:b0e732f9f1fd384609ab0746c04ce1409f5486d9d63a0af01d2f9ee8f7ee2de0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264170235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03bf795ca553ff37f045087e549dba90daa6ec7c30daceae300cd9df57615a88`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 00:49:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Fri, 13 Apr 2018 00:49:51 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 13 Apr 2018 01:26:46 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 01:26:47 GMT
EXPOSE 11345/tcp
# Fri, 13 Apr 2018 01:26:47 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 13 Apr 2018 01:26:47 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 13 Apr 2018 01:26:48 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a983478dc0d88b17d794a1645befd7e55fc0cb5ce4704c7635a931461dbc6d`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6828506b5cb3889183afcd29d32d78f6b6c079f9688d258799811fa95ba08c`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075ccc7c7fe0318fe389ce7bf5f21c77c4ba7374f77c0763a616b4e90ac9a99b`  
		Last Modified: Fri, 13 Apr 2018 04:38:51 GMT  
		Size: 221.1 MB (221131256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889f60ce9bdf42f7cec8b9896c55b027dc033507deac4da9b3d1012247ee8cd3`  
		Last Modified: Fri, 13 Apr 2018 04:38:13 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver9`

```console
$ docker pull gazebo@sha256:2b166a218e1347633583c5ff83e51b20bc1ec0ec315507b97ccf9d6508ae3d33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver9` - linux; amd64

```console
$ docker pull gazebo@sha256:1999b3af4d41ae1e6795be6b9fc6ac1b9477c8e4da9a4078d9756a7fa4c9598b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264090919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75417720b18ce7a4a32ecd6c2bc48609541e1f12f6e811f2369805071e4bed6e`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

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
# Wed, 07 Mar 2018 01:44:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 07 Mar 2018 01:44:07 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 07 Mar 2018 02:10:46 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 02:10:47 GMT
EXPOSE 11345/tcp
# Wed, 07 Mar 2018 02:10:47 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 07 Mar 2018 02:10:47 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 07 Mar 2018 02:10:48 GMT
CMD ["gzserver"]
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
	-	`sha256:e2f18d4ac1ddaba4807585e64eb3c2a3ac29d9d952abe1485019d460790b2a40`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6fd8a8bbbba8e6c7f122711e15679ea1bfe3af593cd8702f2c04a012445b4d`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c35cc91ee7b2614db923eac0f58603418e973a78060e2af29611c00d5fa446c`  
		Last Modified: Wed, 07 Mar 2018 03:22:30 GMT  
		Size: 221.1 MB (221111107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd91af26acc182db4d3793096efe946f28682a10dd50b5243d78610205c8473`  
		Last Modified: Wed, 07 Mar 2018 03:21:50 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver9-xenial`

```console
$ docker pull gazebo@sha256:2b166a218e1347633583c5ff83e51b20bc1ec0ec315507b97ccf9d6508ae3d33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver9-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:1999b3af4d41ae1e6795be6b9fc6ac1b9477c8e4da9a4078d9756a7fa4c9598b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264090919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75417720b18ce7a4a32ecd6c2bc48609541e1f12f6e811f2369805071e4bed6e`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

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
# Wed, 07 Mar 2018 01:44:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 07 Mar 2018 01:44:07 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 07 Mar 2018 02:10:46 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 02:10:47 GMT
EXPOSE 11345/tcp
# Wed, 07 Mar 2018 02:10:47 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 07 Mar 2018 02:10:47 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 07 Mar 2018 02:10:48 GMT
CMD ["gzserver"]
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
	-	`sha256:e2f18d4ac1ddaba4807585e64eb3c2a3ac29d9d952abe1485019d460790b2a40`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6fd8a8bbbba8e6c7f122711e15679ea1bfe3af593cd8702f2c04a012445b4d`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c35cc91ee7b2614db923eac0f58603418e973a78060e2af29611c00d5fa446c`  
		Last Modified: Wed, 07 Mar 2018 03:22:30 GMT  
		Size: 221.1 MB (221111107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd91af26acc182db4d3793096efe946f28682a10dd50b5243d78610205c8473`  
		Last Modified: Wed, 07 Mar 2018 03:21:50 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:latest`

```console
$ docker pull gazebo@sha256:76e7b6e4003020cf51a5f09697356492e3031850a5724c31e514943b33486dac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:latest` - linux; amd64

```console
$ docker pull gazebo@sha256:99041480c5481695fb44a1ffd14e23f3e9064a5cc09cfe13a28dbbd8962af7b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.6 MB (506604925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc73e7aa4c476a002a3f95e43cba68694c1a69b6e4b87c2e9cd5f2fb1a8d19aa`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

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
# Wed, 07 Mar 2018 01:44:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 07 Mar 2018 01:44:07 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 07 Mar 2018 02:10:46 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 02:10:47 GMT
EXPOSE 11345/tcp
# Wed, 07 Mar 2018 02:10:47 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 07 Mar 2018 02:10:47 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 07 Mar 2018 02:10:48 GMT
CMD ["gzserver"]
# Wed, 07 Mar 2018 02:13:07 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:e2f18d4ac1ddaba4807585e64eb3c2a3ac29d9d952abe1485019d460790b2a40`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6fd8a8bbbba8e6c7f122711e15679ea1bfe3af593cd8702f2c04a012445b4d`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c35cc91ee7b2614db923eac0f58603418e973a78060e2af29611c00d5fa446c`  
		Last Modified: Wed, 07 Mar 2018 03:22:30 GMT  
		Size: 221.1 MB (221111107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd91af26acc182db4d3793096efe946f28682a10dd50b5243d78610205c8473`  
		Last Modified: Wed, 07 Mar 2018 03:21:50 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c366f2fe5c4f80fb8b254fdc2768876f9f1d1371c2afc46ffe3aeec8cbec63b1`  
		Last Modified: Wed, 07 Mar 2018 03:24:15 GMT  
		Size: 242.5 MB (242514006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo4`

```console
$ docker pull gazebo@sha256:078edb08f4365318f229bd4d7adc468b00b3b15e80bfe1325f183b24000672bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo4` - linux; amd64

```console
$ docker pull gazebo@sha256:f3ae171a336df27687d19e1afc9836f21af84b190a17f4e24c5141b06824abed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.4 MB (454375679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f747fcddcda8ab3b6b7a9fb1736984bb71a51d049efbdb1745ff9dedf51888f9`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:33:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 12 Apr 2018 23:33:46 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 12 Apr 2018 23:35:00 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 23:35:00 GMT
EXPOSE 11345/tcp
# Thu, 12 Apr 2018 23:35:01 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 12 Apr 2018 23:35:01 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 12 Apr 2018 23:35:01 GMT
CMD ["gzserver"]
# Thu, 12 Apr 2018 23:38:23 GMT
RUN apt-get update && apt-get install -q -y     libgazebo4-dev=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdde1f371a819fcaddbabfd04371bd9147a290ed0c587c7f5d68d722be6d326`  
		Last Modified: Fri, 13 Apr 2018 02:16:21 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9dff326fbc9fd35342c4fe1b022d0400416adaf35e021bbd9cc73eeb4b166e`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fa2a99d13faf72107efbb3fce8faca02b360b0d1d6811eab8fb5e0070fcf11`  
		Last Modified: Fri, 13 Apr 2018 02:16:45 GMT  
		Size: 146.5 MB (146464965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcce72b455a3b6f009eabf7c78402a56e2e03e9855eb4e7b86a9e92173ce512`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8817d5ac43a4e08e5de46096cce02fe1d7f1773ce4d5c3a5eb328759fe16ad2`  
		Last Modified: Fri, 13 Apr 2018 02:18:29 GMT  
		Size: 234.8 MB (234758333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo4-trusty`

```console
$ docker pull gazebo@sha256:078edb08f4365318f229bd4d7adc468b00b3b15e80bfe1325f183b24000672bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo4-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:f3ae171a336df27687d19e1afc9836f21af84b190a17f4e24c5141b06824abed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.4 MB (454375679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f747fcddcda8ab3b6b7a9fb1736984bb71a51d049efbdb1745ff9dedf51888f9`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:33:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 12 Apr 2018 23:33:46 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 12 Apr 2018 23:35:00 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 23:35:00 GMT
EXPOSE 11345/tcp
# Thu, 12 Apr 2018 23:35:01 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 12 Apr 2018 23:35:01 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 12 Apr 2018 23:35:01 GMT
CMD ["gzserver"]
# Thu, 12 Apr 2018 23:38:23 GMT
RUN apt-get update && apt-get install -q -y     libgazebo4-dev=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdde1f371a819fcaddbabfd04371bd9147a290ed0c587c7f5d68d722be6d326`  
		Last Modified: Fri, 13 Apr 2018 02:16:21 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9dff326fbc9fd35342c4fe1b022d0400416adaf35e021bbd9cc73eeb4b166e`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fa2a99d13faf72107efbb3fce8faca02b360b0d1d6811eab8fb5e0070fcf11`  
		Last Modified: Fri, 13 Apr 2018 02:16:45 GMT  
		Size: 146.5 MB (146464965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcce72b455a3b6f009eabf7c78402a56e2e03e9855eb4e7b86a9e92173ce512`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8817d5ac43a4e08e5de46096cce02fe1d7f1773ce4d5c3a5eb328759fe16ad2`  
		Last Modified: Fri, 13 Apr 2018 02:18:29 GMT  
		Size: 234.8 MB (234758333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo5`

```console
$ docker pull gazebo@sha256:5ccbd3893dbfd0e74a306d92f56472e7a58362a76190d7a10183df3a013196ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo5` - linux; amd64

```console
$ docker pull gazebo@sha256:ec9fc2bb762a5b02faf58db7d14a95adb5f378d32eb56e1c463e872de4790bab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **504.4 MB (504411829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f464efd7b5ce8fc56222bc7ff149a46769faf39ea0980c7de4973b68e094e8f9`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:33:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 12 Apr 2018 23:33:46 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 12 Apr 2018 23:56:14 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 23:56:15 GMT
EXPOSE 11345/tcp
# Thu, 12 Apr 2018 23:56:15 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 12 Apr 2018 23:56:15 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 12 Apr 2018 23:56:16 GMT
CMD ["gzserver"]
# Fri, 13 Apr 2018 00:01:56 GMT
RUN apt-get update && apt-get install -q -y     libgazebo5-dev=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdde1f371a819fcaddbabfd04371bd9147a290ed0c587c7f5d68d722be6d326`  
		Last Modified: Fri, 13 Apr 2018 02:16:21 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9dff326fbc9fd35342c4fe1b022d0400416adaf35e021bbd9cc73eeb4b166e`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3b29a4db6a989214b69c68861eaaa2314eb35d68ee6fc25e3fc2433aca9c5`  
		Last Modified: Fri, 13 Apr 2018 02:47:24 GMT  
		Size: 167.3 MB (167268574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7f6293bf1891b453932ede8469e0039f49459acd8c60c705c122613c1df09e`  
		Last Modified: Fri, 13 Apr 2018 02:46:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31effa9d3624d66f6fcb623b663c66832d45ade86c00ed885649ab5ed8dae8ec`  
		Last Modified: Fri, 13 Apr 2018 03:07:11 GMT  
		Size: 264.0 MB (263990875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo5-trusty`

```console
$ docker pull gazebo@sha256:5ccbd3893dbfd0e74a306d92f56472e7a58362a76190d7a10183df3a013196ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo5-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:ec9fc2bb762a5b02faf58db7d14a95adb5f378d32eb56e1c463e872de4790bab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **504.4 MB (504411829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f464efd7b5ce8fc56222bc7ff149a46769faf39ea0980c7de4973b68e094e8f9`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:33:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 12 Apr 2018 23:33:46 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 12 Apr 2018 23:56:14 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 23:56:15 GMT
EXPOSE 11345/tcp
# Thu, 12 Apr 2018 23:56:15 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 12 Apr 2018 23:56:15 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 12 Apr 2018 23:56:16 GMT
CMD ["gzserver"]
# Fri, 13 Apr 2018 00:01:56 GMT
RUN apt-get update && apt-get install -q -y     libgazebo5-dev=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdde1f371a819fcaddbabfd04371bd9147a290ed0c587c7f5d68d722be6d326`  
		Last Modified: Fri, 13 Apr 2018 02:16:21 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9dff326fbc9fd35342c4fe1b022d0400416adaf35e021bbd9cc73eeb4b166e`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3b29a4db6a989214b69c68861eaaa2314eb35d68ee6fc25e3fc2433aca9c5`  
		Last Modified: Fri, 13 Apr 2018 02:47:24 GMT  
		Size: 167.3 MB (167268574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7f6293bf1891b453932ede8469e0039f49459acd8c60c705c122613c1df09e`  
		Last Modified: Fri, 13 Apr 2018 02:46:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31effa9d3624d66f6fcb623b663c66832d45ade86c00ed885649ab5ed8dae8ec`  
		Last Modified: Fri, 13 Apr 2018 03:07:11 GMT  
		Size: 264.0 MB (263990875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo6`

```console
$ docker pull gazebo@sha256:f2a5bc7f8f390cdeaaec7adca04e1ab1a842df123a3e0b3ac0a54c02d6aa91e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo6` - linux; amd64

```console
$ docker pull gazebo@sha256:a44ad7ea40ad0f5a30a04cadf19d922b89f6ba1a1d99c0e07ee0d1132be2de8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.8 MB (497788978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b99f46e4411cf2cf4e5a9022648b1a687a287aac790c79003acbec243ee6c4`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:33:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 12 Apr 2018 23:33:46 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 13 Apr 2018 00:21:16 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 00:21:16 GMT
EXPOSE 11345/tcp
# Fri, 13 Apr 2018 00:21:17 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 13 Apr 2018 00:21:17 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 13 Apr 2018 00:21:17 GMT
CMD ["gzserver"]
# Fri, 13 Apr 2018 00:32:28 GMT
RUN apt-get update && apt-get install -q -y     libgazebo6-dev=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdde1f371a819fcaddbabfd04371bd9147a290ed0c587c7f5d68d722be6d326`  
		Last Modified: Fri, 13 Apr 2018 02:16:21 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9dff326fbc9fd35342c4fe1b022d0400416adaf35e021bbd9cc73eeb4b166e`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8298e42e2a36667e60de5e0e0f772b7d380fa202d8a52034a1e44f8be47301f3`  
		Last Modified: Fri, 13 Apr 2018 03:26:50 GMT  
		Size: 171.3 MB (171335780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d82d0f7eb3fe1fb56d05cbf49c88ff543009bed06ac40bf0dd407cbfd66af0e`  
		Last Modified: Fri, 13 Apr 2018 03:26:23 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4786492b521f6837c741ca168f9299a685fb9c9e991dd85157b65b0d9776096a`  
		Last Modified: Fri, 13 Apr 2018 03:43:40 GMT  
		Size: 253.3 MB (253300818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo6-trusty`

```console
$ docker pull gazebo@sha256:f2a5bc7f8f390cdeaaec7adca04e1ab1a842df123a3e0b3ac0a54c02d6aa91e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo6-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:a44ad7ea40ad0f5a30a04cadf19d922b89f6ba1a1d99c0e07ee0d1132be2de8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.8 MB (497788978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b99f46e4411cf2cf4e5a9022648b1a687a287aac790c79003acbec243ee6c4`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:33:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 12 Apr 2018 23:33:46 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 13 Apr 2018 00:21:16 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 00:21:16 GMT
EXPOSE 11345/tcp
# Fri, 13 Apr 2018 00:21:17 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 13 Apr 2018 00:21:17 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 13 Apr 2018 00:21:17 GMT
CMD ["gzserver"]
# Fri, 13 Apr 2018 00:32:28 GMT
RUN apt-get update && apt-get install -q -y     libgazebo6-dev=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdde1f371a819fcaddbabfd04371bd9147a290ed0c587c7f5d68d722be6d326`  
		Last Modified: Fri, 13 Apr 2018 02:16:21 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9dff326fbc9fd35342c4fe1b022d0400416adaf35e021bbd9cc73eeb4b166e`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8298e42e2a36667e60de5e0e0f772b7d380fa202d8a52034a1e44f8be47301f3`  
		Last Modified: Fri, 13 Apr 2018 03:26:50 GMT  
		Size: 171.3 MB (171335780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d82d0f7eb3fe1fb56d05cbf49c88ff543009bed06ac40bf0dd407cbfd66af0e`  
		Last Modified: Fri, 13 Apr 2018 03:26:23 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4786492b521f6837c741ca168f9299a685fb9c9e991dd85157b65b0d9776096a`  
		Last Modified: Fri, 13 Apr 2018 03:43:40 GMT  
		Size: 253.3 MB (253300818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo7`

```console
$ docker pull gazebo@sha256:2fb21bf65e032d7baf59d65ff27f7750022cb10e6dcc2167e1517565205952a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7` - linux; amd64

```console
$ docker pull gazebo@sha256:29a85509c2a7bf559031e085b9e7104755e087d6e584ef169226a44899bddd5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.3 MB (495335066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:659841b78e0839e7bcb075b65440711ee4a3027a6f3a270d008fcfc40002de99`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 00:49:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Fri, 13 Apr 2018 00:49:51 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 13 Apr 2018 00:51:06 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.11.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 00:51:06 GMT
EXPOSE 11345/tcp
# Fri, 13 Apr 2018 00:51:07 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 13 Apr 2018 00:51:07 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 13 Apr 2018 00:51:07 GMT
CMD ["gzserver"]
# Fri, 13 Apr 2018 01:05:57 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.11.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a983478dc0d88b17d794a1645befd7e55fc0cb5ce4704c7635a931461dbc6d`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6828506b5cb3889183afcd29d32d78f6b6c079f9688d258799811fa95ba08c`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e17274c445ba4a4523496096f53cd714a5484e4807729240ef20f5df0b38f`  
		Last Modified: Fri, 13 Apr 2018 04:04:16 GMT  
		Size: 192.4 MB (192352656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6700f287f1e06b831c4922d309b83f877cf1fde3d495454364bd2383de3cc44f`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e1eab8ab52dc80a79c2e4dbd82773ce5d3d7f12220ee447ccef30f4944e173`  
		Last Modified: Fri, 13 Apr 2018 04:21:07 GMT  
		Size: 259.9 MB (259943429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo7-xenial`

```console
$ docker pull gazebo@sha256:2fb21bf65e032d7baf59d65ff27f7750022cb10e6dcc2167e1517565205952a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:29a85509c2a7bf559031e085b9e7104755e087d6e584ef169226a44899bddd5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.3 MB (495335066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:659841b78e0839e7bcb075b65440711ee4a3027a6f3a270d008fcfc40002de99`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 00:49:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Fri, 13 Apr 2018 00:49:51 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 13 Apr 2018 00:51:06 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.11.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 00:51:06 GMT
EXPOSE 11345/tcp
# Fri, 13 Apr 2018 00:51:07 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 13 Apr 2018 00:51:07 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 13 Apr 2018 00:51:07 GMT
CMD ["gzserver"]
# Fri, 13 Apr 2018 01:05:57 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.11.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a983478dc0d88b17d794a1645befd7e55fc0cb5ce4704c7635a931461dbc6d`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6828506b5cb3889183afcd29d32d78f6b6c079f9688d258799811fa95ba08c`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e17274c445ba4a4523496096f53cd714a5484e4807729240ef20f5df0b38f`  
		Last Modified: Fri, 13 Apr 2018 04:04:16 GMT  
		Size: 192.4 MB (192352656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6700f287f1e06b831c4922d309b83f877cf1fde3d495454364bd2383de3cc44f`  
		Last Modified: Fri, 13 Apr 2018 04:03:43 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e1eab8ab52dc80a79c2e4dbd82773ce5d3d7f12220ee447ccef30f4944e173`  
		Last Modified: Fri, 13 Apr 2018 04:21:07 GMT  
		Size: 259.9 MB (259943429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo8`

```console
$ docker pull gazebo@sha256:8711ddda4bd22685719c098ba3d45a074a7520f6bb08ca7c5744207af431a31f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8` - linux; amd64

```console
$ docker pull gazebo@sha256:b7d037af9462f069b23a0766c93d3c8793170b222827d4758e607368f8586e58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.3 MB (498294671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8fe1b4ee414cbcc92636bf1aa53e7270ef38949ede5ae12fb76b04f251cd92`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

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
# Wed, 07 Mar 2018 01:44:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 07 Mar 2018 01:44:07 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 20 Mar 2018 04:49:36 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 04:49:36 GMT
EXPOSE 11345/tcp
# Tue, 20 Mar 2018 04:49:37 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 20 Mar 2018 04:49:37 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 20 Mar 2018 04:49:37 GMT
CMD ["gzserver"]
# Tue, 20 Mar 2018 05:04:13 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.4.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:e2f18d4ac1ddaba4807585e64eb3c2a3ac29d9d952abe1485019d460790b2a40`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6fd8a8bbbba8e6c7f122711e15679ea1bfe3af593cd8702f2c04a012445b4d`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66cf2dbf5cc58044371f8f56c2271259be9a61a1b174a20c2457704d19a05ef`  
		Last Modified: Tue, 20 Mar 2018 05:17:32 GMT  
		Size: 221.1 MB (221102060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7086a258ce59d5d29bd266c9fdbdf128e3298c9bdd9bbb5c841de482f90c9ef`  
		Last Modified: Tue, 20 Mar 2018 05:16:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf238bcfe9ab8a3c050c7eb2734ab305ddc55404f13e6898dcce61b3ef9f5f5`  
		Last Modified: Tue, 20 Mar 2018 05:19:18 GMT  
		Size: 234.2 MB (234212799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo8-xenial`

```console
$ docker pull gazebo@sha256:8711ddda4bd22685719c098ba3d45a074a7520f6bb08ca7c5744207af431a31f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:b7d037af9462f069b23a0766c93d3c8793170b222827d4758e607368f8586e58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.3 MB (498294671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8fe1b4ee414cbcc92636bf1aa53e7270ef38949ede5ae12fb76b04f251cd92`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

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
# Wed, 07 Mar 2018 01:44:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 07 Mar 2018 01:44:07 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 20 Mar 2018 04:49:36 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 04:49:36 GMT
EXPOSE 11345/tcp
# Tue, 20 Mar 2018 04:49:37 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 20 Mar 2018 04:49:37 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 20 Mar 2018 04:49:37 GMT
CMD ["gzserver"]
# Tue, 20 Mar 2018 05:04:13 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.4.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:e2f18d4ac1ddaba4807585e64eb3c2a3ac29d9d952abe1485019d460790b2a40`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6fd8a8bbbba8e6c7f122711e15679ea1bfe3af593cd8702f2c04a012445b4d`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66cf2dbf5cc58044371f8f56c2271259be9a61a1b174a20c2457704d19a05ef`  
		Last Modified: Tue, 20 Mar 2018 05:17:32 GMT  
		Size: 221.1 MB (221102060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7086a258ce59d5d29bd266c9fdbdf128e3298c9bdd9bbb5c841de482f90c9ef`  
		Last Modified: Tue, 20 Mar 2018 05:16:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf238bcfe9ab8a3c050c7eb2734ab305ddc55404f13e6898dcce61b3ef9f5f5`  
		Last Modified: Tue, 20 Mar 2018 05:19:18 GMT  
		Size: 234.2 MB (234212799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo9`

```console
$ docker pull gazebo@sha256:76e7b6e4003020cf51a5f09697356492e3031850a5724c31e514943b33486dac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo9` - linux; amd64

```console
$ docker pull gazebo@sha256:99041480c5481695fb44a1ffd14e23f3e9064a5cc09cfe13a28dbbd8962af7b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.6 MB (506604925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc73e7aa4c476a002a3f95e43cba68694c1a69b6e4b87c2e9cd5f2fb1a8d19aa`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

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
# Wed, 07 Mar 2018 01:44:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 07 Mar 2018 01:44:07 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 07 Mar 2018 02:10:46 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 02:10:47 GMT
EXPOSE 11345/tcp
# Wed, 07 Mar 2018 02:10:47 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 07 Mar 2018 02:10:47 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 07 Mar 2018 02:10:48 GMT
CMD ["gzserver"]
# Wed, 07 Mar 2018 02:13:07 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:e2f18d4ac1ddaba4807585e64eb3c2a3ac29d9d952abe1485019d460790b2a40`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6fd8a8bbbba8e6c7f122711e15679ea1bfe3af593cd8702f2c04a012445b4d`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c35cc91ee7b2614db923eac0f58603418e973a78060e2af29611c00d5fa446c`  
		Last Modified: Wed, 07 Mar 2018 03:22:30 GMT  
		Size: 221.1 MB (221111107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd91af26acc182db4d3793096efe946f28682a10dd50b5243d78610205c8473`  
		Last Modified: Wed, 07 Mar 2018 03:21:50 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c366f2fe5c4f80fb8b254fdc2768876f9f1d1371c2afc46ffe3aeec8cbec63b1`  
		Last Modified: Wed, 07 Mar 2018 03:24:15 GMT  
		Size: 242.5 MB (242514006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo9-xenial`

```console
$ docker pull gazebo@sha256:76e7b6e4003020cf51a5f09697356492e3031850a5724c31e514943b33486dac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo9-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:99041480c5481695fb44a1ffd14e23f3e9064a5cc09cfe13a28dbbd8962af7b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.6 MB (506604925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc73e7aa4c476a002a3f95e43cba68694c1a69b6e4b87c2e9cd5f2fb1a8d19aa`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

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
# Wed, 07 Mar 2018 01:44:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 07 Mar 2018 01:44:07 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 07 Mar 2018 02:10:46 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 02:10:47 GMT
EXPOSE 11345/tcp
# Wed, 07 Mar 2018 02:10:47 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 07 Mar 2018 02:10:47 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 07 Mar 2018 02:10:48 GMT
CMD ["gzserver"]
# Wed, 07 Mar 2018 02:13:07 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:e2f18d4ac1ddaba4807585e64eb3c2a3ac29d9d952abe1485019d460790b2a40`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6fd8a8bbbba8e6c7f122711e15679ea1bfe3af593cd8702f2c04a012445b4d`  
		Last Modified: Wed, 07 Mar 2018 02:57:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c35cc91ee7b2614db923eac0f58603418e973a78060e2af29611c00d5fa446c`  
		Last Modified: Wed, 07 Mar 2018 03:22:30 GMT  
		Size: 221.1 MB (221111107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd91af26acc182db4d3793096efe946f28682a10dd50b5243d78610205c8473`  
		Last Modified: Wed, 07 Mar 2018 03:21:50 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c366f2fe5c4f80fb8b254fdc2768876f9f1d1371c2afc46ffe3aeec8cbec63b1`  
		Last Modified: Wed, 07 Mar 2018 03:24:15 GMT  
		Size: 242.5 MB (242514006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
