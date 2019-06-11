<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swipl`

-	[`swipl:8.0.0`](#swipl800)
-	[`swipl:8.1.6`](#swipl816)
-	[`swipl:latest`](#swipllatest)
-	[`swipl:stable`](#swiplstable)

## `swipl:8.0.0`

```console
$ docker pull swipl@sha256:70531b5fda1285728d92a8bd83193d76eca0c558f1a83932999a83ad8e5009ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swipl:8.0.0` - linux; amd64

```console
$ docker pull swipl@sha256:2b234840717356e92dd44165e60cbf7dffdf47f7ff6c2f978368115f5b6f4dc0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55517747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae9b745977b24f662ab5200596abd69b32b34e52656f945577c824526a34367`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 03:05:28 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 08 May 2019 03:05:50 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     ca-certificates     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18     libsqlite3-0     libserd-0-0     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     { [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || apt-get install -y --no-install-recommends librocksdb4.5; } &&     rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 03:21:11 GMT
RUN set -eux;     SWIPL_VER=8.0.0;     SWIPL_CHECKSUM=422b6985c6f646b5bb73b160e8c8cda74e892548beb6a672828e3689a20a6b32;     BUILD_DEPS='make cmake gcc g++ wget git autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libgeos++-dev libspatialindex-dev';     dpkgArch="$(dpkg --print-architecture)";     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || BUILD_DEPS="$BUILD_DEPS librocksdb-dev";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget http://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=Release           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr           ..;     LANG=C.UTF8 make;     LANG=C.UTF8 make install;     rm -rf /tmp/src;     mkdir -p /usr/lib/swipl/pack;     cd /usr/lib/swipl/pack;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin space https://github.com/JanWielemaker/space.git cd6fefa63317a7a6effb61a1c5aee634ebe2ca05;     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 816cb2e45a5fb53290a763a3306e430b72c40794;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git 93f29d8f298d73de5719b93516acc73e00610eed;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] ||  install_addin hdt https://github.com/JanWielemaker/hdt.git e0a0eff87fc3318434cb493690c570e1255ed30e;     install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git befdfab843d71bdabbe9574348697a6fe5be4fc3;     apt-get purge -y --auto-remove $BUILD_DEPS
# Wed, 08 May 2019 03:21:12 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 03:21:12 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39c35d31e79188835a5968d1c969af30f45e03dd78b450ff01fa6411fb597e`  
		Last Modified: Wed, 08 May 2019 03:21:32 GMT  
		Size: 26.2 MB (26235071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a32863e98219fe4afddcce4d526f9962a719b3677f2dc0ae66e8d09ff375a27`  
		Last Modified: Wed, 08 May 2019 03:21:44 GMT  
		Size: 6.8 MB (6793326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swipl:8.1.6`

```console
$ docker pull swipl@sha256:c79abf0c1700328727f2f13d1fc73bca8e6a9136cff1e1db29473e9f487409b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `swipl:8.1.6` - linux; amd64

```console
$ docker pull swipl@sha256:4e67ed9a51be3f03f8b5da8e99f896cce12cd8dbf348cbde216246f0243d07ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55575928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:868a8e8a1ced28d8646c3daa432cc05908edac0f24989ae55005003e81470c96`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 03:05:28 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 08 May 2019 03:05:50 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     ca-certificates     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18     libsqlite3-0     libserd-0-0     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     { [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || apt-get install -y --no-install-recommends librocksdb4.5; } &&     rm -rf /var/lib/apt/lists/*
# Thu, 23 May 2019 21:53:27 GMT
RUN set -eux;     SWIPL_VER=8.1.6;     SWIPL_CHECKSUM=deba726823c72f9885c9a9e1cad0f14a90067404b670ddfecee6f3cfca233ef4;     BUILD_DEPS='make cmake gcc g++ wget git autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libgeos++-dev libspatialindex-dev';     dpkgArch="$(dpkg --print-architecture)";     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || BUILD_DEPS="$BUILD_DEPS librocksdb-dev";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=Release           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr           ..;     LANG=C.UTF8 make;     LANG=C.UTF8 make install;     rm -rf /tmp/src;     mkdir -p /usr/lib/swipl/pack;     cd /usr/lib/swipl/pack;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin space https://github.com/JanWielemaker/space.git cd6fefa63317a7a6effb61a1c5aee634ebe2ca05;     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 816cb2e45a5fb53290a763a3306e430b72c40794;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git 93f29d8f298d73de5719b93516acc73e00610eed;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] ||  install_addin hdt https://github.com/JanWielemaker/hdt.git e0a0eff87fc3318434cb493690c570e1255ed30e;     install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git befdfab843d71bdabbe9574348697a6fe5be4fc3;     apt-get purge -y --auto-remove $BUILD_DEPS
# Thu, 23 May 2019 21:53:27 GMT
ENV LANG=C.UTF-8
# Thu, 23 May 2019 21:53:28 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39c35d31e79188835a5968d1c969af30f45e03dd78b450ff01fa6411fb597e`  
		Last Modified: Wed, 08 May 2019 03:21:32 GMT  
		Size: 26.2 MB (26235071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4c17b2382dd2aec8594e265777ce93ed39460e3d07df19fe8e8ae46158c120`  
		Last Modified: Thu, 23 May 2019 21:53:56 GMT  
		Size: 6.9 MB (6851507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `swipl:8.1.6` - linux; arm variant v7

```console
$ docker pull swipl@sha256:1e52033674fa9a5d155b9c69bd30d6de347c30c8004c6769f6fbc728997bcdfd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48032272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7aa7df9c8350d5267b86f2d089ace1df5cfc5955987951dc5cb01da03c9f8e9`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:29:02 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 11 Jun 2019 03:29:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     ca-certificates     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18     libsqlite3-0     libserd-0-0     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     { [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || apt-get install -y --no-install-recommends librocksdb4.5; } &&     rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:37:08 GMT
RUN set -eux;     SWIPL_VER=8.1.6;     SWIPL_CHECKSUM=deba726823c72f9885c9a9e1cad0f14a90067404b670ddfecee6f3cfca233ef4;     BUILD_DEPS='make cmake gcc g++ wget git autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libgeos++-dev libspatialindex-dev';     dpkgArch="$(dpkg --print-architecture)";     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || BUILD_DEPS="$BUILD_DEPS librocksdb-dev";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=Release           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr           ..;     LANG=C.UTF8 make;     LANG=C.UTF8 make install;     rm -rf /tmp/src;     mkdir -p /usr/lib/swipl/pack;     cd /usr/lib/swipl/pack;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin space https://github.com/JanWielemaker/space.git cd6fefa63317a7a6effb61a1c5aee634ebe2ca05;     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 816cb2e45a5fb53290a763a3306e430b72c40794;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git 93f29d8f298d73de5719b93516acc73e00610eed;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] ||  install_addin hdt https://github.com/JanWielemaker/hdt.git e0a0eff87fc3318434cb493690c570e1255ed30e;     install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git befdfab843d71bdabbe9574348697a6fe5be4fc3;     apt-get purge -y --auto-remove $BUILD_DEPS
# Tue, 11 Jun 2019 03:37:09 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 03:37:09 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f12236da0ea9c27ecac5424c790af9a360f8981cde5679bdfd34a3f72b1b324`  
		Last Modified: Tue, 11 Jun 2019 03:37:33 GMT  
		Size: 22.7 MB (22656975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0298f2bc7fd07f3ec188028dde6d1259d2afe00085a9f85ae101677d5c3fa6`  
		Last Modified: Tue, 11 Jun 2019 03:37:30 GMT  
		Size: 6.1 MB (6099112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `swipl:8.1.6` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:1550c9cb7db1febd01462d11efc3781538cb8d6fab42710d0f607a1da46c8448
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.0 MB (52039186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92f0f39c169f7032b44888aaab09163dcc22fe937777891d07df59608ffa17f`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 23 May 2019 22:07:54 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Thu, 23 May 2019 22:08:24 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     ca-certificates     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18     libsqlite3-0     libserd-0-0     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     { [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || apt-get install -y --no-install-recommends librocksdb4.5; } &&     rm -rf /var/lib/apt/lists/*
# Thu, 23 May 2019 22:17:55 GMT
RUN set -eux;     SWIPL_VER=8.1.6;     SWIPL_CHECKSUM=deba726823c72f9885c9a9e1cad0f14a90067404b670ddfecee6f3cfca233ef4;     BUILD_DEPS='make cmake gcc g++ wget git autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libgeos++-dev libspatialindex-dev';     dpkgArch="$(dpkg --print-architecture)";     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || BUILD_DEPS="$BUILD_DEPS librocksdb-dev";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=Release           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr           ..;     LANG=C.UTF8 make;     LANG=C.UTF8 make install;     rm -rf /tmp/src;     mkdir -p /usr/lib/swipl/pack;     cd /usr/lib/swipl/pack;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin space https://github.com/JanWielemaker/space.git cd6fefa63317a7a6effb61a1c5aee634ebe2ca05;     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 816cb2e45a5fb53290a763a3306e430b72c40794;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git 93f29d8f298d73de5719b93516acc73e00610eed;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] ||  install_addin hdt https://github.com/JanWielemaker/hdt.git e0a0eff87fc3318434cb493690c570e1255ed30e;     install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git befdfab843d71bdabbe9574348697a6fe5be4fc3;     apt-get purge -y --auto-remove $BUILD_DEPS
# Thu, 23 May 2019 22:17:56 GMT
ENV LANG=C.UTF-8
# Thu, 23 May 2019 22:17:56 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6574475ea2c73026e153b657b2925d9d0b127bc56d7ab2e3502c5ec88088c207`  
		Last Modified: Thu, 23 May 2019 22:18:12 GMT  
		Size: 25.0 MB (25047304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21a511992e126baae388f7117d9c208a69616f653c7de475145154b553f7ee`  
		Last Modified: Thu, 23 May 2019 22:18:08 GMT  
		Size: 6.7 MB (6658067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swipl:latest`

```console
$ docker pull swipl@sha256:c79abf0c1700328727f2f13d1fc73bca8e6a9136cff1e1db29473e9f487409b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `swipl:latest` - linux; amd64

```console
$ docker pull swipl@sha256:4e67ed9a51be3f03f8b5da8e99f896cce12cd8dbf348cbde216246f0243d07ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55575928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:868a8e8a1ced28d8646c3daa432cc05908edac0f24989ae55005003e81470c96`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 03:05:28 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 08 May 2019 03:05:50 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     ca-certificates     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18     libsqlite3-0     libserd-0-0     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     { [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || apt-get install -y --no-install-recommends librocksdb4.5; } &&     rm -rf /var/lib/apt/lists/*
# Thu, 23 May 2019 21:53:27 GMT
RUN set -eux;     SWIPL_VER=8.1.6;     SWIPL_CHECKSUM=deba726823c72f9885c9a9e1cad0f14a90067404b670ddfecee6f3cfca233ef4;     BUILD_DEPS='make cmake gcc g++ wget git autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libgeos++-dev libspatialindex-dev';     dpkgArch="$(dpkg --print-architecture)";     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || BUILD_DEPS="$BUILD_DEPS librocksdb-dev";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=Release           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr           ..;     LANG=C.UTF8 make;     LANG=C.UTF8 make install;     rm -rf /tmp/src;     mkdir -p /usr/lib/swipl/pack;     cd /usr/lib/swipl/pack;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin space https://github.com/JanWielemaker/space.git cd6fefa63317a7a6effb61a1c5aee634ebe2ca05;     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 816cb2e45a5fb53290a763a3306e430b72c40794;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git 93f29d8f298d73de5719b93516acc73e00610eed;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] ||  install_addin hdt https://github.com/JanWielemaker/hdt.git e0a0eff87fc3318434cb493690c570e1255ed30e;     install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git befdfab843d71bdabbe9574348697a6fe5be4fc3;     apt-get purge -y --auto-remove $BUILD_DEPS
# Thu, 23 May 2019 21:53:27 GMT
ENV LANG=C.UTF-8
# Thu, 23 May 2019 21:53:28 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39c35d31e79188835a5968d1c969af30f45e03dd78b450ff01fa6411fb597e`  
		Last Modified: Wed, 08 May 2019 03:21:32 GMT  
		Size: 26.2 MB (26235071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4c17b2382dd2aec8594e265777ce93ed39460e3d07df19fe8e8ae46158c120`  
		Last Modified: Thu, 23 May 2019 21:53:56 GMT  
		Size: 6.9 MB (6851507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `swipl:latest` - linux; arm variant v7

```console
$ docker pull swipl@sha256:1e52033674fa9a5d155b9c69bd30d6de347c30c8004c6769f6fbc728997bcdfd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48032272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7aa7df9c8350d5267b86f2d089ace1df5cfc5955987951dc5cb01da03c9f8e9`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:29:02 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 11 Jun 2019 03:29:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     ca-certificates     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18     libsqlite3-0     libserd-0-0     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     { [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || apt-get install -y --no-install-recommends librocksdb4.5; } &&     rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:37:08 GMT
RUN set -eux;     SWIPL_VER=8.1.6;     SWIPL_CHECKSUM=deba726823c72f9885c9a9e1cad0f14a90067404b670ddfecee6f3cfca233ef4;     BUILD_DEPS='make cmake gcc g++ wget git autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libgeos++-dev libspatialindex-dev';     dpkgArch="$(dpkg --print-architecture)";     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || BUILD_DEPS="$BUILD_DEPS librocksdb-dev";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=Release           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr           ..;     LANG=C.UTF8 make;     LANG=C.UTF8 make install;     rm -rf /tmp/src;     mkdir -p /usr/lib/swipl/pack;     cd /usr/lib/swipl/pack;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin space https://github.com/JanWielemaker/space.git cd6fefa63317a7a6effb61a1c5aee634ebe2ca05;     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 816cb2e45a5fb53290a763a3306e430b72c40794;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git 93f29d8f298d73de5719b93516acc73e00610eed;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] ||  install_addin hdt https://github.com/JanWielemaker/hdt.git e0a0eff87fc3318434cb493690c570e1255ed30e;     install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git befdfab843d71bdabbe9574348697a6fe5be4fc3;     apt-get purge -y --auto-remove $BUILD_DEPS
# Tue, 11 Jun 2019 03:37:09 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 03:37:09 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f12236da0ea9c27ecac5424c790af9a360f8981cde5679bdfd34a3f72b1b324`  
		Last Modified: Tue, 11 Jun 2019 03:37:33 GMT  
		Size: 22.7 MB (22656975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0298f2bc7fd07f3ec188028dde6d1259d2afe00085a9f85ae101677d5c3fa6`  
		Last Modified: Tue, 11 Jun 2019 03:37:30 GMT  
		Size: 6.1 MB (6099112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `swipl:latest` - linux; arm64 variant v8

```console
$ docker pull swipl@sha256:1550c9cb7db1febd01462d11efc3781538cb8d6fab42710d0f607a1da46c8448
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.0 MB (52039186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92f0f39c169f7032b44888aaab09163dcc22fe937777891d07df59608ffa17f`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 23 May 2019 22:07:54 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Thu, 23 May 2019 22:08:24 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     ca-certificates     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18     libsqlite3-0     libserd-0-0     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     { [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || apt-get install -y --no-install-recommends librocksdb4.5; } &&     rm -rf /var/lib/apt/lists/*
# Thu, 23 May 2019 22:17:55 GMT
RUN set -eux;     SWIPL_VER=8.1.6;     SWIPL_CHECKSUM=deba726823c72f9885c9a9e1cad0f14a90067404b670ddfecee6f3cfca233ef4;     BUILD_DEPS='make cmake gcc g++ wget git autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libgeos++-dev libspatialindex-dev';     dpkgArch="$(dpkg --print-architecture)";     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || BUILD_DEPS="$BUILD_DEPS librocksdb-dev";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=Release           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr           ..;     LANG=C.UTF8 make;     LANG=C.UTF8 make install;     rm -rf /tmp/src;     mkdir -p /usr/lib/swipl/pack;     cd /usr/lib/swipl/pack;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin space https://github.com/JanWielemaker/space.git cd6fefa63317a7a6effb61a1c5aee634ebe2ca05;     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 816cb2e45a5fb53290a763a3306e430b72c40794;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git 93f29d8f298d73de5719b93516acc73e00610eed;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] ||  install_addin hdt https://github.com/JanWielemaker/hdt.git e0a0eff87fc3318434cb493690c570e1255ed30e;     install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git befdfab843d71bdabbe9574348697a6fe5be4fc3;     apt-get purge -y --auto-remove $BUILD_DEPS
# Thu, 23 May 2019 22:17:56 GMT
ENV LANG=C.UTF-8
# Thu, 23 May 2019 22:17:56 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6574475ea2c73026e153b657b2925d9d0b127bc56d7ab2e3502c5ec88088c207`  
		Last Modified: Thu, 23 May 2019 22:18:12 GMT  
		Size: 25.0 MB (25047304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21a511992e126baae388f7117d9c208a69616f653c7de475145154b553f7ee`  
		Last Modified: Thu, 23 May 2019 22:18:08 GMT  
		Size: 6.7 MB (6658067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swipl:stable`

```console
$ docker pull swipl@sha256:70531b5fda1285728d92a8bd83193d76eca0c558f1a83932999a83ad8e5009ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swipl:stable` - linux; amd64

```console
$ docker pull swipl@sha256:2b234840717356e92dd44165e60cbf7dffdf47f7ff6c2f978368115f5b6f4dc0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55517747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae9b745977b24f662ab5200596abd69b32b34e52656f945577c824526a34367`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 03:05:28 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 08 May 2019 03:05:50 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     ca-certificates     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18     libsqlite3-0     libserd-0-0     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     { [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || apt-get install -y --no-install-recommends librocksdb4.5; } &&     rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 03:21:11 GMT
RUN set -eux;     SWIPL_VER=8.0.0;     SWIPL_CHECKSUM=422b6985c6f646b5bb73b160e8c8cda74e892548beb6a672828e3689a20a6b32;     BUILD_DEPS='make cmake gcc g++ wget git autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libgeos++-dev libspatialindex-dev';     dpkgArch="$(dpkg --print-architecture)";     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || BUILD_DEPS="$BUILD_DEPS librocksdb-dev";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget http://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     mkdir swipl-$SWIPL_VER/build;     cd swipl-$SWIPL_VER/build;     cmake -DCMAKE_BUILD_TYPE=Release           -DSWIPL_PACKAGES_X=OFF 	  -DSWIPL_PACKAGES_JAVA=OFF 	  -DCMAKE_INSTALL_PREFIX=/usr           ..;     LANG=C.UTF8 make;     LANG=C.UTF8 make install;     rm -rf /tmp/src;     mkdir -p /usr/lib/swipl/pack;     cd /usr/lib/swipl/pack;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin space https://github.com/JanWielemaker/space.git cd6fefa63317a7a6effb61a1c5aee634ebe2ca05;     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git 816cb2e45a5fb53290a763a3306e430b72c40794;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git 93f29d8f298d73de5719b93516acc73e00610eed;     [ "$dpkgArch" = 'armhf' ] || [ "$dpkgArch" = 'armel' ] ||  install_addin hdt https://github.com/JanWielemaker/hdt.git e0a0eff87fc3318434cb493690c570e1255ed30e;     install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git befdfab843d71bdabbe9574348697a6fe5be4fc3;     apt-get purge -y --auto-remove $BUILD_DEPS
# Wed, 08 May 2019 03:21:12 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 03:21:12 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39c35d31e79188835a5968d1c969af30f45e03dd78b450ff01fa6411fb597e`  
		Last Modified: Wed, 08 May 2019 03:21:32 GMT  
		Size: 26.2 MB (26235071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a32863e98219fe4afddcce4d526f9962a719b3677f2dc0ae66e8d09ff375a27`  
		Last Modified: Wed, 08 May 2019 03:21:44 GMT  
		Size: 6.8 MB (6793326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
