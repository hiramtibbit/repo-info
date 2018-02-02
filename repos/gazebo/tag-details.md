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
$ docker pull gazebo@sha256:477f593161114811ce775b96666b09b931e7fd1f6d6a7b2f93edda16bc9940e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver4` - linux; amd64

```console
$ docker pull gazebo@sha256:192207750a3f01746cfbb3795d68d6d30ed6e0b914d01c47020130bfeff085bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.5 MB (219497405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4aa55d23f4dfa54454a0460a53108b8041a6b778888ee4f1ca32928dce7922d`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:03:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 19:03:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 19:04:55 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:18:51 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 19:18:52 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 19:18:52 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 19:18:52 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913efe23821f15b50f0314e0d8feadd6042e9d9c6aa832a4df22c5c6c8be3d4`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e741ed26e7154b941a4669f0d919d80b145a545c958ae47b2dd21ba33de1d2a`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c6f19b67963e36115a5b45dd545363f195b28464dbeb6edab2a57b4aea70b`  
		Last Modified: Thu, 25 Jan 2018 21:01:00 GMT  
		Size: 146.5 MB (146456622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d457461060f2f21ac7468e4daf2233d2948dcbb48695ce81aee94fd6f08d6169`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver4-trusty`

```console
$ docker pull gazebo@sha256:477f593161114811ce775b96666b09b931e7fd1f6d6a7b2f93edda16bc9940e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver4-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:192207750a3f01746cfbb3795d68d6d30ed6e0b914d01c47020130bfeff085bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.5 MB (219497405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4aa55d23f4dfa54454a0460a53108b8041a6b778888ee4f1ca32928dce7922d`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:03:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 19:03:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 19:04:55 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:18:51 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 19:18:52 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 19:18:52 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 19:18:52 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913efe23821f15b50f0314e0d8feadd6042e9d9c6aa832a4df22c5c6c8be3d4`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e741ed26e7154b941a4669f0d919d80b145a545c958ae47b2dd21ba33de1d2a`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c6f19b67963e36115a5b45dd545363f195b28464dbeb6edab2a57b4aea70b`  
		Last Modified: Thu, 25 Jan 2018 21:01:00 GMT  
		Size: 146.5 MB (146456622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d457461060f2f21ac7468e4daf2233d2948dcbb48695ce81aee94fd6f08d6169`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver5`

```console
$ docker pull gazebo@sha256:67fa2930bb96ff9104fe8e7e2abe6e37edc2743bffedd495f065dc8b6c6c663f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver5` - linux; amd64

```console
$ docker pull gazebo@sha256:b35b1c7489cb94e02547daa24514d9e5b2226a80417b1ec33ea22ca3845aa4d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240300774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd50603e8faf4af4abce23e9c8311c9010b2ae59ba3250945f78df4fad4a70d`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:03:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 19:03:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 19:36:31 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:36:32 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 19:36:32 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 19:36:33 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 19:36:33 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913efe23821f15b50f0314e0d8feadd6042e9d9c6aa832a4df22c5c6c8be3d4`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e741ed26e7154b941a4669f0d919d80b145a545c958ae47b2dd21ba33de1d2a`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217c7ff5eb0da0b0fae7720e554867cf6daafa08341aea65b84d1dcf005fdeac`  
		Last Modified: Thu, 25 Jan 2018 21:16:10 GMT  
		Size: 167.3 MB (167259990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7946640b895f247824217b0b2fcad0385df7d0de166aedd7f594c550670158`  
		Last Modified: Thu, 25 Jan 2018 21:15:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver5-trusty`

```console
$ docker pull gazebo@sha256:67fa2930bb96ff9104fe8e7e2abe6e37edc2743bffedd495f065dc8b6c6c663f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver5-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:b35b1c7489cb94e02547daa24514d9e5b2226a80417b1ec33ea22ca3845aa4d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240300774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd50603e8faf4af4abce23e9c8311c9010b2ae59ba3250945f78df4fad4a70d`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:03:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 19:03:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 19:36:31 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:36:32 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 19:36:32 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 19:36:33 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 19:36:33 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913efe23821f15b50f0314e0d8feadd6042e9d9c6aa832a4df22c5c6c8be3d4`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e741ed26e7154b941a4669f0d919d80b145a545c958ae47b2dd21ba33de1d2a`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217c7ff5eb0da0b0fae7720e554867cf6daafa08341aea65b84d1dcf005fdeac`  
		Last Modified: Thu, 25 Jan 2018 21:16:10 GMT  
		Size: 167.3 MB (167259990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7946640b895f247824217b0b2fcad0385df7d0de166aedd7f594c550670158`  
		Last Modified: Thu, 25 Jan 2018 21:15:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver6`

```console
$ docker pull gazebo@sha256:1a5c2e645a5205d06a5705b8560b66cbc013f44897d79dc301e90a7575ecaca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver6` - linux; amd64

```console
$ docker pull gazebo@sha256:e3aea32736d1696d54b8151e7221eafe13123e38d477e99d82fe633e3d59dbe4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244374689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c675429377879f5cd0be9644abc628d5560917199e426ab4114f35d524fe8d`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:03:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 19:03:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 19:48:35 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:48:36 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 19:48:36 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 19:48:36 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 19:48:37 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913efe23821f15b50f0314e0d8feadd6042e9d9c6aa832a4df22c5c6c8be3d4`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e741ed26e7154b941a4669f0d919d80b145a545c958ae47b2dd21ba33de1d2a`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1252ea5d4e5c4d115513440919dfa399577e9ad18d9e3d869d83da4db20381dc`  
		Last Modified: Thu, 25 Jan 2018 21:32:02 GMT  
		Size: 171.3 MB (171333905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56baf3d07f5e15b570d18ad0fb0dd14b2784e6ba425c9ba8d512d73c3bb05c8c`  
		Last Modified: Thu, 25 Jan 2018 21:31:32 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver6-trusty`

```console
$ docker pull gazebo@sha256:1a5c2e645a5205d06a5705b8560b66cbc013f44897d79dc301e90a7575ecaca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver6-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:e3aea32736d1696d54b8151e7221eafe13123e38d477e99d82fe633e3d59dbe4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244374689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c675429377879f5cd0be9644abc628d5560917199e426ab4114f35d524fe8d`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:03:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 19:03:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 19:48:35 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:48:36 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 19:48:36 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 19:48:36 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 19:48:37 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913efe23821f15b50f0314e0d8feadd6042e9d9c6aa832a4df22c5c6c8be3d4`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e741ed26e7154b941a4669f0d919d80b145a545c958ae47b2dd21ba33de1d2a`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1252ea5d4e5c4d115513440919dfa399577e9ad18d9e3d869d83da4db20381dc`  
		Last Modified: Thu, 25 Jan 2018 21:32:02 GMT  
		Size: 171.3 MB (171333905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56baf3d07f5e15b570d18ad0fb0dd14b2784e6ba425c9ba8d512d73c3bb05c8c`  
		Last Modified: Thu, 25 Jan 2018 21:31:32 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver7`

```console
$ docker pull gazebo@sha256:f3c59511290b69d29b148ed5deaa5d3bafe30c8eff33650b7bdf0b8a78589364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver7` - linux; amd64

```console
$ docker pull gazebo@sha256:b583274ec09fee6fcfd72794ea697b3c49b72bb275f15a020fc16780d2b3dcf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.7 MB (234693272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec8107bc650e37a9f383bf4619a9e47fc520985293d8ea2474f3486565bd23c`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 20:04:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 20:05:57 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.9.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:58 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 20:05:58 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 20:05:58 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 20:05:59 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec91d90dd5a28d04cf75f9a6a618e89fba9b6c7d9b0396623cb057c51429e10f`  
		Last Modified: Thu, 25 Jan 2018 21:47:45 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91efa7e8451bbabeb095a1725d4a6b618adcc35b75cbac73934ccd6bad50055a`  
		Last Modified: Thu, 25 Jan 2018 21:47:46 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d7a40fc4848b8613b30578d37a733a43f407a53686c1f40b5217c214d3228e`  
		Last Modified: Thu, 25 Jan 2018 21:48:20 GMT  
		Size: 191.8 MB (191813739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b401cbba6a9c76227cadf66339c9710c85bb538508727175e4a62a64642d96`  
		Last Modified: Thu, 25 Jan 2018 21:47:45 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver7-xenial`

```console
$ docker pull gazebo@sha256:f3c59511290b69d29b148ed5deaa5d3bafe30c8eff33650b7bdf0b8a78589364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver7-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:b583274ec09fee6fcfd72794ea697b3c49b72bb275f15a020fc16780d2b3dcf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.7 MB (234693272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec8107bc650e37a9f383bf4619a9e47fc520985293d8ea2474f3486565bd23c`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 20:04:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 20:05:57 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.9.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:58 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 20:05:58 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 20:05:58 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 20:05:59 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec91d90dd5a28d04cf75f9a6a618e89fba9b6c7d9b0396623cb057c51429e10f`  
		Last Modified: Thu, 25 Jan 2018 21:47:45 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91efa7e8451bbabeb095a1725d4a6b618adcc35b75cbac73934ccd6bad50055a`  
		Last Modified: Thu, 25 Jan 2018 21:47:46 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d7a40fc4848b8613b30578d37a733a43f407a53686c1f40b5217c214d3228e`  
		Last Modified: Thu, 25 Jan 2018 21:48:20 GMT  
		Size: 191.8 MB (191813739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b401cbba6a9c76227cadf66339c9710c85bb538508727175e4a62a64642d96`  
		Last Modified: Thu, 25 Jan 2018 21:47:45 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver8`

```console
$ docker pull gazebo@sha256:e460174cdceb9b452b7f6b727ad9567f63681fe3b2129f6e3f66a69175b19ceb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver8` - linux; amd64

```console
$ docker pull gazebo@sha256:bbde2693cdd63e423d5f800a4a6ea9f98fb970304cdcc9c730b58144a3d26bcd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263463738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fbc0ec415234f19fa55f9d7ad4aec533ae27702672379b6c9124ac8cf62f635`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 20:04:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 20:30:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.2.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:43:18 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 20:43:18 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 20:43:19 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 20:43:19 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec91d90dd5a28d04cf75f9a6a618e89fba9b6c7d9b0396623cb057c51429e10f`  
		Last Modified: Thu, 25 Jan 2018 21:47:45 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91efa7e8451bbabeb095a1725d4a6b618adcc35b75cbac73934ccd6bad50055a`  
		Last Modified: Thu, 25 Jan 2018 21:47:46 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc635f1dd4f721b556746019c5ea56194a96f17458b150b6813f6182ec912e6`  
		Last Modified: Thu, 25 Jan 2018 22:15:22 GMT  
		Size: 220.6 MB (220584207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86d3a67b28780d4c1ef189d70941ed705e56d4c29f2dceb80f8d534a561e955`  
		Last Modified: Thu, 25 Jan 2018 22:14:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver8-xenial`

```console
$ docker pull gazebo@sha256:e460174cdceb9b452b7f6b727ad9567f63681fe3b2129f6e3f66a69175b19ceb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver8-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:bbde2693cdd63e423d5f800a4a6ea9f98fb970304cdcc9c730b58144a3d26bcd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263463738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fbc0ec415234f19fa55f9d7ad4aec533ae27702672379b6c9124ac8cf62f635`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 20:04:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 20:30:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.2.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:43:18 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 20:43:18 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 20:43:19 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 20:43:19 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec91d90dd5a28d04cf75f9a6a618e89fba9b6c7d9b0396623cb057c51429e10f`  
		Last Modified: Thu, 25 Jan 2018 21:47:45 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91efa7e8451bbabeb095a1725d4a6b618adcc35b75cbac73934ccd6bad50055a`  
		Last Modified: Thu, 25 Jan 2018 21:47:46 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc635f1dd4f721b556746019c5ea56194a96f17458b150b6813f6182ec912e6`  
		Last Modified: Thu, 25 Jan 2018 22:15:22 GMT  
		Size: 220.6 MB (220584207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86d3a67b28780d4c1ef189d70941ed705e56d4c29f2dceb80f8d534a561e955`  
		Last Modified: Thu, 25 Jan 2018 22:14:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver9`

**does not exist** (yet?)

## `gazebo:gzserver9-xenial`

**does not exist** (yet?)

## `gazebo:latest`

```console
$ docker pull gazebo@sha256:42cb3aa0af4b5f9536c3e4a79d8333a61672f63502e575909840dd0a023d79ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:latest` - linux; amd64

```console
$ docker pull gazebo@sha256:d9cb3ac0ac978d7265ddb072e08f4c0d18ffbade0a7e206223b7b724d0cc41d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.6 MB (506625878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05c24cf263b2a60238450bef98c7ff51b4cbac36e6b2d7afa2914aa03f0619a`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 20:04:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 20:30:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.2.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:43:18 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 20:43:18 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 20:43:19 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 20:43:19 GMT
CMD ["gzserver"]
# Thu, 25 Jan 2018 20:46:37 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.2.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec91d90dd5a28d04cf75f9a6a618e89fba9b6c7d9b0396623cb057c51429e10f`  
		Last Modified: Thu, 25 Jan 2018 21:47:45 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91efa7e8451bbabeb095a1725d4a6b618adcc35b75cbac73934ccd6bad50055a`  
		Last Modified: Thu, 25 Jan 2018 21:47:46 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc635f1dd4f721b556746019c5ea56194a96f17458b150b6813f6182ec912e6`  
		Last Modified: Thu, 25 Jan 2018 22:15:22 GMT  
		Size: 220.6 MB (220584207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86d3a67b28780d4c1ef189d70941ed705e56d4c29f2dceb80f8d534a561e955`  
		Last Modified: Thu, 25 Jan 2018 22:14:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53efe70961522603bba5a5ff8f573044e93d2220d1de5dcbe162856ad04a0c1`  
		Last Modified: Thu, 25 Jan 2018 22:17:00 GMT  
		Size: 243.2 MB (243162140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo4`

```console
$ docker pull gazebo@sha256:93b7bac7222a4ab1dfa08801930910dffad8ea0ff75b01293046d47e647ed8f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo4` - linux; amd64

```console
$ docker pull gazebo@sha256:08e0082e2c4c804790083912d6dd2f740d8038a221d13479a91d769dd5723583
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.2 MB (454214496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a934a5557cbf35d04ffa00b41bb024b079838cc578231faf6a36ad1891347b3`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:03:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 19:03:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 19:04:55 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:18:51 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 19:18:52 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 19:18:52 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 19:18:52 GMT
CMD ["gzserver"]
# Thu, 25 Jan 2018 19:21:57 GMT
RUN apt-get update && apt-get install -q -y     libgazebo4-dev=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913efe23821f15b50f0314e0d8feadd6042e9d9c6aa832a4df22c5c6c8be3d4`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e741ed26e7154b941a4669f0d919d80b145a545c958ae47b2dd21ba33de1d2a`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c6f19b67963e36115a5b45dd545363f195b28464dbeb6edab2a57b4aea70b`  
		Last Modified: Thu, 25 Jan 2018 21:01:00 GMT  
		Size: 146.5 MB (146456622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d457461060f2f21ac7468e4daf2233d2948dcbb48695ce81aee94fd6f08d6169`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabeadac64ce29cc65d5c4b8dc01ae2fcb6d8ce658eae8b9269af0779c33c764`  
		Last Modified: Thu, 25 Jan 2018 21:02:32 GMT  
		Size: 234.7 MB (234717091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo4-trusty`

```console
$ docker pull gazebo@sha256:93b7bac7222a4ab1dfa08801930910dffad8ea0ff75b01293046d47e647ed8f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo4-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:08e0082e2c4c804790083912d6dd2f740d8038a221d13479a91d769dd5723583
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.2 MB (454214496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a934a5557cbf35d04ffa00b41bb024b079838cc578231faf6a36ad1891347b3`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:03:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 19:03:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 19:04:55 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:18:51 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 19:18:52 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 19:18:52 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 19:18:52 GMT
CMD ["gzserver"]
# Thu, 25 Jan 2018 19:21:57 GMT
RUN apt-get update && apt-get install -q -y     libgazebo4-dev=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913efe23821f15b50f0314e0d8feadd6042e9d9c6aa832a4df22c5c6c8be3d4`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e741ed26e7154b941a4669f0d919d80b145a545c958ae47b2dd21ba33de1d2a`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c6f19b67963e36115a5b45dd545363f195b28464dbeb6edab2a57b4aea70b`  
		Last Modified: Thu, 25 Jan 2018 21:01:00 GMT  
		Size: 146.5 MB (146456622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d457461060f2f21ac7468e4daf2233d2948dcbb48695ce81aee94fd6f08d6169`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabeadac64ce29cc65d5c4b8dc01ae2fcb6d8ce658eae8b9269af0779c33c764`  
		Last Modified: Thu, 25 Jan 2018 21:02:32 GMT  
		Size: 234.7 MB (234717091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo5`

```console
$ docker pull gazebo@sha256:fc77c546818a3890329323b0c24b70825efc3eedf6bde07c3d91735a4e71c62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo5` - linux; amd64

```console
$ docker pull gazebo@sha256:8ce255398aa10e1b4de9880f1abb00ea77088e6d95fa6e40d635a688bc6fab61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **504.3 MB (504258898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:797b867c3416808a1a29a4310ed03587c5058ff3b15ac7690bce90cd5d079bb7`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:03:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 19:03:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 19:36:31 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:36:32 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 19:36:32 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 19:36:33 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 19:36:33 GMT
CMD ["gzserver"]
# Thu, 25 Jan 2018 19:40:19 GMT
RUN apt-get update && apt-get install -q -y     libgazebo5-dev=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913efe23821f15b50f0314e0d8feadd6042e9d9c6aa832a4df22c5c6c8be3d4`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e741ed26e7154b941a4669f0d919d80b145a545c958ae47b2dd21ba33de1d2a`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217c7ff5eb0da0b0fae7720e554867cf6daafa08341aea65b84d1dcf005fdeac`  
		Last Modified: Thu, 25 Jan 2018 21:16:10 GMT  
		Size: 167.3 MB (167259990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7946640b895f247824217b0b2fcad0385df7d0de166aedd7f594c550670158`  
		Last Modified: Thu, 25 Jan 2018 21:15:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:582f9277d52dd6e2510ac0810c7c9577620df533c4e925aaa4ff444c18ae6955`  
		Last Modified: Thu, 25 Jan 2018 21:17:44 GMT  
		Size: 264.0 MB (263958124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo5-trusty`

```console
$ docker pull gazebo@sha256:fc77c546818a3890329323b0c24b70825efc3eedf6bde07c3d91735a4e71c62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo5-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:8ce255398aa10e1b4de9880f1abb00ea77088e6d95fa6e40d635a688bc6fab61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **504.3 MB (504258898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:797b867c3416808a1a29a4310ed03587c5058ff3b15ac7690bce90cd5d079bb7`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:03:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 19:03:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 19:36:31 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:36:32 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 19:36:32 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 19:36:33 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 19:36:33 GMT
CMD ["gzserver"]
# Thu, 25 Jan 2018 19:40:19 GMT
RUN apt-get update && apt-get install -q -y     libgazebo5-dev=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913efe23821f15b50f0314e0d8feadd6042e9d9c6aa832a4df22c5c6c8be3d4`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e741ed26e7154b941a4669f0d919d80b145a545c958ae47b2dd21ba33de1d2a`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217c7ff5eb0da0b0fae7720e554867cf6daafa08341aea65b84d1dcf005fdeac`  
		Last Modified: Thu, 25 Jan 2018 21:16:10 GMT  
		Size: 167.3 MB (167259990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7946640b895f247824217b0b2fcad0385df7d0de166aedd7f594c550670158`  
		Last Modified: Thu, 25 Jan 2018 21:15:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:582f9277d52dd6e2510ac0810c7c9577620df533c4e925aaa4ff444c18ae6955`  
		Last Modified: Thu, 25 Jan 2018 21:17:44 GMT  
		Size: 264.0 MB (263958124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo6`

```console
$ docker pull gazebo@sha256:d14a4225f6efa73abb7746965a015869ee19a9d0c2362da767a08d6751a14012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo6` - linux; amd64

```console
$ docker pull gazebo@sha256:925c85098d07f6caa1aea8a0d6a33c4d8ac635c1af0e6317111e2645ce4c4deb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.6 MB (497619761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:864bff3a11916f311938c56bfef5a160e223a12560fe3840e925cd244865425b`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:03:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 19:03:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 19:48:35 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:48:36 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 19:48:36 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 19:48:36 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 19:48:37 GMT
CMD ["gzserver"]
# Thu, 25 Jan 2018 19:59:49 GMT
RUN apt-get update && apt-get install -q -y     libgazebo6-dev=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913efe23821f15b50f0314e0d8feadd6042e9d9c6aa832a4df22c5c6c8be3d4`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e741ed26e7154b941a4669f0d919d80b145a545c958ae47b2dd21ba33de1d2a`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1252ea5d4e5c4d115513440919dfa399577e9ad18d9e3d869d83da4db20381dc`  
		Last Modified: Thu, 25 Jan 2018 21:32:02 GMT  
		Size: 171.3 MB (171333905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56baf3d07f5e15b570d18ad0fb0dd14b2784e6ba425c9ba8d512d73c3bb05c8c`  
		Last Modified: Thu, 25 Jan 2018 21:31:32 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a12e093372e2ce58c8365d71fb2026e3691f6198317177b11cb7dd4be2bc599`  
		Last Modified: Thu, 25 Jan 2018 21:33:34 GMT  
		Size: 253.2 MB (253245072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo6-trusty`

```console
$ docker pull gazebo@sha256:d14a4225f6efa73abb7746965a015869ee19a9d0c2362da767a08d6751a14012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo6-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:925c85098d07f6caa1aea8a0d6a33c4d8ac635c1af0e6317111e2645ce4c4deb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.6 MB (497619761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:864bff3a11916f311938c56bfef5a160e223a12560fe3840e925cd244865425b`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:03:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 19:03:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 19:48:35 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:48:36 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 19:48:36 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 19:48:36 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 19:48:37 GMT
CMD ["gzserver"]
# Thu, 25 Jan 2018 19:59:49 GMT
RUN apt-get update && apt-get install -q -y     libgazebo6-dev=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913efe23821f15b50f0314e0d8feadd6042e9d9c6aa832a4df22c5c6c8be3d4`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e741ed26e7154b941a4669f0d919d80b145a545c958ae47b2dd21ba33de1d2a`  
		Last Modified: Thu, 25 Jan 2018 21:00:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1252ea5d4e5c4d115513440919dfa399577e9ad18d9e3d869d83da4db20381dc`  
		Last Modified: Thu, 25 Jan 2018 21:32:02 GMT  
		Size: 171.3 MB (171333905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56baf3d07f5e15b570d18ad0fb0dd14b2784e6ba425c9ba8d512d73c3bb05c8c`  
		Last Modified: Thu, 25 Jan 2018 21:31:32 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a12e093372e2ce58c8365d71fb2026e3691f6198317177b11cb7dd4be2bc599`  
		Last Modified: Thu, 25 Jan 2018 21:33:34 GMT  
		Size: 253.2 MB (253245072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo7`

```console
$ docker pull gazebo@sha256:c013cbdc0384843a96f56263329e37d05e783986ee92748e0ca79ab92515d8e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7` - linux; amd64

```console
$ docker pull gazebo@sha256:d2823de6592c8cafbf8eac985cd2a7fa0372e9ff4176cc6786ca2e7fdb3d3fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.5 MB (494473141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4bc77af2d3cb1d90da2a50c8653ac77ad47fec5b2b801b16f8798e015e61f5`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 20:04:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 20:05:57 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.9.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:58 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 20:05:58 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 20:05:58 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 20:05:59 GMT
CMD ["gzserver"]
# Thu, 25 Jan 2018 20:18:17 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.9.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec91d90dd5a28d04cf75f9a6a618e89fba9b6c7d9b0396623cb057c51429e10f`  
		Last Modified: Thu, 25 Jan 2018 21:47:45 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91efa7e8451bbabeb095a1725d4a6b618adcc35b75cbac73934ccd6bad50055a`  
		Last Modified: Thu, 25 Jan 2018 21:47:46 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d7a40fc4848b8613b30578d37a733a43f407a53686c1f40b5217c214d3228e`  
		Last Modified: Thu, 25 Jan 2018 21:48:20 GMT  
		Size: 191.8 MB (191813739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b401cbba6a9c76227cadf66339c9710c85bb538508727175e4a62a64642d96`  
		Last Modified: Thu, 25 Jan 2018 21:47:45 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affec9a138c0f4c137bd492bd97031b47eea8f17a840e2047058dc6579fe3ce4`  
		Last Modified: Thu, 25 Jan 2018 22:04:50 GMT  
		Size: 259.8 MB (259779869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo7-xenial`

```console
$ docker pull gazebo@sha256:c013cbdc0384843a96f56263329e37d05e783986ee92748e0ca79ab92515d8e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:d2823de6592c8cafbf8eac985cd2a7fa0372e9ff4176cc6786ca2e7fdb3d3fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.5 MB (494473141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4bc77af2d3cb1d90da2a50c8653ac77ad47fec5b2b801b16f8798e015e61f5`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 20:04:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 20:05:57 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.9.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:58 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 20:05:58 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 20:05:58 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 20:05:59 GMT
CMD ["gzserver"]
# Thu, 25 Jan 2018 20:18:17 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.9.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec91d90dd5a28d04cf75f9a6a618e89fba9b6c7d9b0396623cb057c51429e10f`  
		Last Modified: Thu, 25 Jan 2018 21:47:45 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91efa7e8451bbabeb095a1725d4a6b618adcc35b75cbac73934ccd6bad50055a`  
		Last Modified: Thu, 25 Jan 2018 21:47:46 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d7a40fc4848b8613b30578d37a733a43f407a53686c1f40b5217c214d3228e`  
		Last Modified: Thu, 25 Jan 2018 21:48:20 GMT  
		Size: 191.8 MB (191813739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b401cbba6a9c76227cadf66339c9710c85bb538508727175e4a62a64642d96`  
		Last Modified: Thu, 25 Jan 2018 21:47:45 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affec9a138c0f4c137bd492bd97031b47eea8f17a840e2047058dc6579fe3ce4`  
		Last Modified: Thu, 25 Jan 2018 22:04:50 GMT  
		Size: 259.8 MB (259779869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo8`

```console
$ docker pull gazebo@sha256:42cb3aa0af4b5f9536c3e4a79d8333a61672f63502e575909840dd0a023d79ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8` - linux; amd64

```console
$ docker pull gazebo@sha256:d9cb3ac0ac978d7265ddb072e08f4c0d18ffbade0a7e206223b7b724d0cc41d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.6 MB (506625878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05c24cf263b2a60238450bef98c7ff51b4cbac36e6b2d7afa2914aa03f0619a`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 20:04:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 20:30:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.2.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:43:18 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 20:43:18 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 20:43:19 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 20:43:19 GMT
CMD ["gzserver"]
# Thu, 25 Jan 2018 20:46:37 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.2.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec91d90dd5a28d04cf75f9a6a618e89fba9b6c7d9b0396623cb057c51429e10f`  
		Last Modified: Thu, 25 Jan 2018 21:47:45 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91efa7e8451bbabeb095a1725d4a6b618adcc35b75cbac73934ccd6bad50055a`  
		Last Modified: Thu, 25 Jan 2018 21:47:46 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc635f1dd4f721b556746019c5ea56194a96f17458b150b6813f6182ec912e6`  
		Last Modified: Thu, 25 Jan 2018 22:15:22 GMT  
		Size: 220.6 MB (220584207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86d3a67b28780d4c1ef189d70941ed705e56d4c29f2dceb80f8d534a561e955`  
		Last Modified: Thu, 25 Jan 2018 22:14:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53efe70961522603bba5a5ff8f573044e93d2220d1de5dcbe162856ad04a0c1`  
		Last Modified: Thu, 25 Jan 2018 22:17:00 GMT  
		Size: 243.2 MB (243162140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo8-xenial`

```console
$ docker pull gazebo@sha256:42cb3aa0af4b5f9536c3e4a79d8333a61672f63502e575909840dd0a023d79ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:d9cb3ac0ac978d7265ddb072e08f4c0d18ffbade0a7e206223b7b724d0cc41d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.6 MB (506625878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05c24cf263b2a60238450bef98c7ff51b4cbac36e6b2d7afa2914aa03f0619a`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 25 Jan 2018 20:04:39 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 25 Jan 2018 20:30:22 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.2.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:43:18 GMT
EXPOSE 11345/tcp
# Thu, 25 Jan 2018 20:43:18 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 25 Jan 2018 20:43:19 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 25 Jan 2018 20:43:19 GMT
CMD ["gzserver"]
# Thu, 25 Jan 2018 20:46:37 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.2.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec91d90dd5a28d04cf75f9a6a618e89fba9b6c7d9b0396623cb057c51429e10f`  
		Last Modified: Thu, 25 Jan 2018 21:47:45 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91efa7e8451bbabeb095a1725d4a6b618adcc35b75cbac73934ccd6bad50055a`  
		Last Modified: Thu, 25 Jan 2018 21:47:46 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc635f1dd4f721b556746019c5ea56194a96f17458b150b6813f6182ec912e6`  
		Last Modified: Thu, 25 Jan 2018 22:15:22 GMT  
		Size: 220.6 MB (220584207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86d3a67b28780d4c1ef189d70941ed705e56d4c29f2dceb80f8d534a561e955`  
		Last Modified: Thu, 25 Jan 2018 22:14:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53efe70961522603bba5a5ff8f573044e93d2220d1de5dcbe162856ad04a0c1`  
		Last Modified: Thu, 25 Jan 2018 22:17:00 GMT  
		Size: 243.2 MB (243162140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo9`

**does not exist** (yet?)

## `gazebo:libgazebo9-xenial`

**does not exist** (yet?)
