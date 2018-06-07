## `gazebo:libgazebo9`

```console
$ docker pull gazebo@sha256:a131b956183a9e8003f03b94ea6881b77292afca17bed30d51b7d328eac79479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo9` - linux; amd64

```console
$ docker pull gazebo@sha256:98d1c1b0e0bf14b4c049766b36aa148761e1ac456272f4d05cac1d250faa206d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **518.6 MB (518631446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614c6ebc583425c691086e94e0153aa99cd41a86d01aa389da77d9768eb471ee`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 02:57:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 07 Jun 2018 02:57:52 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 07 Jun 2018 03:14:21 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.1.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 03:14:22 GMT
EXPOSE 11345/tcp
# Thu, 07 Jun 2018 03:14:22 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Thu, 07 Jun 2018 03:14:22 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 07 Jun 2018 03:14:22 GMT
CMD ["gzserver"]
# Thu, 07 Jun 2018 03:16:07 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.1.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de62ae2a627840cd0b2d8bb06937906984c2b5f31d3d19baa66d180b0f60d5f`  
		Last Modified: Thu, 07 Jun 2018 03:26:08 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770f6c21ff453d0538ba5e164324fb85bfe6ac05f077ca92afcc733f64a7701e`  
		Last Modified: Thu, 07 Jun 2018 03:26:07 GMT  
		Size: 5.5 KB (5519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565cc83c46aff01be81b47171e637749c33c706feb3b62604a0c4768401bcd77`  
		Last Modified: Thu, 07 Jun 2018 03:33:45 GMT  
		Size: 216.6 MB (216599429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95f0b7fb307d82b16f11b68bbb4a2e9fc5b9f8d033477249dfc7732f6730170`  
		Last Modified: Thu, 07 Jun 2018 03:32:41 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36084421ec87a2919dd127ca9517071918f5cd29362a3b26a34c67f54a9b0fa`  
		Last Modified: Thu, 07 Jun 2018 03:35:32 GMT  
		Size: 242.2 MB (242229358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
