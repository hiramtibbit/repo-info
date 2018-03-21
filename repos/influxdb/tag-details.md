<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.4`](#influxdb14)
-	[`influxdb:1.4.3`](#influxdb143)
-	[`influxdb:1.4.3-alpine`](#influxdb143-alpine)
-	[`influxdb:1.4-alpine`](#influxdb14-alpine)
-	[`influxdb:1.5`](#influxdb15)
-	[`influxdb:1.5.1`](#influxdb151)
-	[`influxdb:1.5.1-alpine`](#influxdb151-alpine)
-	[`influxdb:1.5.1-data`](#influxdb151-data)
-	[`influxdb:1.5.1-data-alpine`](#influxdb151-data-alpine)
-	[`influxdb:1.5.1-meta`](#influxdb151-meta)
-	[`influxdb:1.5.1-meta-alpine`](#influxdb151-meta-alpine)
-	[`influxdb:1.5-alpine`](#influxdb15-alpine)
-	[`influxdb:1.5-data`](#influxdb15-data)
-	[`influxdb:1.5-data-alpine`](#influxdb15-data-alpine)
-	[`influxdb:1.5-meta`](#influxdb15-meta)
-	[`influxdb:1.5-meta-alpine`](#influxdb15-meta-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:data`](#influxdbdata)
-	[`influxdb:data-alpine`](#influxdbdata-alpine)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:meta`](#influxdbmeta)
-	[`influxdb:meta-alpine`](#influxdbmeta-alpine)

## `influxdb:1.4`

```console
$ docker pull influxdb@sha256:c0c4d69afe9b75926f4e5858f73b792c6d4f4f69e8f013f139792910e4498858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.4` - linux; amd64

```console
$ docker pull influxdb@sha256:dd39796f00c663c4ca1bc132c6da8c6bb36fe93d90fecd17b11abd62604ad28e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81742255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bf28dcaa49c3b5972676944f3af2fef21b6932ad7763b7b03bc673004ba5b9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 04:44:06 GMT
ENV INFLUXDB_VERSION=1.4.3
# Thu, 15 Mar 2018 04:44:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 04:44:11 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 15 Mar 2018 04:44:11 GMT
EXPOSE 8086/tcp
# Thu, 15 Mar 2018 04:44:11 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 04:44:12 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 15 Mar 2018 04:44:12 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 15 Mar 2018 04:44:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 04:44:13 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cfaca50055ed02530d849e9a4e68faebfef69e10c016269fe300b9296fb1d4`  
		Last Modified: Thu, 15 Mar 2018 04:45:48 GMT  
		Size: 21.2 MB (21159179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea27e67b3a55fad574393c54a9f180fc55f10b3fd8b7835142bbc5606180594b`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1b2dbd2fac9e233c201136eb101dace0cec1a08d629f6a79f4ba30d617e920`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df85267ecb41beefdf0fa837c49a2851aff625ae5bfd12f4675d97a9f2e6ed`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4c482acf76477ea28d169639a850fd47b6191bb01c5019114ce3aeb70bdafeab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75467846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:424ef1d078d0b5132cf1c4121dad1e3aa81663d8bc334f33a8a4fb7f0fef4fd4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:30:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 16:30:33 GMT
ENV INFLUXDB_VERSION=1.4.3
# Wed, 14 Mar 2018 16:30:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 14 Mar 2018 16:30:38 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 14 Mar 2018 16:30:39 GMT
EXPOSE 8086/tcp
# Wed, 14 Mar 2018 16:30:39 GMT
VOLUME [/var/lib/influxdb]
# Wed, 14 Mar 2018 16:30:40 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 14 Mar 2018 16:30:40 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 14 Mar 2018 16:30:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 16:30:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e34267f53b9fb05ddb394564eff3999d54f81c22dd05a8ccea048a90c3263f`  
		Last Modified: Wed, 14 Mar 2018 16:31:24 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230087d13e7d2c7b26532911b74aa53ef6e71c168acba8c98882897e0e0b5a3`  
		Last Modified: Wed, 14 Mar 2018 16:31:30 GMT  
		Size: 19.9 MB (19868471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb2513c9c1378fe2f7ff647e4900c935ef25fa40aad8174c16296c5987ceda8`  
		Last Modified: Wed, 14 Mar 2018 16:31:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7498461f5892518d134c0588de43f5ac1bc125cd1ef5ef32601bcd0c5d6ec98c`  
		Last Modified: Wed, 14 Mar 2018 16:31:24 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169cf403adbc32a2f2bb3151ac8e1fc75fbd5e769bfc525563a2a659d3c8a7fb`  
		Last Modified: Wed, 14 Mar 2018 16:31:24 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:1f55fb390fa3f6ae12327eab515b546b115e0627c6781e322de880bd9eae0895
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.4 MB (76360875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04ad75b5686d97be34df0a0a970feaed5221404e515a74df0b217222cad35b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 05:21:12 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 05:21:13 GMT
ENV INFLUXDB_VERSION=1.4.3
# Thu, 15 Mar 2018 05:21:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 05:21:22 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 15 Mar 2018 05:21:23 GMT
EXPOSE 8086/tcp
# Thu, 15 Mar 2018 05:21:24 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 05:21:25 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 15 Mar 2018 05:21:26 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 15 Mar 2018 05:21:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 05:21:28 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cf7a4ca8173e4d7c22e6c4ed1014a5521a59a91224c3b841eaf0eb3220acb8`  
		Last Modified: Thu, 15 Mar 2018 05:22:41 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5a1d9302b6378bf25c313958bd09df9af68bcb1a2c3daabaee07a977b5510c`  
		Last Modified: Thu, 15 Mar 2018 05:22:53 GMT  
		Size: 19.3 MB (19294113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4423f9e7158cd0c53ed8430668125d2e96c5978bf6e7b2469443e2c904cae0d6`  
		Last Modified: Thu, 15 Mar 2018 05:22:41 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ac397c3b1f34d9ac4b43990e225f1b3ec2f3f529924c245fa1ec69f50e31af`  
		Last Modified: Thu, 15 Mar 2018 05:22:41 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea7774f714705161443e5f286a97344885b2dc850759f13ee43171b65176934`  
		Last Modified: Thu, 15 Mar 2018 05:22:41 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4.3`

```console
$ docker pull influxdb@sha256:c0c4d69afe9b75926f4e5858f73b792c6d4f4f69e8f013f139792910e4498858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.4.3` - linux; amd64

```console
$ docker pull influxdb@sha256:dd39796f00c663c4ca1bc132c6da8c6bb36fe93d90fecd17b11abd62604ad28e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81742255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bf28dcaa49c3b5972676944f3af2fef21b6932ad7763b7b03bc673004ba5b9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 04:44:06 GMT
ENV INFLUXDB_VERSION=1.4.3
# Thu, 15 Mar 2018 04:44:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 04:44:11 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 15 Mar 2018 04:44:11 GMT
EXPOSE 8086/tcp
# Thu, 15 Mar 2018 04:44:11 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 04:44:12 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 15 Mar 2018 04:44:12 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 15 Mar 2018 04:44:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 04:44:13 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cfaca50055ed02530d849e9a4e68faebfef69e10c016269fe300b9296fb1d4`  
		Last Modified: Thu, 15 Mar 2018 04:45:48 GMT  
		Size: 21.2 MB (21159179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea27e67b3a55fad574393c54a9f180fc55f10b3fd8b7835142bbc5606180594b`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1b2dbd2fac9e233c201136eb101dace0cec1a08d629f6a79f4ba30d617e920`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df85267ecb41beefdf0fa837c49a2851aff625ae5bfd12f4675d97a9f2e6ed`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4.3` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4c482acf76477ea28d169639a850fd47b6191bb01c5019114ce3aeb70bdafeab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75467846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:424ef1d078d0b5132cf1c4121dad1e3aa81663d8bc334f33a8a4fb7f0fef4fd4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:30:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 16:30:33 GMT
ENV INFLUXDB_VERSION=1.4.3
# Wed, 14 Mar 2018 16:30:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 14 Mar 2018 16:30:38 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 14 Mar 2018 16:30:39 GMT
EXPOSE 8086/tcp
# Wed, 14 Mar 2018 16:30:39 GMT
VOLUME [/var/lib/influxdb]
# Wed, 14 Mar 2018 16:30:40 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 14 Mar 2018 16:30:40 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 14 Mar 2018 16:30:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 16:30:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e34267f53b9fb05ddb394564eff3999d54f81c22dd05a8ccea048a90c3263f`  
		Last Modified: Wed, 14 Mar 2018 16:31:24 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230087d13e7d2c7b26532911b74aa53ef6e71c168acba8c98882897e0e0b5a3`  
		Last Modified: Wed, 14 Mar 2018 16:31:30 GMT  
		Size: 19.9 MB (19868471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb2513c9c1378fe2f7ff647e4900c935ef25fa40aad8174c16296c5987ceda8`  
		Last Modified: Wed, 14 Mar 2018 16:31:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7498461f5892518d134c0588de43f5ac1bc125cd1ef5ef32601bcd0c5d6ec98c`  
		Last Modified: Wed, 14 Mar 2018 16:31:24 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169cf403adbc32a2f2bb3151ac8e1fc75fbd5e769bfc525563a2a659d3c8a7fb`  
		Last Modified: Wed, 14 Mar 2018 16:31:24 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4.3` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:1f55fb390fa3f6ae12327eab515b546b115e0627c6781e322de880bd9eae0895
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.4 MB (76360875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04ad75b5686d97be34df0a0a970feaed5221404e515a74df0b217222cad35b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 05:21:12 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 05:21:13 GMT
ENV INFLUXDB_VERSION=1.4.3
# Thu, 15 Mar 2018 05:21:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 05:21:22 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 15 Mar 2018 05:21:23 GMT
EXPOSE 8086/tcp
# Thu, 15 Mar 2018 05:21:24 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 05:21:25 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 15 Mar 2018 05:21:26 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 15 Mar 2018 05:21:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 05:21:28 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cf7a4ca8173e4d7c22e6c4ed1014a5521a59a91224c3b841eaf0eb3220acb8`  
		Last Modified: Thu, 15 Mar 2018 05:22:41 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5a1d9302b6378bf25c313958bd09df9af68bcb1a2c3daabaee07a977b5510c`  
		Last Modified: Thu, 15 Mar 2018 05:22:53 GMT  
		Size: 19.3 MB (19294113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4423f9e7158cd0c53ed8430668125d2e96c5978bf6e7b2469443e2c904cae0d6`  
		Last Modified: Thu, 15 Mar 2018 05:22:41 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ac397c3b1f34d9ac4b43990e225f1b3ec2f3f529924c245fa1ec69f50e31af`  
		Last Modified: Thu, 15 Mar 2018 05:22:41 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea7774f714705161443e5f286a97344885b2dc850759f13ee43171b65176934`  
		Last Modified: Thu, 15 Mar 2018 05:22:41 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4.3-alpine`

```console
$ docker pull influxdb@sha256:c04031ce3f44f42ae2efc46d0aeb18a976c6e32b9346602a9e7a7d36670b73c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4.3-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2db7ecb1fbf8a3368b0427c711b26aac0a8114251ce90e142fb3010bdfc52ab6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24543561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5026733dfb4d03db829c62f34d9fd0e610ea91f95aadda654754bcde5b33d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 21:31:24 GMT
RUN apk add --no-cache tzdata bash
# Thu, 01 Feb 2018 00:40:39 GMT
ENV INFLUXDB_VERSION=1.4.3
# Wed, 14 Feb 2018 21:43:40 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:43:41 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 14 Feb 2018 21:43:41 GMT
EXPOSE 8086/tcp
# Wed, 14 Feb 2018 21:43:41 GMT
VOLUME [/var/lib/influxdb]
# Wed, 14 Feb 2018 21:43:42 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 01 Mar 2018 20:57:57 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 01 Mar 2018 20:57:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Mar 2018 20:57:57 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62834f98d530d68f07f63088db7789b74c69f676d23de56ccdeb88da961f6367`  
		Last Modified: Tue, 09 Jan 2018 21:32:43 GMT  
		Size: 1.5 MB (1504273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3885936360284a5581e06e1bb310ab063c821fe3ba8a4fb89ed51a83658bac2`  
		Last Modified: Wed, 14 Feb 2018 21:51:33 GMT  
		Size: 21.0 MB (21045788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebe452b9c94e727c41c81c7c7f337b518fe677481ef8f0208183ac0a8c1712f`  
		Last Modified: Wed, 14 Feb 2018 21:51:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fab86063b7e450c539d7e574e50d7ed2c84934eb4edd55967afdb60349ec5c2`  
		Last Modified: Wed, 14 Feb 2018 21:51:28 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da7062519c95ddf01585be14ae407cb9b8139d3fc3d19f5344fed93473c51b9`  
		Last Modified: Thu, 01 Mar 2018 21:02:02 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4-alpine`

```console
$ docker pull influxdb@sha256:c04031ce3f44f42ae2efc46d0aeb18a976c6e32b9346602a9e7a7d36670b73c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2db7ecb1fbf8a3368b0427c711b26aac0a8114251ce90e142fb3010bdfc52ab6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24543561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5026733dfb4d03db829c62f34d9fd0e610ea91f95aadda654754bcde5b33d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 21:31:24 GMT
RUN apk add --no-cache tzdata bash
# Thu, 01 Feb 2018 00:40:39 GMT
ENV INFLUXDB_VERSION=1.4.3
# Wed, 14 Feb 2018 21:43:40 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:43:41 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 14 Feb 2018 21:43:41 GMT
EXPOSE 8086/tcp
# Wed, 14 Feb 2018 21:43:41 GMT
VOLUME [/var/lib/influxdb]
# Wed, 14 Feb 2018 21:43:42 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 01 Mar 2018 20:57:57 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 01 Mar 2018 20:57:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Mar 2018 20:57:57 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62834f98d530d68f07f63088db7789b74c69f676d23de56ccdeb88da961f6367`  
		Last Modified: Tue, 09 Jan 2018 21:32:43 GMT  
		Size: 1.5 MB (1504273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3885936360284a5581e06e1bb310ab063c821fe3ba8a4fb89ed51a83658bac2`  
		Last Modified: Wed, 14 Feb 2018 21:51:33 GMT  
		Size: 21.0 MB (21045788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebe452b9c94e727c41c81c7c7f337b518fe677481ef8f0208183ac0a8c1712f`  
		Last Modified: Wed, 14 Feb 2018 21:51:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fab86063b7e450c539d7e574e50d7ed2c84934eb4edd55967afdb60349ec5c2`  
		Last Modified: Wed, 14 Feb 2018 21:51:28 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da7062519c95ddf01585be14ae407cb9b8139d3fc3d19f5344fed93473c51b9`  
		Last Modified: Thu, 01 Mar 2018 21:02:02 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5`

```console
$ docker pull influxdb@sha256:ae8f1e919dda5023eb1d632029b561b875cdd33dd84ebcc715008129bd98e18d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5` - linux; amd64

```console
$ docker pull influxdb@sha256:ba9e45890d39b4c7b51c73c98713aa264e9b4f7d354470697fc843aecb9ea8fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83542927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7220f50974f611ba8d051aa4faf1a21d777329b848cc78380ea7de1ccb07100`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 04:44:31 GMT
ENV INFLUXDB_VERSION=1.5.0
# Thu, 15 Mar 2018 04:44:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 04:44:34 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 15 Mar 2018 04:44:34 GMT
EXPOSE 8086/tcp
# Thu, 15 Mar 2018 04:44:34 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 04:44:35 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 15 Mar 2018 04:44:35 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 15 Mar 2018 04:44:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 04:44:36 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5992e32a17d9c6dcc5508a26a9b914c5f73e316b4ba9a0787318ed77da3dc6e9`  
		Last Modified: Thu, 15 Mar 2018 04:46:31 GMT  
		Size: 23.0 MB (22959847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c113a8b2475c0943f434f134ae1b351fbdc312624667a76716335072b6e22d`  
		Last Modified: Thu, 15 Mar 2018 04:46:27 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03907ee3615f32aa75a47db677b87ffee37f47b79b6edcdc94d5cbc0aadb9a4d`  
		Last Modified: Thu, 15 Mar 2018 04:46:27 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93c2675cefdcfcaeffc8c90f67125d8fb5a46a5fb8360cf219e99c4b41cb28e`  
		Last Modified: Thu, 15 Mar 2018 04:46:27 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:1453096e240e50bfeec10fac9d0dd79ae8d8bebf5f6ec899f78f0ba747a1659c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77210064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08dc01cab30a9e237c67578b70c4ec5f87deab5d6602a1b7eac6c3f340746764`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:30:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 16:30:56 GMT
ENV INFLUXDB_VERSION=1.5.0
# Wed, 14 Mar 2018 16:31:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 14 Mar 2018 16:31:01 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 14 Mar 2018 16:31:02 GMT
EXPOSE 8086/tcp
# Wed, 14 Mar 2018 16:31:02 GMT
VOLUME [/var/lib/influxdb]
# Wed, 14 Mar 2018 16:31:02 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 14 Mar 2018 16:31:03 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 14 Mar 2018 16:31:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 16:31:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e34267f53b9fb05ddb394564eff3999d54f81c22dd05a8ccea048a90c3263f`  
		Last Modified: Wed, 14 Mar 2018 16:31:24 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0792aca8504ebd3b0ddf90f933086f8cc422007f8e6cdad898d8e5909ab9bc3`  
		Last Modified: Wed, 14 Mar 2018 16:32:01 GMT  
		Size: 21.6 MB (21610685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c32fb1384a547969c8edd383235335ceceeabada36d2619c813e016e424594`  
		Last Modified: Wed, 14 Mar 2018 16:31:55 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54cc13b6301f01e161f209fb8468e14c1bfcec5c1bf35aa25da7d02e520add1c`  
		Last Modified: Wed, 14 Mar 2018 16:31:54 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b465d91f34653cbd2764bf98f275c5446acfc6ed775f79857fd805de54004d`  
		Last Modified: Wed, 14 Mar 2018 16:31:55 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ce0fcf55e35544be6b5076092f3e0decfa3510a9826dc0e2df7ff87c962f0565
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (78028050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2d95d6d70acb262266ce15a678bb394fdd2502706acd252a4152538ac89214f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 05:21:12 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 05:21:50 GMT
ENV INFLUXDB_VERSION=1.5.0
# Thu, 15 Mar 2018 05:21:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 05:22:00 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 15 Mar 2018 05:22:02 GMT
EXPOSE 8086/tcp
# Thu, 15 Mar 2018 05:22:03 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 05:22:04 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 15 Mar 2018 05:22:06 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 15 Mar 2018 05:22:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 05:22:08 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cf7a4ca8173e4d7c22e6c4ed1014a5521a59a91224c3b841eaf0eb3220acb8`  
		Last Modified: Thu, 15 Mar 2018 05:22:41 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a165ac53986859b715536328d372abd3ae7d9ec3ffcd2ba0b74735e7bcc79145`  
		Last Modified: Thu, 15 Mar 2018 05:24:04 GMT  
		Size: 21.0 MB (20961291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af34e6a9fa185795b1377792270925a3da3c0d303b950ff49f777ed1354a284b`  
		Last Modified: Thu, 15 Mar 2018 05:23:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d45498f7c4cf93e3a192aad6835cba58cb2d5f2835cefa6107fcce9fd2e6734`  
		Last Modified: Thu, 15 Mar 2018 05:23:47 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9355a4429ec76c75cfdae54a1eeb18453cef08a3992a553f49de1924b98ba8`  
		Last Modified: Thu, 15 Mar 2018 05:23:49 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.1`

**does not exist** (yet?)

## `influxdb:1.5.1-alpine`

**does not exist** (yet?)

## `influxdb:1.5.1-data`

**does not exist** (yet?)

## `influxdb:1.5.1-data-alpine`

**does not exist** (yet?)

## `influxdb:1.5.1-meta`

**does not exist** (yet?)

## `influxdb:1.5.1-meta-alpine`

**does not exist** (yet?)

## `influxdb:1.5-alpine`

```console
$ docker pull influxdb@sha256:bd93ebe962f264f3f9092092db0debcab80175343e1c84bd0ca9312260c81967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:80e7a7893fa86f857003caf1433f6769ef344a8f0b55d9f357713d190f8903ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26352077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d58f880e82a8cd5bfd7067986e82b620eef9709a31788e85852206473e9b2c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 21:31:24 GMT
RUN apk add --no-cache tzdata bash
# Wed, 07 Mar 2018 22:12:11 GMT
ENV INFLUXDB_VERSION=1.5.0
# Wed, 07 Mar 2018 22:12:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 07 Mar 2018 22:12:20 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 07 Mar 2018 22:12:20 GMT
EXPOSE 8086/tcp
# Wed, 07 Mar 2018 22:12:21 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Mar 2018 22:12:21 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 07 Mar 2018 22:12:21 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 07 Mar 2018 22:12:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Mar 2018 22:12:22 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62834f98d530d68f07f63088db7789b74c69f676d23de56ccdeb88da961f6367`  
		Last Modified: Tue, 09 Jan 2018 21:32:43 GMT  
		Size: 1.5 MB (1504273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d311422190aabb151d1a5fe3515dc6cc4cfdd512cea03c9c824f6e55dfb455`  
		Last Modified: Wed, 07 Mar 2018 22:15:22 GMT  
		Size: 22.9 MB (22854306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34af554a15eb97ebaf11661c9ca05645d96038d7e7482a5801f17b0aa88f31a`  
		Last Modified: Wed, 07 Mar 2018 22:15:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019fb40d1dd19c4b1e5645529fb69a947c10f5e77a015b36f203f7204124e2a7`  
		Last Modified: Wed, 07 Mar 2018 22:15:18 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994a50331041f6af3fdf40ef22dbeb5f0f65d1ca70879e0ce1f9bda81a8e2557`  
		Last Modified: Wed, 07 Mar 2018 22:15:18 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data`

```console
$ docker pull influxdb@sha256:8f88b6f315f88b24666be151c30c231cd7964269d839be0be2461ebc47a00d92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:cdcc0606da845a0952e892db0c53b797a0b032134c58e9887cbcedf2175a70ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84299052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bf31fc0c57822ca38e70bb3eef003adfa81d17e2be5d03c9e234de3692cb5c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 04:44:53 GMT
ENV INFLUXDB_VERSION=1.5.0-c1.5.0
# Thu, 15 Mar 2018 04:44:56 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Thu, 15 Mar 2018 04:44:57 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Thu, 15 Mar 2018 04:44:57 GMT
EXPOSE 8086/tcp
# Thu, 15 Mar 2018 04:44:57 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 04:44:58 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Thu, 15 Mar 2018 04:44:58 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 15 Mar 2018 04:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 04:44:59 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc88269c51422c6cb91ed7131bbcdca7afcea8f574ba13ba0a0e0c30542f806`  
		Last Modified: Thu, 15 Mar 2018 04:47:32 GMT  
		Size: 23.7 MB (23715918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b21cb9a41123b6d8b9e58bfb2cda6f7afdeba218c3e64a4d9a6ee5da24f14d8`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0f119196d78a7b955414a9800cc10a7296455e78b6552cb2799f893006ae86`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf18fa98edbd123e3af13e4695b947122f359851e6e3ae19797b69609a0f749`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data-alpine`

```console
$ docker pull influxdb@sha256:f757b276f723ace1ea3a30bedd61828c1912f5f358cc6c285ea77a5795980615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4bab5e114b8a821c0d085652e8089467a3ef3b227dc89092c1c893a9176f82a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27451314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61867ae8e975f66355e90443c512f9bbce6d058e6bc44786fc26ae141c42351`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 13 Jan 2018 01:39:13 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 07 Mar 2018 22:13:00 GMT
ENV INFLUXDB_VERSION=1.5.0-c1.5.0
# Wed, 07 Mar 2018 22:13:09 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 07 Mar 2018 22:13:10 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 07 Mar 2018 22:13:10 GMT
EXPOSE 8086/tcp
# Wed, 07 Mar 2018 22:13:10 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Mar 2018 22:13:11 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 07 Mar 2018 22:13:11 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 07 Mar 2018 22:13:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Mar 2018 22:13:12 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b6c161ff2e67675f87132cc71e97fb00eb631fda65f42bb1f42e0a4597c178`  
		Last Modified: Sat, 13 Jan 2018 01:41:17 GMT  
		Size: 1.8 MB (1848579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b560fdf0efbedcc1bb7f885e4f0b84436ca32e203dd03db796bbe9220d37d7ab`  
		Last Modified: Wed, 07 Mar 2018 22:17:16 GMT  
		Size: 23.6 MB (23609177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c32e62c5c88400ebc4c8b373debc0a7155e3001a6765c1ee61842b63d27369b`  
		Last Modified: Wed, 07 Mar 2018 22:17:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003bd2669149e202076ee0724d79f1f25c0f2d0b1a19d2ba8c1e8af39682593d`  
		Last Modified: Wed, 07 Mar 2018 22:17:12 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6803114685b49a118c9f7440fe61da4259d0f4599c07459e73b5124a6f85522`  
		Last Modified: Wed, 07 Mar 2018 22:17:11 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta`

```console
$ docker pull influxdb@sha256:f3a58b661d75c847ec9fe7808b0bf99795fbc941b79fc5849fda14a9062d070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:7d47c5f93ce1ded393432ac566f6b24d8cf9d6b9cd1c5c1cfdb6288d96312b83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71774879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81dd3ab986d53ebe0801523bc26c7c359fc0acdae50a0df74370e4fb5419dd17`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 04:44:53 GMT
ENV INFLUXDB_VERSION=1.5.0-c1.5.0
# Thu, 15 Mar 2018 04:45:18 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Thu, 15 Mar 2018 04:45:19 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Thu, 15 Mar 2018 04:45:19 GMT
EXPOSE 8091/tcp
# Thu, 15 Mar 2018 04:45:19 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 04:45:20 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Thu, 15 Mar 2018 04:45:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 04:45:20 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2036dd14784653e652abbfb45520a651a2a13721833836034ad393d2a194547a`  
		Last Modified: Thu, 15 Mar 2018 04:48:29 GMT  
		Size: 11.2 MB (11192834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa97c16159e3c7ecbb24eed39a80c12834ac00fe8d88df3af75fdce112da1cfb`  
		Last Modified: Thu, 15 Mar 2018 04:48:27 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8593165470171b05716a5d1bcb790ad8cc5fbf4817e0067854eaa7ada8f95695`  
		Last Modified: Thu, 15 Mar 2018 04:48:27 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta-alpine`

```console
$ docker pull influxdb@sha256:5d18f71f6f8170341ae455bcf97e563c63042ea424986740408e2434726ba657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5f54e2a1c2bf8e536fda537123f58ba2428eb5d98e6449261fac65c9f5f4c34c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14987573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f834ca486e0016a6b22fff43b8b5909854927b2f42ab5c3583bddf9988f7b66`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 13 Jan 2018 01:39:13 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 07 Mar 2018 22:13:00 GMT
ENV INFLUXDB_VERSION=1.5.0-c1.5.0
# Wed, 07 Mar 2018 22:13:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 07 Mar 2018 22:13:57 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 07 Mar 2018 22:13:57 GMT
EXPOSE 8091/tcp
# Wed, 07 Mar 2018 22:13:57 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Mar 2018 22:13:58 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 07 Mar 2018 22:13:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Mar 2018 22:13:58 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b6c161ff2e67675f87132cc71e97fb00eb631fda65f42bb1f42e0a4597c178`  
		Last Modified: Sat, 13 Jan 2018 01:41:17 GMT  
		Size: 1.8 MB (1848579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0598d04776fdf8f433547a9482e6408d58c08421d0bbddab9d890ffc80949f`  
		Last Modified: Wed, 07 Mar 2018 22:19:03 GMT  
		Size: 11.1 MB (11146527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24de06e6e7ce83b569b33d787a98db2654aa74f3c53654303685e2c203c839b1`  
		Last Modified: Wed, 07 Mar 2018 22:19:01 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0696ebded02ff4ebd486a3d83c6727f3b990abd934ccfe3ac88d1f069d6cda`  
		Last Modified: Wed, 07 Mar 2018 22:19:01 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:bd93ebe962f264f3f9092092db0debcab80175343e1c84bd0ca9312260c81967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:80e7a7893fa86f857003caf1433f6769ef344a8f0b55d9f357713d190f8903ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26352077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d58f880e82a8cd5bfd7067986e82b620eef9709a31788e85852206473e9b2c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 21:31:24 GMT
RUN apk add --no-cache tzdata bash
# Wed, 07 Mar 2018 22:12:11 GMT
ENV INFLUXDB_VERSION=1.5.0
# Wed, 07 Mar 2018 22:12:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 07 Mar 2018 22:12:20 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 07 Mar 2018 22:12:20 GMT
EXPOSE 8086/tcp
# Wed, 07 Mar 2018 22:12:21 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Mar 2018 22:12:21 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 07 Mar 2018 22:12:21 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 07 Mar 2018 22:12:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Mar 2018 22:12:22 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62834f98d530d68f07f63088db7789b74c69f676d23de56ccdeb88da961f6367`  
		Last Modified: Tue, 09 Jan 2018 21:32:43 GMT  
		Size: 1.5 MB (1504273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d311422190aabb151d1a5fe3515dc6cc4cfdd512cea03c9c824f6e55dfb455`  
		Last Modified: Wed, 07 Mar 2018 22:15:22 GMT  
		Size: 22.9 MB (22854306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34af554a15eb97ebaf11661c9ca05645d96038d7e7482a5801f17b0aa88f31a`  
		Last Modified: Wed, 07 Mar 2018 22:15:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019fb40d1dd19c4b1e5645529fb69a947c10f5e77a015b36f203f7204124e2a7`  
		Last Modified: Wed, 07 Mar 2018 22:15:18 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994a50331041f6af3fdf40ef22dbeb5f0f65d1ca70879e0ce1f9bda81a8e2557`  
		Last Modified: Wed, 07 Mar 2018 22:15:18 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data`

```console
$ docker pull influxdb@sha256:8f88b6f315f88b24666be151c30c231cd7964269d839be0be2461ebc47a00d92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:cdcc0606da845a0952e892db0c53b797a0b032134c58e9887cbcedf2175a70ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84299052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bf31fc0c57822ca38e70bb3eef003adfa81d17e2be5d03c9e234de3692cb5c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 04:44:53 GMT
ENV INFLUXDB_VERSION=1.5.0-c1.5.0
# Thu, 15 Mar 2018 04:44:56 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Thu, 15 Mar 2018 04:44:57 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Thu, 15 Mar 2018 04:44:57 GMT
EXPOSE 8086/tcp
# Thu, 15 Mar 2018 04:44:57 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 04:44:58 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Thu, 15 Mar 2018 04:44:58 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 15 Mar 2018 04:44:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 04:44:59 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc88269c51422c6cb91ed7131bbcdca7afcea8f574ba13ba0a0e0c30542f806`  
		Last Modified: Thu, 15 Mar 2018 04:47:32 GMT  
		Size: 23.7 MB (23715918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b21cb9a41123b6d8b9e58bfb2cda6f7afdeba218c3e64a4d9a6ee5da24f14d8`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0f119196d78a7b955414a9800cc10a7296455e78b6552cb2799f893006ae86`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf18fa98edbd123e3af13e4695b947122f359851e6e3ae19797b69609a0f749`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:f757b276f723ace1ea3a30bedd61828c1912f5f358cc6c285ea77a5795980615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4bab5e114b8a821c0d085652e8089467a3ef3b227dc89092c1c893a9176f82a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27451314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61867ae8e975f66355e90443c512f9bbce6d058e6bc44786fc26ae141c42351`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 13 Jan 2018 01:39:13 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 07 Mar 2018 22:13:00 GMT
ENV INFLUXDB_VERSION=1.5.0-c1.5.0
# Wed, 07 Mar 2018 22:13:09 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 07 Mar 2018 22:13:10 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 07 Mar 2018 22:13:10 GMT
EXPOSE 8086/tcp
# Wed, 07 Mar 2018 22:13:10 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Mar 2018 22:13:11 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 07 Mar 2018 22:13:11 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 07 Mar 2018 22:13:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Mar 2018 22:13:12 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b6c161ff2e67675f87132cc71e97fb00eb631fda65f42bb1f42e0a4597c178`  
		Last Modified: Sat, 13 Jan 2018 01:41:17 GMT  
		Size: 1.8 MB (1848579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b560fdf0efbedcc1bb7f885e4f0b84436ca32e203dd03db796bbe9220d37d7ab`  
		Last Modified: Wed, 07 Mar 2018 22:17:16 GMT  
		Size: 23.6 MB (23609177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c32e62c5c88400ebc4c8b373debc0a7155e3001a6765c1ee61842b63d27369b`  
		Last Modified: Wed, 07 Mar 2018 22:17:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003bd2669149e202076ee0724d79f1f25c0f2d0b1a19d2ba8c1e8af39682593d`  
		Last Modified: Wed, 07 Mar 2018 22:17:12 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6803114685b49a118c9f7440fe61da4259d0f4599c07459e73b5124a6f85522`  
		Last Modified: Wed, 07 Mar 2018 22:17:11 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:ae8f1e919dda5023eb1d632029b561b875cdd33dd84ebcc715008129bd98e18d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:ba9e45890d39b4c7b51c73c98713aa264e9b4f7d354470697fc843aecb9ea8fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83542927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7220f50974f611ba8d051aa4faf1a21d777329b848cc78380ea7de1ccb07100`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 04:44:31 GMT
ENV INFLUXDB_VERSION=1.5.0
# Thu, 15 Mar 2018 04:44:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 04:44:34 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 15 Mar 2018 04:44:34 GMT
EXPOSE 8086/tcp
# Thu, 15 Mar 2018 04:44:34 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 04:44:35 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 15 Mar 2018 04:44:35 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 15 Mar 2018 04:44:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 04:44:36 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5992e32a17d9c6dcc5508a26a9b914c5f73e316b4ba9a0787318ed77da3dc6e9`  
		Last Modified: Thu, 15 Mar 2018 04:46:31 GMT  
		Size: 23.0 MB (22959847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c113a8b2475c0943f434f134ae1b351fbdc312624667a76716335072b6e22d`  
		Last Modified: Thu, 15 Mar 2018 04:46:27 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03907ee3615f32aa75a47db677b87ffee37f47b79b6edcdc94d5cbc0aadb9a4d`  
		Last Modified: Thu, 15 Mar 2018 04:46:27 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93c2675cefdcfcaeffc8c90f67125d8fb5a46a5fb8360cf219e99c4b41cb28e`  
		Last Modified: Thu, 15 Mar 2018 04:46:27 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:1453096e240e50bfeec10fac9d0dd79ae8d8bebf5f6ec899f78f0ba747a1659c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77210064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08dc01cab30a9e237c67578b70c4ec5f87deab5d6602a1b7eac6c3f340746764`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:30:33 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 16:30:56 GMT
ENV INFLUXDB_VERSION=1.5.0
# Wed, 14 Mar 2018 16:31:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 14 Mar 2018 16:31:01 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 14 Mar 2018 16:31:02 GMT
EXPOSE 8086/tcp
# Wed, 14 Mar 2018 16:31:02 GMT
VOLUME [/var/lib/influxdb]
# Wed, 14 Mar 2018 16:31:02 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 14 Mar 2018 16:31:03 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 14 Mar 2018 16:31:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 16:31:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e34267f53b9fb05ddb394564eff3999d54f81c22dd05a8ccea048a90c3263f`  
		Last Modified: Wed, 14 Mar 2018 16:31:24 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0792aca8504ebd3b0ddf90f933086f8cc422007f8e6cdad898d8e5909ab9bc3`  
		Last Modified: Wed, 14 Mar 2018 16:32:01 GMT  
		Size: 21.6 MB (21610685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c32fb1384a547969c8edd383235335ceceeabada36d2619c813e016e424594`  
		Last Modified: Wed, 14 Mar 2018 16:31:55 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54cc13b6301f01e161f209fb8468e14c1bfcec5c1bf35aa25da7d02e520add1c`  
		Last Modified: Wed, 14 Mar 2018 16:31:54 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b465d91f34653cbd2764bf98f275c5446acfc6ed775f79857fd805de54004d`  
		Last Modified: Wed, 14 Mar 2018 16:31:55 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ce0fcf55e35544be6b5076092f3e0decfa3510a9826dc0e2df7ff87c962f0565
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (78028050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2d95d6d70acb262266ce15a678bb394fdd2502706acd252a4152538ac89214f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 05:21:12 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 05:21:50 GMT
ENV INFLUXDB_VERSION=1.5.0
# Thu, 15 Mar 2018 05:21:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 05:22:00 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 15 Mar 2018 05:22:02 GMT
EXPOSE 8086/tcp
# Thu, 15 Mar 2018 05:22:03 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 05:22:04 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 15 Mar 2018 05:22:06 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 15 Mar 2018 05:22:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 05:22:08 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cf7a4ca8173e4d7c22e6c4ed1014a5521a59a91224c3b841eaf0eb3220acb8`  
		Last Modified: Thu, 15 Mar 2018 05:22:41 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a165ac53986859b715536328d372abd3ae7d9ec3ffcd2ba0b74735e7bcc79145`  
		Last Modified: Thu, 15 Mar 2018 05:24:04 GMT  
		Size: 21.0 MB (20961291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af34e6a9fa185795b1377792270925a3da3c0d303b950ff49f777ed1354a284b`  
		Last Modified: Thu, 15 Mar 2018 05:23:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d45498f7c4cf93e3a192aad6835cba58cb2d5f2835cefa6107fcce9fd2e6734`  
		Last Modified: Thu, 15 Mar 2018 05:23:47 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9355a4429ec76c75cfdae54a1eeb18453cef08a3992a553f49de1924b98ba8`  
		Last Modified: Thu, 15 Mar 2018 05:23:49 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:f3a58b661d75c847ec9fe7808b0bf99795fbc941b79fc5849fda14a9062d070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:7d47c5f93ce1ded393432ac566f6b24d8cf9d6b9cd1c5c1cfdb6288d96312b83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71774879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81dd3ab986d53ebe0801523bc26c7c359fc0acdae50a0df74370e4fb5419dd17`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 04:44:53 GMT
ENV INFLUXDB_VERSION=1.5.0-c1.5.0
# Thu, 15 Mar 2018 04:45:18 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Thu, 15 Mar 2018 04:45:19 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Thu, 15 Mar 2018 04:45:19 GMT
EXPOSE 8091/tcp
# Thu, 15 Mar 2018 04:45:19 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 04:45:20 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Thu, 15 Mar 2018 04:45:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 04:45:20 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2036dd14784653e652abbfb45520a651a2a13721833836034ad393d2a194547a`  
		Last Modified: Thu, 15 Mar 2018 04:48:29 GMT  
		Size: 11.2 MB (11192834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa97c16159e3c7ecbb24eed39a80c12834ac00fe8d88df3af75fdce112da1cfb`  
		Last Modified: Thu, 15 Mar 2018 04:48:27 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8593165470171b05716a5d1bcb790ad8cc5fbf4817e0067854eaa7ada8f95695`  
		Last Modified: Thu, 15 Mar 2018 04:48:27 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:5d18f71f6f8170341ae455bcf97e563c63042ea424986740408e2434726ba657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5f54e2a1c2bf8e536fda537123f58ba2428eb5d98e6449261fac65c9f5f4c34c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14987573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f834ca486e0016a6b22fff43b8b5909854927b2f42ab5c3583bddf9988f7b66`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 13 Jan 2018 01:39:13 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 07 Mar 2018 22:13:00 GMT
ENV INFLUXDB_VERSION=1.5.0-c1.5.0
# Wed, 07 Mar 2018 22:13:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 07 Mar 2018 22:13:57 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 07 Mar 2018 22:13:57 GMT
EXPOSE 8091/tcp
# Wed, 07 Mar 2018 22:13:57 GMT
VOLUME [/var/lib/influxdb]
# Wed, 07 Mar 2018 22:13:58 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 07 Mar 2018 22:13:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Mar 2018 22:13:58 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b6c161ff2e67675f87132cc71e97fb00eb631fda65f42bb1f42e0a4597c178`  
		Last Modified: Sat, 13 Jan 2018 01:41:17 GMT  
		Size: 1.8 MB (1848579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0598d04776fdf8f433547a9482e6408d58c08421d0bbddab9d890ffc80949f`  
		Last Modified: Wed, 07 Mar 2018 22:19:03 GMT  
		Size: 11.1 MB (11146527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24de06e6e7ce83b569b33d787a98db2654aa74f3c53654303685e2c203c839b1`  
		Last Modified: Wed, 07 Mar 2018 22:19:01 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0696ebded02ff4ebd486a3d83c6727f3b990abd934ccfe3ac88d1f069d6cda`  
		Last Modified: Wed, 07 Mar 2018 22:19:01 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
