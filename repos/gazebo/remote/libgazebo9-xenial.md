## `gazebo:libgazebo9-xenial`

```console
$ docker pull gazebo@sha256:9dd61fc7bea5319a2b76b33634d501da798dfffa685aaef376f36c3f93a96f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo9-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:0a6d148f81b2410152da23bfd49fd2ec98af9b8a53346aa09b63c983394c8d46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.2 MB (522176887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bc2e782ad9cee2d9d8bdf55be75f2dfa97301a3909547c55e48594f18b583a`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:14:11 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:14:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 19 Jun 2019 03:14:14 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 19 Jun 2019 03:20:40 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.9.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:20:41 GMT
EXPOSE 11345
# Wed, 19 Jun 2019 03:20:41 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Wed, 19 Jun 2019 03:20:42 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 19 Jun 2019 03:20:42 GMT
CMD ["gzserver"]
# Wed, 19 Jun 2019 03:22:59 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.9.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db657c3b5bd5511e54e704678e5601eb0ee2b1e94fb5b55a042a83cd9aa1404f`  
		Last Modified: Wed, 19 Jun 2019 03:37:01 GMT  
		Size: 16.7 MB (16666029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194b719802451074f7dd9e75ae0e53d893eced59b120446b5df96259663d572f`  
		Last Modified: Wed, 19 Jun 2019 03:36:52 GMT  
		Size: 13.1 KB (13120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1177b8baac3e7674b50e14b818a18fc8d6f4dbaceace3bff594cdc3fdb1fae97`  
		Last Modified: Wed, 19 Jun 2019 03:36:52 GMT  
		Size: 5.5 KB (5525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649bcb780feefe2c622daceae5ab7c20c5996bf985f9ddbfab95d243b8e1e00d`  
		Last Modified: Wed, 19 Jun 2019 03:40:19 GMT  
		Size: 219.4 MB (219446866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838e493c8205c2e6b9734e1b2754ae511a237b31f1fd13c612cc2de92f312409`  
		Last Modified: Wed, 19 Jun 2019 03:39:27 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb22d37961f30c4004e49378d8565ca32de84e5eeb4fdef71eee177794bfdd9`  
		Last Modified: Wed, 19 Jun 2019 03:41:56 GMT  
		Size: 242.2 MB (242205853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
