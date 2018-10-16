## `swipl:stable`

```console
$ docker pull swipl@sha256:1ff0f9d1096fe2750147647795bd9bb2c8063dc7f99b29ea26abe88bae837c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swipl:stable` - linux; amd64

```console
$ docker pull swipl@sha256:24c9db768db963e9ca8d606c51f9558bb183be805239a706ce7258a76791f1bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56173999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0ba933af18c01c08ad9661b5f9c0f620fe614f4d291f4c8a6299471d57e4b0`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:21:44 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 16 Oct 2018 04:26:22 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     ca-certificates     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18     libsqlite3-0     librocksdb4.5     libserd-0-0     libraptor2-0 &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:30:27 GMT
RUN set -eux;     SWIPL_VER=7.6.4;     SWIPL_CHECKSUM=2d3d7aabd6d99a02dcc2da5d7604e3500329e541c6f857edc5aa06a3b1267891;     BUILD_DEPS='make gcc g++ wget git autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev librocksdb-dev libserd-dev libraptor2-dev libgeos++-dev libspatialindex-dev';     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget http://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     cd swipl-$SWIPL_VER;     sed -e '/PREFIX=$HOME/c\PREFIX=/usr'         -e '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"'         -e 's/# *\(EXTRA.*--disable-libdirversion\)/\1/'            build.templ > build;     chmod u+x build; ./build;     mkdir -p /usr/lib/swipl/pack;     cd /usr/lib/swipl/pack;     rm -rf /tmp/src;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'space' ]; then (cd "$1"; ln -s configure.ac configure.in); fi;         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;     };     install_addin space https://github.com/JanWielemaker/space.git cd6fefa63317a7a6effb61a1c5aee634ebe2ca05;     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git a1d915d07933ece27ea5fd68f07c83d10583e7a0;     install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git 29eaee6fcdb6dce690ed187ef68b80ee94739412;     install_addin hdt https://github.com/JanWielemaker/hdt.git e0a0eff87fc3318434cb493690c570e1255ed30e;     install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git 72838bbfa3976a83d19fb38bdae04378e30f4b0d;     apt-get purge -y --auto-remove $BUILD_DEPS
# Tue, 16 Oct 2018 04:30:27 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 04:30:27 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801a6da861ddb90b9d266fda30af462ddb47920a6648fc36e29c1f6d4fc2f784`  
		Last Modified: Tue, 16 Oct 2018 04:31:11 GMT  
		Size: 26.2 MB (26226832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deeebb323e860e7a484f70737a78ae82e0777fec82135ebde3eb3588e63f11e6`  
		Last Modified: Tue, 16 Oct 2018 04:31:10 GMT  
		Size: 7.5 MB (7461128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
