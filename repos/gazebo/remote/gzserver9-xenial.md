## `gazebo:gzserver9-xenial`

```console
$ docker pull gazebo@sha256:c92b580f678480729fb10c580a2fc057be6a3299f5c03829d7c47d7659a1d796
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver9-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:76c74404769118d5f37d2e91433f340007478a1e8d64a2f68bb66b66e2a2ecf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278591057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa49d2609be5912a2fcc46ea3dd705c846b65ac106f1d1104f19ae94bbb3752`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 08:00:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 10:17:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 17 Jul 2018 10:17:34 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 17 Jul 2018 22:23:38 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.2.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 22:23:38 GMT
EXPOSE 11345/tcp
# Tue, 17 Jul 2018 22:23:39 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 17 Jul 2018 22:23:39 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 17 Jul 2018 22:23:40 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4ac0968772017a321c34ac2de9536091f6df6f88d87a1c3056ece71e9f2896`  
		Last Modified: Tue, 17 Jul 2018 09:15:24 GMT  
		Size: 16.7 MB (16658309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7258bd9d9099d445abeaf53d5293ccd66916fef0c830b812814e851bcfb53d84`  
		Last Modified: Tue, 17 Jul 2018 10:43:32 GMT  
		Size: 13.1 KB (13116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e345b9c84763c7567b242f2b8a4fc48c43b32b713e418e4a33db48d9702ce18`  
		Last Modified: Tue, 17 Jul 2018 10:43:33 GMT  
		Size: 5.5 KB (5522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6713e5083776f64f89fdb5bd185467349e40d6e821e476bdeb26010aa040bb11`  
		Last Modified: Tue, 17 Jul 2018 22:30:00 GMT  
		Size: 218.7 MB (218721359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93329c4e65e83e490251147ebddf6f6470b12104eac40fe72b638ceef741decf`  
		Last Modified: Tue, 17 Jul 2018 22:29:15 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
