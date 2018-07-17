## `mariadb:10-jessie`

```console
$ docker pull mariadb@sha256:dd8dc06353887dc8235ca83701418dcd29e505301db417439205ed67350d61dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10-jessie` - linux; amd64

```console
$ docker pull mariadb@sha256:2ffce8557fa81e826eae8cbbf06b6e58edae87f1e46f8a8559887b4e39252b40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137457671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13814daf85b20126bed6dbd0eb7c2e6c5535ca58a004f0ade92e465a7c0236b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~jessie
# Tue, 17 Jul 2018 03:27:03 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:28:17 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:28:18 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:28:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:28:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:28:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:28:20 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:28:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa0d4b7a708558fe8e146a6e704d7fce5578f08f39343bc50eebcaa056fca1e`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62094a39ba6f9f90bc7253ea61b116e535ded7065c8d992e2b064493afc6ad98`  
		Last Modified: Tue, 17 Jul 2018 03:36:03 GMT  
		Size: 77.2 MB (77225325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a8f0e27318698b5cf5a4b51a17d638b1a9b97b5b0926dabdb0d8c29539f8c2`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 2.6 KB (2600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfdb13e87fc96839846681fd19639793d7f1216987be1c74c705f42ffb7cc8f`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
