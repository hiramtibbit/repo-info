## `mariadb:latest`

```console
$ docker pull mariadb@sha256:cc58429dc130add37a006744a1eb62510396d608aeec219dbdf0befc1843daab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:a6cec86441771618e64778760adca9546a1cb1663abde70ee70b3122fb87a5e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136837176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb0d69450b8eb22a69e84bd60c8e624164d3f2d8cd1d2a42c9f5b1b525e19bae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 15:37:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:37:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 15:37:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 15:38:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:38:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 15:38:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:38:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 15:51:28 GMT
ENV MARIADB_MAJOR=10.2
# Mon, 30 Apr 2018 15:51:29 GMT
ENV MARIADB_VERSION=10.2.14+maria~jessie
# Mon, 30 Apr 2018 15:51:30 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 30 Apr 2018 15:52:13 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 15:52:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 30 Apr 2018 15:52:13 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Mon, 30 Apr 2018 15:52:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 30 Apr 2018 15:52:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 15:52:15 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 15:52:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d272f25d5af59f1fd4ef77ceda35839f86b003d508422e3c2df599aea4824`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 988.8 KB (988761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672dd5e0b768c3edb1bbaa087e9429f69a5868fff2d52fe6bdf9b9acfb22a468`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a7291b59963b500d05381c558ed9f10f7f6c371aad60f9677e999b1f1452a2`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 5.0 MB (5010207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92edc8e8d33d5d8c415410920d87e13793e39eb14122ba089349f530d5be23e1`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a8206781789fc2d99b603104734bf3eae64b1e3e72e81fd17dc7695a13be4`  
		Last Modified: Mon, 30 Apr 2018 16:32:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eff7352c12e9348c50451d540a54155a85879c27f99ee9b444640cac9cbf543`  
		Last Modified: Mon, 30 Apr 2018 16:45:03 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705e5fd937c391b4f96f6d1366cb7d1b28e454cd8725c8978df2dfe8873dad62`  
		Last Modified: Mon, 30 Apr 2018 16:45:20 GMT  
		Size: 76.5 MB (76549299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45178761f66ffa52c6dedf5e530ad361f5e77b47ac7a4e9a1ef320697ad092de`  
		Last Modified: Mon, 30 Apr 2018 16:45:03 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93326b4b133f91f10637b5cbebb4b12d0b6d82424c730e0865227ad07fa65343`  
		Last Modified: Mon, 30 Apr 2018 16:45:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
