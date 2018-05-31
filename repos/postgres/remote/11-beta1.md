## `postgres:11-beta1`

```console
$ docker pull postgres@sha256:0480b4ea0c7b25b8eb2a7b6f17a863da29b4e4697601a6a2484234704b0f0acf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `postgres:11-beta1` - linux; amd64

```console
$ docker pull postgres@sha256:00262c1aad8a04d463d24d8f3c5403d43505b6badc2d634299667d78f8450e5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113702559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92081470deb88215ed8d97d7f5a28a5561bb77786846c480f1eaa00ddff26d75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Tue, 01 May 2018 05:32:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 05:32:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 01 May 2018 05:32:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 01 May 2018 05:32:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 01 May 2018 05:32:55 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 01 May 2018 05:32:55 GMT
ENV LANG=en_US.utf8
# Fri, 25 May 2018 20:36:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 20:36:18 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 20:36:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 30 May 2018 21:01:01 GMT
ENV PG_MAJOR=11
# Wed, 30 May 2018 21:01:01 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Wed, 30 May 2018 21:01:43 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 30 May 2018 21:01:43 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 30 May 2018 21:01:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 30 May 2018 21:01:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 30 May 2018 21:01:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 30 May 2018 21:01:45 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 30 May 2018 21:01:45 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 30 May 2018 21:01:46 GMT
COPY file:c49fc46420f20b85e4b925fcc0ab847c8455bb1e218f0d244b631ce49f4e8cea in /usr/local/bin/ 
# Wed, 30 May 2018 21:01:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 30 May 2018 21:01:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 May 2018 21:01:47 GMT
EXPOSE 5432/tcp
# Wed, 30 May 2018 21:01:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8218dd41bf9456c09b17f71395d18c9cdc6c45e318c4dbe86f15462d04edc29f`  
		Last Modified: Tue, 01 May 2018 06:24:57 GMT  
		Size: 4.5 MB (4498484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b7fa2e6bd832ef489841c1bf68ae37339abafbc2721c7c98b6bf4254f382ba`  
		Last Modified: Tue, 01 May 2018 06:24:56 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7288a45ee17ff5d06aa7209347aa962fcb07853957fce7e204e07fc06f38dea4`  
		Last Modified: Tue, 01 May 2018 06:24:55 GMT  
		Size: 952.0 KB (951999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0f8a67376c82f767d4449c6b8dde684a41b38c42439c94b919411cdac994a5`  
		Last Modified: Tue, 01 May 2018 06:24:56 GMT  
		Size: 6.2 MB (6182334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972b115243de397ed5a89060381851571678463a300a9e870e0475088b704661`  
		Last Modified: Fri, 25 May 2018 20:40:19 GMT  
		Size: 295.4 KB (295446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38528c83dd121073847350d941ee0f577d842ce58478a58fe3b43dbfbe07855`  
		Last Modified: Fri, 25 May 2018 20:40:18 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be166d23deed4ee0d041a354a22e93dc9cd346d31170690a1ff1e0f71bd8e96`  
		Last Modified: Fri, 25 May 2018 20:40:19 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb4519aa161219459c9be7e874c188bef71e0648556561cf3287a28b6aef10e`  
		Last Modified: Wed, 30 May 2018 21:08:13 GMT  
		Size: 79.3 MB (79261842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fa7f8c0d7db2615f5d902ce418d233dceec99e380a56fae0a92be30bcfabd2`  
		Last Modified: Wed, 30 May 2018 21:07:58 GMT  
		Size: 7.5 KB (7487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ae60aee85f340e5d1026cdc0ed851f4299ca191fbbb4872fa64a2f8672445c`  
		Last Modified: Wed, 30 May 2018 21:07:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e05aed8ebce407d32c3e8cf22cd0f8c9d3e224c49cfa59875e0e2e04ea39c12`  
		Last Modified: Wed, 30 May 2018 21:07:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbc9cbc63644e6900ba99f091247a5d2ff5e293e10891b4f6405aedc0a1a9c7`  
		Last Modified: Wed, 30 May 2018 21:07:59 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25079b6f5fe35f13e417f6ecb983afa594f69f9e13bf658d189160d137e8d65`  
		Last Modified: Wed, 30 May 2018 21:07:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta1` - linux; 386

```console
$ docker pull postgres@sha256:5d9ee1f70fe99d42a7639828ea0434fc097f407b143e31d0639d7cd8fcfa6e90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117494225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6fb5dc7c2cefcdd5e4a0f1810c41071a565cb836ce96cc8c3fd1cbc3109296`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Thu, 31 May 2018 04:47:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 May 2018 04:47:13 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 May 2018 04:47:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 May 2018 04:47:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 May 2018 04:47:44 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 May 2018 04:47:45 GMT
ENV LANG=en_US.utf8
# Thu, 31 May 2018 04:47:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 04:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 May 2018 04:47:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 May 2018 04:47:55 GMT
ENV PG_MAJOR=11
# Thu, 31 May 2018 04:47:55 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Thu, 31 May 2018 04:48:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 May 2018 04:48:42 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 May 2018 04:48:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 May 2018 04:48:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 31 May 2018 04:48:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 May 2018 04:48:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 May 2018 04:48:44 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 May 2018 04:52:08 GMT
COPY file:c49fc46420f20b85e4b925fcc0ab847c8455bb1e218f0d244b631ce49f4e8cea in /usr/local/bin/ 
# Thu, 31 May 2018 04:52:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 May 2018 04:52:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 04:52:09 GMT
EXPOSE 5432/tcp
# Thu, 31 May 2018 04:52:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10411256abaea9e024b719570a8b8678be9b54c16bbcc33e0ec27a7e8f233c02`  
		Last Modified: Thu, 31 May 2018 05:14:51 GMT  
		Size: 4.8 MB (4803873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1823ab438c47c4bc520b01de76295be9fbde064cdb9cb80927b353e3d0d62c`  
		Last Modified: Thu, 31 May 2018 05:14:48 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26c2b223d66a0c1cc3131b78e5928bf79dbd13a3d29772a674993a7f82503cc`  
		Last Modified: Thu, 31 May 2018 05:14:48 GMT  
		Size: 931.6 KB (931579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5fa094b7015acf4856cbb8a7f71d3bb21dbad8a0f2cd3d53fcf96e87caa6ddc`  
		Last Modified: Thu, 31 May 2018 05:14:48 GMT  
		Size: 6.2 MB (6182389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1081ea029602d42f1ee6880c6030157e69ad72e1bd659daed5cdfae16cff1d`  
		Last Modified: Thu, 31 May 2018 05:14:46 GMT  
		Size: 296.5 KB (296517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c2ed342b06e8e1e0029b25da09d41b5c900441630f07b0e1bbda74e8db0a9b`  
		Last Modified: Thu, 31 May 2018 05:14:45 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833fb6869f71ad7760b38710b429c0bf2f8b7cd202781623cd63e92e0978e206`  
		Last Modified: Thu, 31 May 2018 05:14:45 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbb622b461e0efaa9fbfa61e6cd12ad08407b94e523e3251e84e07b0dd452b0`  
		Last Modified: Thu, 31 May 2018 05:15:20 GMT  
		Size: 82.1 MB (82124930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d28d9b122589b2c8395cc430a6f6084c32276d64f28a22097e14f228c8d19f1`  
		Last Modified: Thu, 31 May 2018 05:14:43 GMT  
		Size: 7.5 KB (7489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e6f67a9d8245e294afe00b452dc189e047257ac0945f43bc53ffe013533470`  
		Last Modified: Thu, 31 May 2018 05:14:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc667ceb8879b48e2b6688a721042bfe18f76cd45b61057366d2e3996a370b27`  
		Last Modified: Thu, 31 May 2018 05:14:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ec8057d0ca1c64ba7a881ac2c0b191fc465a3e89be5ec5ce6ba6f9afee5056`  
		Last Modified: Thu, 31 May 2018 05:14:43 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8316fc4993c80be36f0cfb66b1b2e31836c9d6e8bc40d9085725890959b27433`  
		Last Modified: Thu, 31 May 2018 05:14:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
