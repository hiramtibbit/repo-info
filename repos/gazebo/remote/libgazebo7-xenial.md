## `gazebo:libgazebo7-xenial`

```console
$ docker pull gazebo@sha256:7b19db80f6ecdf2ba6d38c7311dd69876b1b789e1f9cc3a9320281afc6467549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:fc2ba71d91273199831344812defeca71a3605aa6511ddf247172d1714d8509b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.1 MB (497099902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db2d7f7d75daad665f855b0e29ae92b3e8e3491c633523dbf14ac826584d7286`
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
# Mon, 16 Apr 2018 21:39:58 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.12.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 16 Apr 2018 21:39:58 GMT
EXPOSE 11345/tcp
# Mon, 16 Apr 2018 21:39:58 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Mon, 16 Apr 2018 21:39:59 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 16 Apr 2018 21:39:59 GMT
CMD ["gzserver"]
# Mon, 16 Apr 2018 21:43:30 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.12.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:b1aef47640579fabdc91b32937b909c9ed90c5a1c330be23c7d3ac9803a2dd37`  
		Last Modified: Mon, 16 Apr 2018 22:04:08 GMT  
		Size: 192.4 MB (192366843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57d107cd16ab43abda7276f2b79ed7e9736e944b3a6522ca70a8a366a5d64f3`  
		Last Modified: Mon, 16 Apr 2018 22:03:33 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba7208e3c7783e0323f568b5c9805b3fd5dc6c570e033cd92ed70ab19aa484e`  
		Last Modified: Mon, 16 Apr 2018 22:25:16 GMT  
		Size: 261.7 MB (261694078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
