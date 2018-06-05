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
$ docker pull gazebo@sha256:c9abdf48813874e08e4f4cf66a04a39b54409397685fcd86e3b0e82a532fbc06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver4` - linux; amd64

```console
$ docker pull gazebo@sha256:e83f47df67eacb161e2ec4b65b2ca8350572ef03aedc553205194ab464624883
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.7 MB (219715948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f602bd0426f1fa0ae8df64dc7e82953015f2498ef81813853250d9a806290e0`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:46:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 05 Jun 2018 21:46:22 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 05 Jun 2018 21:48:44 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:48:44 GMT
EXPOSE 11345/tcp
# Tue, 05 Jun 2018 21:48:45 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 05 Jun 2018 21:48:45 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 05 Jun 2018 21:48:45 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078255bd6a98655d0d07d538278ecb0c8ee0b2263bd481718c9cd47d99d692ab`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566c8f8bc9a093fd212dace676d99069dc799c49382f3253c6bc8cde2578faa0`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f8e209d57f78515cd61ab7c17adb441b6ca0ddc4a9719c3eef02a988372286`  
		Last Modified: Tue, 05 Jun 2018 22:35:57 GMT  
		Size: 146.5 MB (146465647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dc41f82c7118e76b8ee8a7ec199db8d4db5f8690bf2db53903f329355fcad6`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver4-trusty`

```console
$ docker pull gazebo@sha256:c9abdf48813874e08e4f4cf66a04a39b54409397685fcd86e3b0e82a532fbc06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver4-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:e83f47df67eacb161e2ec4b65b2ca8350572ef03aedc553205194ab464624883
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.7 MB (219715948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f602bd0426f1fa0ae8df64dc7e82953015f2498ef81813853250d9a806290e0`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:46:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 05 Jun 2018 21:46:22 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 05 Jun 2018 21:48:44 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:48:44 GMT
EXPOSE 11345/tcp
# Tue, 05 Jun 2018 21:48:45 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 05 Jun 2018 21:48:45 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 05 Jun 2018 21:48:45 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078255bd6a98655d0d07d538278ecb0c8ee0b2263bd481718c9cd47d99d692ab`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566c8f8bc9a093fd212dace676d99069dc799c49382f3253c6bc8cde2578faa0`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f8e209d57f78515cd61ab7c17adb441b6ca0ddc4a9719c3eef02a988372286`  
		Last Modified: Tue, 05 Jun 2018 22:35:57 GMT  
		Size: 146.5 MB (146465647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dc41f82c7118e76b8ee8a7ec199db8d4db5f8690bf2db53903f329355fcad6`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver5`

```console
$ docker pull gazebo@sha256:2b3537f797bbbcccc1e25b3b249ac84f0568a49cbfaaf12eb9993388f6b34aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver5` - linux; amd64

```console
$ docker pull gazebo@sha256:7a44005e39e0cbd3421be2084ebba307d60d5498904cf122b495b872a31317cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.5 MB (240518846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d99808fddb76b86bd0ddb33dac872d07478a0bdd1f2a1a752e6dea81a33916`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:46:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 05 Jun 2018 21:46:22 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 05 Jun 2018 21:57:21 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:57:21 GMT
EXPOSE 11345/tcp
# Tue, 05 Jun 2018 21:57:21 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 05 Jun 2018 21:57:22 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 05 Jun 2018 21:57:22 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078255bd6a98655d0d07d538278ecb0c8ee0b2263bd481718c9cd47d99d692ab`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566c8f8bc9a093fd212dace676d99069dc799c49382f3253c6bc8cde2578faa0`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c77a4b1397ae2eb597a0590f4697588beff4d7ffb9e082e6a249a8b1ea5750b`  
		Last Modified: Tue, 05 Jun 2018 22:40:53 GMT  
		Size: 167.3 MB (167268546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662a326c29937ed853cd61d021e6cf18910ab6c7e9157d2010b7a99b8e9844ff`  
		Last Modified: Tue, 05 Jun 2018 22:40:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver5-trusty`

```console
$ docker pull gazebo@sha256:2b3537f797bbbcccc1e25b3b249ac84f0568a49cbfaaf12eb9993388f6b34aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver5-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:7a44005e39e0cbd3421be2084ebba307d60d5498904cf122b495b872a31317cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.5 MB (240518846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d99808fddb76b86bd0ddb33dac872d07478a0bdd1f2a1a752e6dea81a33916`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:46:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 05 Jun 2018 21:46:22 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 05 Jun 2018 21:57:21 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:57:21 GMT
EXPOSE 11345/tcp
# Tue, 05 Jun 2018 21:57:21 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 05 Jun 2018 21:57:22 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 05 Jun 2018 21:57:22 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078255bd6a98655d0d07d538278ecb0c8ee0b2263bd481718c9cd47d99d692ab`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566c8f8bc9a093fd212dace676d99069dc799c49382f3253c6bc8cde2578faa0`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c77a4b1397ae2eb597a0590f4697588beff4d7ffb9e082e6a249a8b1ea5750b`  
		Last Modified: Tue, 05 Jun 2018 22:40:53 GMT  
		Size: 167.3 MB (167268546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662a326c29937ed853cd61d021e6cf18910ab6c7e9157d2010b7a99b8e9844ff`  
		Last Modified: Tue, 05 Jun 2018 22:40:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver6`

```console
$ docker pull gazebo@sha256:6f735c7190ab004448b606b81e976084a942fa53de93bd1531767ffa66a46f73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver6` - linux; amd64

```console
$ docker pull gazebo@sha256:6a68ccccfc341033b44c0589abf1c07c3dbfc315d5fc72900b1c78ee87ff2e38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244504739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b0663a0582bf991f7a2f6a66890e003232beb15b1b64deee6c8ac0697bd504b`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 00:11:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 00:11:28 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 01:15:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:15:22 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 01:15:23 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 01:15:23 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 01:15:23 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30dc350b03e9c758761a02a8e73b4fa6503ebd4dc94c868e42f31ef68d12fda4`  
		Last Modified: Sun, 29 Apr 2018 03:23:51 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7257556e596c0ce41fbdca4edd280ce7b8d5cb1b36d99361878b02c2cd088905`  
		Last Modified: Sun, 29 Apr 2018 03:23:51 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0c3cf1c5d74b32e9cbf3b3ced454b20f6a9e97a9742cf1214cddde5eca5f40`  
		Last Modified: Sun, 29 Apr 2018 04:55:58 GMT  
		Size: 171.3 MB (171335076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0871a6ead260882b4929132228643359870794ccdbe7de04c910282dfd9021c`  
		Last Modified: Sun, 29 Apr 2018 04:55:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver6-trusty`

```console
$ docker pull gazebo@sha256:6f735c7190ab004448b606b81e976084a942fa53de93bd1531767ffa66a46f73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver6-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:6a68ccccfc341033b44c0589abf1c07c3dbfc315d5fc72900b1c78ee87ff2e38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244504739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b0663a0582bf991f7a2f6a66890e003232beb15b1b64deee6c8ac0697bd504b`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 00:11:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 00:11:28 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 01:15:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:15:22 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 01:15:23 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 01:15:23 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 01:15:23 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30dc350b03e9c758761a02a8e73b4fa6503ebd4dc94c868e42f31ef68d12fda4`  
		Last Modified: Sun, 29 Apr 2018 03:23:51 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7257556e596c0ce41fbdca4edd280ce7b8d5cb1b36d99361878b02c2cd088905`  
		Last Modified: Sun, 29 Apr 2018 03:23:51 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0c3cf1c5d74b32e9cbf3b3ced454b20f6a9e97a9742cf1214cddde5eca5f40`  
		Last Modified: Sun, 29 Apr 2018 04:55:58 GMT  
		Size: 171.3 MB (171335076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0871a6ead260882b4929132228643359870794ccdbe7de04c910282dfd9021c`  
		Last Modified: Sun, 29 Apr 2018 04:55:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver7`

```console
$ docker pull gazebo@sha256:40b15ebfd332d7a6a7a68592295cc126af8af804a4db08b4e5115b2fb6c461d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver7` - linux; amd64

```console
$ docker pull gazebo@sha256:629bc8aa2208e05e978c48892a17d00445d2b4d2b8faf2516193b5a224fb3b67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235406801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfae485d1833e7c94d50c0ff993dba5b435d7aa8f25f404afafe321361737d0d`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 01:39:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 01:39:10 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 01:42:43 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.12.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:42:43 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 01:42:44 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 01:42:44 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 01:42:44 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add8671e2f5a2dc97c8d5a7abf2da49ebf7cb4f2db079bea33b1579508155ef`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea4edf31ef509be62f5a688f20306c078cddd4781caa763986530aa526d526`  
		Last Modified: Sun, 29 Apr 2018 05:32:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c085434de2c80372c712abea2455ceb8e538f25a14ff15783179479af8756c1`  
		Last Modified: Sun, 29 Apr 2018 05:33:30 GMT  
		Size: 192.4 MB (192363915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c676314f38f2a3c1d86766dc2d2329b8de6639afc7e8870eaa7457a257b797`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver7-xenial`

```console
$ docker pull gazebo@sha256:40b15ebfd332d7a6a7a68592295cc126af8af804a4db08b4e5115b2fb6c461d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver7-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:629bc8aa2208e05e978c48892a17d00445d2b4d2b8faf2516193b5a224fb3b67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235406801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfae485d1833e7c94d50c0ff993dba5b435d7aa8f25f404afafe321361737d0d`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 01:39:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 01:39:10 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 01:42:43 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.12.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:42:43 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 01:42:44 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 01:42:44 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 01:42:44 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add8671e2f5a2dc97c8d5a7abf2da49ebf7cb4f2db079bea33b1579508155ef`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea4edf31ef509be62f5a688f20306c078cddd4781caa763986530aa526d526`  
		Last Modified: Sun, 29 Apr 2018 05:32:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c085434de2c80372c712abea2455ceb8e538f25a14ff15783179479af8756c1`  
		Last Modified: Sun, 29 Apr 2018 05:33:30 GMT  
		Size: 192.4 MB (192363915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c676314f38f2a3c1d86766dc2d2329b8de6639afc7e8870eaa7457a257b797`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver8`

```console
$ docker pull gazebo@sha256:82e8a0987a74e255a9f5d40d7de2b9c16d4b3992a9d6a322ec9d8e38c2d7db74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver8` - linux; amd64

```console
$ docker pull gazebo@sha256:bb9b6f93238025cc6a363abf736026dbd188ba17c8848c6847b1042c4b046937
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264172974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a3f2a61213e1ce6e5ba6ca60130709c4a765b232845e95a0b560dba5e86229`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 01:39:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 01:39:10 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 02:12:10 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 02:12:11 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 02:12:11 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 02:12:11 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 02:12:12 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add8671e2f5a2dc97c8d5a7abf2da49ebf7cb4f2db079bea33b1579508155ef`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea4edf31ef509be62f5a688f20306c078cddd4781caa763986530aa526d526`  
		Last Modified: Sun, 29 Apr 2018 05:32:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3402e1198c9e32341e0f3ed3f6d97b17a5b8e2ca341e98f25c26d6bdbeb8f631`  
		Last Modified: Sun, 29 Apr 2018 06:14:51 GMT  
		Size: 221.1 MB (221130088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3ac5f1a5be0eaaff3d919e9e037750d323ecc4226d1965558bac554075f92d`  
		Last Modified: Sun, 29 Apr 2018 06:14:11 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver8-xenial`

```console
$ docker pull gazebo@sha256:82e8a0987a74e255a9f5d40d7de2b9c16d4b3992a9d6a322ec9d8e38c2d7db74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver8-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:bb9b6f93238025cc6a363abf736026dbd188ba17c8848c6847b1042c4b046937
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264172974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a3f2a61213e1ce6e5ba6ca60130709c4a765b232845e95a0b560dba5e86229`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 01:39:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 01:39:10 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 02:12:10 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 02:12:11 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 02:12:11 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 02:12:11 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 02:12:12 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add8671e2f5a2dc97c8d5a7abf2da49ebf7cb4f2db079bea33b1579508155ef`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea4edf31ef509be62f5a688f20306c078cddd4781caa763986530aa526d526`  
		Last Modified: Sun, 29 Apr 2018 05:32:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3402e1198c9e32341e0f3ed3f6d97b17a5b8e2ca341e98f25c26d6bdbeb8f631`  
		Last Modified: Sun, 29 Apr 2018 06:14:51 GMT  
		Size: 221.1 MB (221130088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3ac5f1a5be0eaaff3d919e9e037750d323ecc4226d1965558bac554075f92d`  
		Last Modified: Sun, 29 Apr 2018 06:14:11 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver9`

```console
$ docker pull gazebo@sha256:877aa0506e434e6567181535a4e99247eb045c87edd0f2d4fbb6b500b77e5428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver9` - linux; amd64

```console
$ docker pull gazebo@sha256:4bae3b9fe670612fc4975a52fd9bc32bfa9aed07d985c032a9aa1c3c02a11a93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264176189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2de49548e7ef3ba04ae341296e1e93ec0538aa996046efa55b2123267626b8`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 01:39:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 01:39:10 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 02:51:59 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 02:52:00 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 02:52:00 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 02:52:00 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 02:52:01 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add8671e2f5a2dc97c8d5a7abf2da49ebf7cb4f2db079bea33b1579508155ef`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea4edf31ef509be62f5a688f20306c078cddd4781caa763986530aa526d526`  
		Last Modified: Sun, 29 Apr 2018 05:32:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fe0300deabb6ddee8c311eff10e780db031bc9a14e0caa6e4f7b89accd6968`  
		Last Modified: Sun, 29 Apr 2018 06:54:53 GMT  
		Size: 221.1 MB (221133304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7906c1930ccbea921b34b819e53e48dc1136c59c873d12d435fd276000100d3f`  
		Last Modified: Sun, 29 Apr 2018 06:54:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver9-xenial`

```console
$ docker pull gazebo@sha256:877aa0506e434e6567181535a4e99247eb045c87edd0f2d4fbb6b500b77e5428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver9-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:4bae3b9fe670612fc4975a52fd9bc32bfa9aed07d985c032a9aa1c3c02a11a93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264176189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2de49548e7ef3ba04ae341296e1e93ec0538aa996046efa55b2123267626b8`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 01:39:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 01:39:10 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 02:51:59 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 02:52:00 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 02:52:00 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 02:52:00 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 02:52:01 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add8671e2f5a2dc97c8d5a7abf2da49ebf7cb4f2db079bea33b1579508155ef`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea4edf31ef509be62f5a688f20306c078cddd4781caa763986530aa526d526`  
		Last Modified: Sun, 29 Apr 2018 05:32:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fe0300deabb6ddee8c311eff10e780db031bc9a14e0caa6e4f7b89accd6968`  
		Last Modified: Sun, 29 Apr 2018 06:54:53 GMT  
		Size: 221.1 MB (221133304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7906c1930ccbea921b34b819e53e48dc1136c59c873d12d435fd276000100d3f`  
		Last Modified: Sun, 29 Apr 2018 06:54:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:latest`

```console
$ docker pull gazebo@sha256:51c4ef3c87fbfe7f2627678e0b09d8bb4d3d7f6023a866e7a0d2256f9a8e6254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:latest` - linux; amd64

```console
$ docker pull gazebo@sha256:62cafb90c3c83be1dd20599a78ae341c8ef4128e81223a58317ae628fef06832
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.7 MB (506723023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7679b99ec5d04aa6d4f3f35b026dcee5c0a7d09396fbaf261be7531ac032182`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 01:39:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 01:39:10 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 02:51:59 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 02:52:00 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 02:52:00 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 02:52:00 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 02:52:01 GMT
CMD ["gzserver"]
# Sun, 29 Apr 2018 03:01:56 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add8671e2f5a2dc97c8d5a7abf2da49ebf7cb4f2db079bea33b1579508155ef`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea4edf31ef509be62f5a688f20306c078cddd4781caa763986530aa526d526`  
		Last Modified: Sun, 29 Apr 2018 05:32:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fe0300deabb6ddee8c311eff10e780db031bc9a14e0caa6e4f7b89accd6968`  
		Last Modified: Sun, 29 Apr 2018 06:54:53 GMT  
		Size: 221.1 MB (221133304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7906c1930ccbea921b34b819e53e48dc1136c59c873d12d435fd276000100d3f`  
		Last Modified: Sun, 29 Apr 2018 06:54:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f031604bcf3b4c3bd752edf3a23975665c372b3a3d74bc2038b1401bf502bd`  
		Last Modified: Sun, 29 Apr 2018 07:19:36 GMT  
		Size: 242.5 MB (242546834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo4`

```console
$ docker pull gazebo@sha256:e4c311f7535982cea7efa2568c1aaf270cde730f9474a26a6e56619e6b5794ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo4` - linux; amd64

```console
$ docker pull gazebo@sha256:350cca2ebbf2e46daa1ece4035e744ceda1f77ccf652e9d6f936e68f436246ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.5 MB (454469704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3067e3da0dd238338a621fefea5252163cd6b98611abaaa75b6013690a6250`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:46:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 05 Jun 2018 21:46:22 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 05 Jun 2018 21:48:44 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:48:44 GMT
EXPOSE 11345/tcp
# Tue, 05 Jun 2018 21:48:45 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 05 Jun 2018 21:48:45 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 05 Jun 2018 21:48:45 GMT
CMD ["gzserver"]
# Tue, 05 Jun 2018 21:54:41 GMT
RUN apt-get update && apt-get install -q -y     libgazebo4-dev=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078255bd6a98655d0d07d538278ecb0c8ee0b2263bd481718c9cd47d99d692ab`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566c8f8bc9a093fd212dace676d99069dc799c49382f3253c6bc8cde2578faa0`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f8e209d57f78515cd61ab7c17adb441b6ca0ddc4a9719c3eef02a988372286`  
		Last Modified: Tue, 05 Jun 2018 22:35:57 GMT  
		Size: 146.5 MB (146465647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dc41f82c7118e76b8ee8a7ec199db8d4db5f8690bf2db53903f329355fcad6`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4662e3ca296ce8df2c6217db0b4301d6ba71cfdd2a3d8bd97e8ccb8217c34a8c`  
		Last Modified: Tue, 05 Jun 2018 22:37:22 GMT  
		Size: 234.8 MB (234753756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo4-trusty`

```console
$ docker pull gazebo@sha256:e4c311f7535982cea7efa2568c1aaf270cde730f9474a26a6e56619e6b5794ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo4-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:350cca2ebbf2e46daa1ece4035e744ceda1f77ccf652e9d6f936e68f436246ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.5 MB (454469704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3067e3da0dd238338a621fefea5252163cd6b98611abaaa75b6013690a6250`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:46:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 05 Jun 2018 21:46:22 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 05 Jun 2018 21:48:44 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:48:44 GMT
EXPOSE 11345/tcp
# Tue, 05 Jun 2018 21:48:45 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 05 Jun 2018 21:48:45 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 05 Jun 2018 21:48:45 GMT
CMD ["gzserver"]
# Tue, 05 Jun 2018 21:54:41 GMT
RUN apt-get update && apt-get install -q -y     libgazebo4-dev=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078255bd6a98655d0d07d538278ecb0c8ee0b2263bd481718c9cd47d99d692ab`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566c8f8bc9a093fd212dace676d99069dc799c49382f3253c6bc8cde2578faa0`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f8e209d57f78515cd61ab7c17adb441b6ca0ddc4a9719c3eef02a988372286`  
		Last Modified: Tue, 05 Jun 2018 22:35:57 GMT  
		Size: 146.5 MB (146465647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dc41f82c7118e76b8ee8a7ec199db8d4db5f8690bf2db53903f329355fcad6`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4662e3ca296ce8df2c6217db0b4301d6ba71cfdd2a3d8bd97e8ccb8217c34a8c`  
		Last Modified: Tue, 05 Jun 2018 22:37:22 GMT  
		Size: 234.8 MB (234753756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo5`

```console
$ docker pull gazebo@sha256:21ec6b74dd1aa115961251b7a1213ddeeafd5d1d476c2943c16102a652a57751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo5` - linux; amd64

```console
$ docker pull gazebo@sha256:e2dd864387df1431d076b6278791ff43150a30a83858741759ae9f4fe62451b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **504.5 MB (504511661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9399c46ca1f8ef6217aa0b705128e0e79eef5462622b2737dd50857b5ef779af`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:46:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 05 Jun 2018 21:46:22 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 05 Jun 2018 21:57:21 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:57:21 GMT
EXPOSE 11345/tcp
# Tue, 05 Jun 2018 21:57:21 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 05 Jun 2018 21:57:22 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 05 Jun 2018 21:57:22 GMT
CMD ["gzserver"]
# Tue, 05 Jun 2018 21:59:19 GMT
RUN apt-get update && apt-get install -q -y     libgazebo5-dev=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078255bd6a98655d0d07d538278ecb0c8ee0b2263bd481718c9cd47d99d692ab`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566c8f8bc9a093fd212dace676d99069dc799c49382f3253c6bc8cde2578faa0`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c77a4b1397ae2eb597a0590f4697588beff4d7ffb9e082e6a249a8b1ea5750b`  
		Last Modified: Tue, 05 Jun 2018 22:40:53 GMT  
		Size: 167.3 MB (167268546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662a326c29937ed853cd61d021e6cf18910ab6c7e9157d2010b7a99b8e9844ff`  
		Last Modified: Tue, 05 Jun 2018 22:40:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6232eef4dae3285a02ff96025e1d563232b51f8429dcb7d71e61c441200489`  
		Last Modified: Tue, 05 Jun 2018 22:42:25 GMT  
		Size: 264.0 MB (263992815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo5-trusty`

```console
$ docker pull gazebo@sha256:21ec6b74dd1aa115961251b7a1213ddeeafd5d1d476c2943c16102a652a57751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo5-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:e2dd864387df1431d076b6278791ff43150a30a83858741759ae9f4fe62451b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **504.5 MB (504511661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9399c46ca1f8ef6217aa0b705128e0e79eef5462622b2737dd50857b5ef779af`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:46:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 05 Jun 2018 21:46:22 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 05 Jun 2018 21:57:21 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:57:21 GMT
EXPOSE 11345/tcp
# Tue, 05 Jun 2018 21:57:21 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 05 Jun 2018 21:57:22 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 05 Jun 2018 21:57:22 GMT
CMD ["gzserver"]
# Tue, 05 Jun 2018 21:59:19 GMT
RUN apt-get update && apt-get install -q -y     libgazebo5-dev=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078255bd6a98655d0d07d538278ecb0c8ee0b2263bd481718c9cd47d99d692ab`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566c8f8bc9a093fd212dace676d99069dc799c49382f3253c6bc8cde2578faa0`  
		Last Modified: Tue, 05 Jun 2018 22:35:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c77a4b1397ae2eb597a0590f4697588beff4d7ffb9e082e6a249a8b1ea5750b`  
		Last Modified: Tue, 05 Jun 2018 22:40:53 GMT  
		Size: 167.3 MB (167268546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662a326c29937ed853cd61d021e6cf18910ab6c7e9157d2010b7a99b8e9844ff`  
		Last Modified: Tue, 05 Jun 2018 22:40:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6232eef4dae3285a02ff96025e1d563232b51f8429dcb7d71e61c441200489`  
		Last Modified: Tue, 05 Jun 2018 22:42:25 GMT  
		Size: 264.0 MB (263992815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo6`

```console
$ docker pull gazebo@sha256:36e3e6ee1b3a00a910179e7a768b6b14f92d62cb4d123bd1b2680cc5f8f21b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo6` - linux; amd64

```console
$ docker pull gazebo@sha256:603303c0c2c4b2c24eef49f15c54eaf2b9b97061c006ccbaaf9a7cf81d1ed4b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.8 MB (497805326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c6550155decd11dea910afb065cfdfd9e4afb680baa6e66f3c178155900d49`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 00:11:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 00:11:28 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 01:15:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:15:22 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 01:15:23 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 01:15:23 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 01:15:23 GMT
CMD ["gzserver"]
# Sun, 29 Apr 2018 01:17:43 GMT
RUN apt-get update && apt-get install -q -y     libgazebo6-dev=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30dc350b03e9c758761a02a8e73b4fa6503ebd4dc94c868e42f31ef68d12fda4`  
		Last Modified: Sun, 29 Apr 2018 03:23:51 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7257556e596c0ce41fbdca4edd280ce7b8d5cb1b36d99361878b02c2cd088905`  
		Last Modified: Sun, 29 Apr 2018 03:23:51 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0c3cf1c5d74b32e9cbf3b3ced454b20f6a9e97a9742cf1214cddde5eca5f40`  
		Last Modified: Sun, 29 Apr 2018 04:55:58 GMT  
		Size: 171.3 MB (171335076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0871a6ead260882b4929132228643359870794ccdbe7de04c910282dfd9021c`  
		Last Modified: Sun, 29 Apr 2018 04:55:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cc4084aa054828483a79498f39181116caf965d4edd51cf735efaeb90ad3dd`  
		Last Modified: Sun, 29 Apr 2018 05:12:45 GMT  
		Size: 253.3 MB (253300587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo6-trusty`

```console
$ docker pull gazebo@sha256:36e3e6ee1b3a00a910179e7a768b6b14f92d62cb4d123bd1b2680cc5f8f21b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo6-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:603303c0c2c4b2c24eef49f15c54eaf2b9b97061c006ccbaaf9a7cf81d1ed4b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.8 MB (497805326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c6550155decd11dea910afb065cfdfd9e4afb680baa6e66f3c178155900d49`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 00:11:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 00:11:28 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 01:15:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:15:22 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 01:15:23 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 01:15:23 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 01:15:23 GMT
CMD ["gzserver"]
# Sun, 29 Apr 2018 01:17:43 GMT
RUN apt-get update && apt-get install -q -y     libgazebo6-dev=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30dc350b03e9c758761a02a8e73b4fa6503ebd4dc94c868e42f31ef68d12fda4`  
		Last Modified: Sun, 29 Apr 2018 03:23:51 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7257556e596c0ce41fbdca4edd280ce7b8d5cb1b36d99361878b02c2cd088905`  
		Last Modified: Sun, 29 Apr 2018 03:23:51 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0c3cf1c5d74b32e9cbf3b3ced454b20f6a9e97a9742cf1214cddde5eca5f40`  
		Last Modified: Sun, 29 Apr 2018 04:55:58 GMT  
		Size: 171.3 MB (171335076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0871a6ead260882b4929132228643359870794ccdbe7de04c910282dfd9021c`  
		Last Modified: Sun, 29 Apr 2018 04:55:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cc4084aa054828483a79498f39181116caf965d4edd51cf735efaeb90ad3dd`  
		Last Modified: Sun, 29 Apr 2018 05:12:45 GMT  
		Size: 253.3 MB (253300587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo7`

```console
$ docker pull gazebo@sha256:2ee6aaf845a6b5ba5b4ea4dc96133a20fa7356e46686dcef5ed0ab8d177c69d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7` - linux; amd64

```console
$ docker pull gazebo@sha256:285f842e6b5df7e56b95979dd1a23e9bf5fa53df85b3f3a28c7517384e23ada8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.4 MB (495364759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cae933623c2fc25e7c1713b617d6f999cbb58652ae645966eb642884ce9e373`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 01:39:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 01:39:10 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 01:42:43 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.12.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:42:43 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 01:42:44 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 01:42:44 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 01:42:44 GMT
CMD ["gzserver"]
# Sun, 29 Apr 2018 01:49:47 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.12.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add8671e2f5a2dc97c8d5a7abf2da49ebf7cb4f2db079bea33b1579508155ef`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea4edf31ef509be62f5a688f20306c078cddd4781caa763986530aa526d526`  
		Last Modified: Sun, 29 Apr 2018 05:32:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c085434de2c80372c712abea2455ceb8e538f25a14ff15783179479af8756c1`  
		Last Modified: Sun, 29 Apr 2018 05:33:30 GMT  
		Size: 192.4 MB (192363915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c676314f38f2a3c1d86766dc2d2329b8de6639afc7e8870eaa7457a257b797`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e491f5c8dcf3a1bbc9763481d046f61aec28bc2c6638610245dc136855ba1ddb`  
		Last Modified: Sun, 29 Apr 2018 05:48:29 GMT  
		Size: 260.0 MB (259957958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo7-xenial`

```console
$ docker pull gazebo@sha256:2ee6aaf845a6b5ba5b4ea4dc96133a20fa7356e46686dcef5ed0ab8d177c69d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:285f842e6b5df7e56b95979dd1a23e9bf5fa53df85b3f3a28c7517384e23ada8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.4 MB (495364759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cae933623c2fc25e7c1713b617d6f999cbb58652ae645966eb642884ce9e373`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 01:39:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 01:39:10 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 01:42:43 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.12.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:42:43 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 01:42:44 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 01:42:44 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 01:42:44 GMT
CMD ["gzserver"]
# Sun, 29 Apr 2018 01:49:47 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.12.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add8671e2f5a2dc97c8d5a7abf2da49ebf7cb4f2db079bea33b1579508155ef`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea4edf31ef509be62f5a688f20306c078cddd4781caa763986530aa526d526`  
		Last Modified: Sun, 29 Apr 2018 05:32:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c085434de2c80372c712abea2455ceb8e538f25a14ff15783179479af8756c1`  
		Last Modified: Sun, 29 Apr 2018 05:33:30 GMT  
		Size: 192.4 MB (192363915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c676314f38f2a3c1d86766dc2d2329b8de6639afc7e8870eaa7457a257b797`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e491f5c8dcf3a1bbc9763481d046f61aec28bc2c6638610245dc136855ba1ddb`  
		Last Modified: Sun, 29 Apr 2018 05:48:29 GMT  
		Size: 260.0 MB (259957958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo8`

```console
$ docker pull gazebo@sha256:0885be2fba9c38c583b37dee8700d0bc1b25786de8390fa2e745248051703631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8` - linux; amd64

```console
$ docker pull gazebo@sha256:80ba87ce255012d480e280aa4ad4ee2ffed88f03a9c35faab800d1340e9b1dab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.4 MB (498445366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65eb0540d3df556868fd2c01885dac350d036cd3dcd7a9089923b68cdd8cf737`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 01:39:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 01:39:10 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 02:12:10 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 02:12:11 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 02:12:11 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 02:12:11 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 02:12:12 GMT
CMD ["gzserver"]
# Sun, 29 Apr 2018 02:29:20 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add8671e2f5a2dc97c8d5a7abf2da49ebf7cb4f2db079bea33b1579508155ef`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea4edf31ef509be62f5a688f20306c078cddd4781caa763986530aa526d526`  
		Last Modified: Sun, 29 Apr 2018 05:32:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3402e1198c9e32341e0f3ed3f6d97b17a5b8e2ca341e98f25c26d6bdbeb8f631`  
		Last Modified: Sun, 29 Apr 2018 06:14:51 GMT  
		Size: 221.1 MB (221130088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3ac5f1a5be0eaaff3d919e9e037750d323ecc4226d1965558bac554075f92d`  
		Last Modified: Sun, 29 Apr 2018 06:14:11 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc22547014f18a2d661b3f5d146d79bcaaf9a187f479dc5dffda1ccc908b8b6`  
		Last Modified: Sun, 29 Apr 2018 06:32:55 GMT  
		Size: 234.3 MB (234272392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo8-xenial`

```console
$ docker pull gazebo@sha256:0885be2fba9c38c583b37dee8700d0bc1b25786de8390fa2e745248051703631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:80ba87ce255012d480e280aa4ad4ee2ffed88f03a9c35faab800d1340e9b1dab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.4 MB (498445366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65eb0540d3df556868fd2c01885dac350d036cd3dcd7a9089923b68cdd8cf737`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 01:39:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 01:39:10 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 02:12:10 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 02:12:11 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 02:12:11 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 02:12:11 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 02:12:12 GMT
CMD ["gzserver"]
# Sun, 29 Apr 2018 02:29:20 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add8671e2f5a2dc97c8d5a7abf2da49ebf7cb4f2db079bea33b1579508155ef`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea4edf31ef509be62f5a688f20306c078cddd4781caa763986530aa526d526`  
		Last Modified: Sun, 29 Apr 2018 05:32:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3402e1198c9e32341e0f3ed3f6d97b17a5b8e2ca341e98f25c26d6bdbeb8f631`  
		Last Modified: Sun, 29 Apr 2018 06:14:51 GMT  
		Size: 221.1 MB (221130088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3ac5f1a5be0eaaff3d919e9e037750d323ecc4226d1965558bac554075f92d`  
		Last Modified: Sun, 29 Apr 2018 06:14:11 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc22547014f18a2d661b3f5d146d79bcaaf9a187f479dc5dffda1ccc908b8b6`  
		Last Modified: Sun, 29 Apr 2018 06:32:55 GMT  
		Size: 234.3 MB (234272392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo9`

```console
$ docker pull gazebo@sha256:51c4ef3c87fbfe7f2627678e0b09d8bb4d3d7f6023a866e7a0d2256f9a8e6254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo9` - linux; amd64

```console
$ docker pull gazebo@sha256:62cafb90c3c83be1dd20599a78ae341c8ef4128e81223a58317ae628fef06832
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.7 MB (506723023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7679b99ec5d04aa6d4f3f35b026dcee5c0a7d09396fbaf261be7531ac032182`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 01:39:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 01:39:10 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 02:51:59 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 02:52:00 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 02:52:00 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 02:52:00 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 02:52:01 GMT
CMD ["gzserver"]
# Sun, 29 Apr 2018 03:01:56 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add8671e2f5a2dc97c8d5a7abf2da49ebf7cb4f2db079bea33b1579508155ef`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea4edf31ef509be62f5a688f20306c078cddd4781caa763986530aa526d526`  
		Last Modified: Sun, 29 Apr 2018 05:32:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fe0300deabb6ddee8c311eff10e780db031bc9a14e0caa6e4f7b89accd6968`  
		Last Modified: Sun, 29 Apr 2018 06:54:53 GMT  
		Size: 221.1 MB (221133304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7906c1930ccbea921b34b819e53e48dc1136c59c873d12d435fd276000100d3f`  
		Last Modified: Sun, 29 Apr 2018 06:54:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f031604bcf3b4c3bd752edf3a23975665c372b3a3d74bc2038b1401bf502bd`  
		Last Modified: Sun, 29 Apr 2018 07:19:36 GMT  
		Size: 242.5 MB (242546834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo9-xenial`

```console
$ docker pull gazebo@sha256:51c4ef3c87fbfe7f2627678e0b09d8bb4d3d7f6023a866e7a0d2256f9a8e6254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo9-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:62cafb90c3c83be1dd20599a78ae341c8ef4128e81223a58317ae628fef06832
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.7 MB (506723023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7679b99ec5d04aa6d4f3f35b026dcee5c0a7d09396fbaf261be7531ac032182`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 01:39:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 01:39:10 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 02:51:59 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 02:52:00 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 02:52:00 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 02:52:00 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 02:52:01 GMT
CMD ["gzserver"]
# Sun, 29 Apr 2018 03:01:56 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.0.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add8671e2f5a2dc97c8d5a7abf2da49ebf7cb4f2db079bea33b1579508155ef`  
		Last Modified: Sun, 29 Apr 2018 05:32:53 GMT  
		Size: 13.1 KB (13119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea4edf31ef509be62f5a688f20306c078cddd4781caa763986530aa526d526`  
		Last Modified: Sun, 29 Apr 2018 05:32:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fe0300deabb6ddee8c311eff10e780db031bc9a14e0caa6e4f7b89accd6968`  
		Last Modified: Sun, 29 Apr 2018 06:54:53 GMT  
		Size: 221.1 MB (221133304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7906c1930ccbea921b34b819e53e48dc1136c59c873d12d435fd276000100d3f`  
		Last Modified: Sun, 29 Apr 2018 06:54:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f031604bcf3b4c3bd752edf3a23975665c372b3a3d74bc2038b1401bf502bd`  
		Last Modified: Sun, 29 Apr 2018 07:19:36 GMT  
		Size: 242.5 MB (242546834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
