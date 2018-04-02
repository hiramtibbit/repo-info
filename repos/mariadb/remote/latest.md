## `mariadb:latest`

```console
$ docker pull mariadb@sha256:6135f5b851e7fe263dcf0edf3480cdab1ab28c4287e867c5d83fbe967412ea14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:5929c4894d8a72c3891b8c35f2dfda9e7c414f122fb2a2065a626402fc0c2f53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135338008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca06ca3d8fad202d349385313610fa5c089c6471f060c68ca34075de069ab1dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:22:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:23:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:23:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:23:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:23:30 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:23:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:23:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:25:14 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 30 Mar 2018 20:19:52 GMT
ENV MARIADB_VERSION=10.2.14+maria~jessie
# Fri, 30 Mar 2018 20:19:53 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 30 Mar 2018 20:20:44 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 30 Mar 2018 20:20:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 30 Mar 2018 20:20:45 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 30 Mar 2018 20:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 30 Mar 2018 20:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Mar 2018 20:20:47 GMT
EXPOSE 3306/tcp
# Fri, 30 Mar 2018 20:20:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f09e820cce223b7c31237843dea7c4549a71e038009c708ec4176db816d324`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 985.2 KB (985225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5390f1fe45549bc2c3f19eec45e92772ebfb78dcf92902939d573badf6f3793b`  
		Last Modified: Wed, 14 Mar 2018 05:46:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f1706a74104397701affa1bb315a299b7eb2286e872812bb65e089aeaf748`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 6.7 MB (6671963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f66426eaad5ccb8a5d0c1c5ae3e6eec90df5d9e6b408067c0ea960898ead`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 20.8 KB (20832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee11d39c75377bb9b8344b463364f8b2f70a608e2ceffa33d4f2499754ec98`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590c46ef722b41264c9996a9c69e215002ca30910a58744f6b9c6cef9a7ea0e4`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb4b9666e5c3a0347399a9aa9831bfab98eb3c29a575fc59db050675b51459`  
		Last Modified: Fri, 30 Mar 2018 20:53:43 GMT  
		Size: 75.0 MB (75045952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc883f98a064559f5d1943dc353bf24b7a64961c8c0eb7514cdb49efeb7751c4`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8bee61bc1e3f5efea26e4f704ad186883f596e51c106be8e2dcc5f3794f76e`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
