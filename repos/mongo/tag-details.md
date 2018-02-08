<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3`](#mongo3)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.15`](#mongo3015)
-	[`mongo:3.0.15-wheezy`](#mongo3015-wheezy)
-	[`mongo:3.0-wheezy`](#mongo30-wheezy)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.19`](#mongo3219)
-	[`mongo:3.2.19-jessie`](#mongo3219-jessie)
-	[`mongo:3.2-jessie`](#mongo32-jessie)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4.12`](#mongo3412)
-	[`mongo:3.4.12-jessie`](#mongo3412-jessie)
-	[`mongo:3.4-jessie`](#mongo34-jessie)
-	[`mongo:3.6`](#mongo36)
-	[`mongo:3.6.2`](#mongo362)
-	[`mongo:3.6.2-jessie`](#mongo362-jessie)
-	[`mongo:3.6-jessie`](#mongo36-jessie)
-	[`mongo:3.7`](#mongo37)
-	[`mongo:3.7.1`](#mongo371)
-	[`mongo:3.7.1-jessie`](#mongo371-jessie)
-	[`mongo:3.7-jessie`](#mongo37-jessie)
-	[`mongo:3-jessie`](#mongo3-jessie)
-	[`mongo:jessie`](#mongojessie)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:unstable-jessie`](#mongounstable-jessie)

## `mongo:3`

```console
$ docker pull mongo@sha256:878b76e5834f37da98096296f4147f6ca4d94b1a9187986e9d6e59756e7ce865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:8bb68343e860575cfe3e82c98f5f5baad3ab8a67f54062d3476f2276b576abb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130406419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f57644645eb53a3d2256f460ade116ad3590252c28f63e5136c026423dc8286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:21:07 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 21 Dec 2017 01:21:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:21:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:21:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_MAJOR=3.6
# Mon, 15 Jan 2018 23:15:02 GMT
ENV MONGO_VERSION=3.6.2
# Mon, 15 Jan 2018 23:15:03 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 15 Jan 2018 23:15:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 15 Jan 2018 23:15:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 15 Jan 2018 23:15:25 GMT
VOLUME [/data/db /data/configdb]
# Mon, 15 Jan 2018 23:15:25 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 15 Jan 2018 23:15:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 Jan 2018 23:15:26 GMT
EXPOSE 27017/tcp
# Mon, 15 Jan 2018 23:15:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6c28c0235b619029c8b8c9d512f97756a986bfa458e64b5aa45784af894ac3`  
		Last Modified: Thu, 21 Dec 2017 01:24:43 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688308f715efc799218462de2504d5ea35be542dfc7bb1dbcbf9298f4c055d`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c56202c1a956ce919db56d3e09890a3df459cefab949e517810b84e6c2378`  
		Last Modified: Mon, 15 Jan 2018 23:26:02 GMT  
		Size: 97.1 MB (97069699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd9b5a8a42871d8a15d6dd892cb7947fa345445ded44f610117ec4cbbe7bf81`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf24480e18299ebb064cdaa4947195f9996a9b443f3c44dcc9cc1dbe668b82e`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:7520ff8ac26830e838633f3048f06322c2ba72a34cae8c54b56988a71994a9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.2007; amd64
	-	windows version 10.0.16299.125; amd64

### `mongo:3.0` - linux; amd64

```console
$ docker pull mongo@sha256:77f22f913d8e62559b58437df321f02aabd6beeb863b5292c66c175716846f60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84530333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28cba33aad0327cf5df59ca2cbea98487692775937b9b05d0a7d7780952ba11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:27 GMT
ADD file:664e20ea0b4805f811ed279f86823b281c39df127d0f73ae147468bc1a9e4020 in / 
# Tue, 12 Dec 2017 01:46:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:35:30 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:35:31 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Dec 2017 02:35:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:15:47 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:15:47 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:16:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:16:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:16:05 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Thu, 21 Dec 2017 01:16:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:16:07 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:16:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:16:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:16:07 GMT
ENV MONGO_MAJOR=3.0
# Thu, 21 Dec 2017 01:16:08 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 21 Dec 2017 01:16:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 21 Dec 2017 01:16:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 21 Dec 2017 01:16:24 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 21 Dec 2017 01:16:24 GMT
VOLUME [/data/db /data/configdb]
# Thu, 21 Dec 2017 01:16:24 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 21 Dec 2017 01:16:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 01:16:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 01:16:26 GMT
EXPOSE 27017/tcp
# Thu, 21 Dec 2017 01:16:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b967c325a8b3055106908c059240f7ea99c3b22958080fa3a0c1688e1e6739d1`  
		Last Modified: Tue, 12 Dec 2017 02:00:41 GMT  
		Size: 19.2 MB (19164678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f4b68f5594ff127e3c87e19190ca62d695d260de2c4e1dfbc1a110dab8e2de`  
		Last Modified: Tue, 12 Dec 2017 02:41:17 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24baba5a242ee93e67a0fcfe657c4944872fd9fd2a064328454997b46cdbd62`  
		Last Modified: Tue, 12 Dec 2017 02:41:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af11f2476fef6def7b28fd2c24f84397a099411ed68ad67cf937d5f9b76a82d7`  
		Last Modified: Tue, 12 Dec 2017 02:41:15 GMT  
		Size: 2.7 MB (2660614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff4b2bf33f8e8bc113a559558c7e0fdc1f4e695b2bec89c09ccafc7f1dff9019`  
		Last Modified: Thu, 21 Dec 2017 01:22:01 GMT  
		Size: 810.6 KB (810648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2c0d1d2005390ed504d8dd433b7ce7c2f81d79abbc40e191d8e64e1d2b1729`  
		Last Modified: Thu, 21 Dec 2017 01:22:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2fb164e25f84f88ebd54215876bc44293ae6dfd02646f473f87ea57cbbf853`  
		Last Modified: Thu, 21 Dec 2017 01:22:01 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95455f9a86a6bacac05bdcca3ec35f202e59b2ace6dc2e5c14f3c1e1b154aab4`  
		Last Modified: Thu, 21 Dec 2017 01:21:58 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460daad09d9d797d449205a3892eb7727250f88cb0fd838eb3da4477673c1bfd`  
		Last Modified: Thu, 21 Dec 2017 01:22:13 GMT  
		Size: 61.9 MB (61886207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab0d8c194a10785d610e3bc5a44fc56aebdc1b74d9475c1aed4690a23569518`  
		Last Modified: Thu, 21 Dec 2017 01:21:59 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424da624b820d4a1a38ffb4556bdd657dcea49c09fdfd356aa66b45a1d995b27`  
		Last Modified: Thu, 21 Dec 2017 01:21:59 GMT  
		Size: 3.6 KB (3569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c9ad8e0e7784c98341e142dbd3bf28f8677fbbb98b85dbc7403a25779eb619`  
		Last Modified: Thu, 21 Dec 2017 01:21:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0` - windows version 10.0.14393.2007; amd64

```console
$ docker pull mongo@sha256:6dbf2494234499c01c54a5caad54691ce567d07b93f82e85188168b3bbfff118
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5421073958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7badb99cb8a3219c4e5a4bbe440885366b31a145b7dda3534d50b1377d4dce9c`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 02:38:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 05 Jan 2018 02:38:20 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 05 Jan 2018 02:38:21 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Fri, 05 Jan 2018 02:38:22 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Fri, 05 Jan 2018 02:54:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 05 Jan 2018 02:54:37 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 05 Jan 2018 02:54:39 GMT
EXPOSE 27017/tcp
# Fri, 05 Jan 2018 02:54:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7e8689c7b014746ecb94f640c979d8f83b6d8fa0afd27c93e33f46f2f0a68eed`  
		Last Modified: Fri, 05 Jan 2018 03:29:26 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9b11c943102bbbb5bcde72f98ffc0d66eace802a5ea5051bd84399beab497e`  
		Last Modified: Fri, 05 Jan 2018 03:29:26 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c63b0493068e847ab3dd806873742aea2aa4daabffe21f3a03c5a03bbf0c59`  
		Last Modified: Fri, 05 Jan 2018 03:29:26 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04bfbd639e8d62976aa4e30cad22842999ea26bab5006599be433fd51fbf90c`  
		Last Modified: Fri, 05 Jan 2018 03:29:24 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74072e98626fe4174170eec84315ae8ea4dd1d49c375be4639f789ad88e4496`  
		Last Modified: Fri, 05 Jan 2018 03:29:36 GMT  
		Size: 47.1 MB (47060416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553c4c321873a5049bb9785c44d235ae8fd10c8222d10f89b5b31edc542a9cf6`  
		Last Modified: Fri, 05 Jan 2018 03:29:24 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7385460c2ec2093137223e1811463ac2083099b45e7567827a44fc19278982f6`  
		Last Modified: Fri, 05 Jan 2018 03:29:24 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725672f336d71aa03c2b143222fded841af0217d937c87021ddc51eaff79ea80`  
		Last Modified: Fri, 05 Jan 2018 03:29:24 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:00389d2bd6ffd221dfd368ac17ecfc5e260eceb2047ee6863a71fbdc5bd75191
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2910420228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdbab21328ecf02ab2f68ac4290edca6369ec007e8168c943cb98ceebd36437`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:53:47 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Dec 2017 02:53:48 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 13 Dec 2017 02:53:49 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 13 Dec 2017 02:55:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:56:01 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:56:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a4f70e8a55dd9ea85316b97f10c7d87d64d891d4a3893db509966ddf56ca77`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f3ea3f4e8d1ec0b6a063c611c64ffb2378d0ea00164896c00a217f03d1d5d8`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b39b3d13ed5c75186b92c5228062beafa6c75dc85824bf6ce76b7fdfefdeb0`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d712635eedd07152360df86c29be50fe9b990b6e6542bc774957a913a31c050`  
		Last Modified: Tue, 19 Dec 2017 04:07:52 GMT  
		Size: 46.6 MB (46586800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603d2b16e18ce034f792da7086da5c088f939d755a4cdb266e8daae630494f63`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15104271b3f326fbb100b4c990b242c7c5e2da4f1dc143fb1d7a517df9edd65`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdce9f53f93a4baac40828dea63b2616bab3b23f5d5c007506f00400fa4c2510`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:7520ff8ac26830e838633f3048f06322c2ba72a34cae8c54b56988a71994a9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.2007; amd64
	-	windows version 10.0.16299.125; amd64

### `mongo:3.0.15` - linux; amd64

```console
$ docker pull mongo@sha256:77f22f913d8e62559b58437df321f02aabd6beeb863b5292c66c175716846f60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84530333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28cba33aad0327cf5df59ca2cbea98487692775937b9b05d0a7d7780952ba11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:27 GMT
ADD file:664e20ea0b4805f811ed279f86823b281c39df127d0f73ae147468bc1a9e4020 in / 
# Tue, 12 Dec 2017 01:46:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:35:30 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:35:31 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Dec 2017 02:35:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:15:47 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:15:47 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:16:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:16:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:16:05 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Thu, 21 Dec 2017 01:16:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:16:07 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:16:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:16:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:16:07 GMT
ENV MONGO_MAJOR=3.0
# Thu, 21 Dec 2017 01:16:08 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 21 Dec 2017 01:16:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 21 Dec 2017 01:16:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 21 Dec 2017 01:16:24 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 21 Dec 2017 01:16:24 GMT
VOLUME [/data/db /data/configdb]
# Thu, 21 Dec 2017 01:16:24 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 21 Dec 2017 01:16:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 01:16:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 01:16:26 GMT
EXPOSE 27017/tcp
# Thu, 21 Dec 2017 01:16:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b967c325a8b3055106908c059240f7ea99c3b22958080fa3a0c1688e1e6739d1`  
		Last Modified: Tue, 12 Dec 2017 02:00:41 GMT  
		Size: 19.2 MB (19164678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f4b68f5594ff127e3c87e19190ca62d695d260de2c4e1dfbc1a110dab8e2de`  
		Last Modified: Tue, 12 Dec 2017 02:41:17 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24baba5a242ee93e67a0fcfe657c4944872fd9fd2a064328454997b46cdbd62`  
		Last Modified: Tue, 12 Dec 2017 02:41:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af11f2476fef6def7b28fd2c24f84397a099411ed68ad67cf937d5f9b76a82d7`  
		Last Modified: Tue, 12 Dec 2017 02:41:15 GMT  
		Size: 2.7 MB (2660614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff4b2bf33f8e8bc113a559558c7e0fdc1f4e695b2bec89c09ccafc7f1dff9019`  
		Last Modified: Thu, 21 Dec 2017 01:22:01 GMT  
		Size: 810.6 KB (810648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2c0d1d2005390ed504d8dd433b7ce7c2f81d79abbc40e191d8e64e1d2b1729`  
		Last Modified: Thu, 21 Dec 2017 01:22:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2fb164e25f84f88ebd54215876bc44293ae6dfd02646f473f87ea57cbbf853`  
		Last Modified: Thu, 21 Dec 2017 01:22:01 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95455f9a86a6bacac05bdcca3ec35f202e59b2ace6dc2e5c14f3c1e1b154aab4`  
		Last Modified: Thu, 21 Dec 2017 01:21:58 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460daad09d9d797d449205a3892eb7727250f88cb0fd838eb3da4477673c1bfd`  
		Last Modified: Thu, 21 Dec 2017 01:22:13 GMT  
		Size: 61.9 MB (61886207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab0d8c194a10785d610e3bc5a44fc56aebdc1b74d9475c1aed4690a23569518`  
		Last Modified: Thu, 21 Dec 2017 01:21:59 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424da624b820d4a1a38ffb4556bdd657dcea49c09fdfd356aa66b45a1d995b27`  
		Last Modified: Thu, 21 Dec 2017 01:21:59 GMT  
		Size: 3.6 KB (3569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c9ad8e0e7784c98341e142dbd3bf28f8677fbbb98b85dbc7403a25779eb619`  
		Last Modified: Thu, 21 Dec 2017 01:21:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0.15` - windows version 10.0.14393.2007; amd64

```console
$ docker pull mongo@sha256:6dbf2494234499c01c54a5caad54691ce567d07b93f82e85188168b3bbfff118
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5421073958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7badb99cb8a3219c4e5a4bbe440885366b31a145b7dda3534d50b1377d4dce9c`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 02:38:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 05 Jan 2018 02:38:20 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 05 Jan 2018 02:38:21 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Fri, 05 Jan 2018 02:38:22 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Fri, 05 Jan 2018 02:54:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 05 Jan 2018 02:54:37 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 05 Jan 2018 02:54:39 GMT
EXPOSE 27017/tcp
# Fri, 05 Jan 2018 02:54:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7e8689c7b014746ecb94f640c979d8f83b6d8fa0afd27c93e33f46f2f0a68eed`  
		Last Modified: Fri, 05 Jan 2018 03:29:26 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9b11c943102bbbb5bcde72f98ffc0d66eace802a5ea5051bd84399beab497e`  
		Last Modified: Fri, 05 Jan 2018 03:29:26 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c63b0493068e847ab3dd806873742aea2aa4daabffe21f3a03c5a03bbf0c59`  
		Last Modified: Fri, 05 Jan 2018 03:29:26 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04bfbd639e8d62976aa4e30cad22842999ea26bab5006599be433fd51fbf90c`  
		Last Modified: Fri, 05 Jan 2018 03:29:24 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74072e98626fe4174170eec84315ae8ea4dd1d49c375be4639f789ad88e4496`  
		Last Modified: Fri, 05 Jan 2018 03:29:36 GMT  
		Size: 47.1 MB (47060416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553c4c321873a5049bb9785c44d235ae8fd10c8222d10f89b5b31edc542a9cf6`  
		Last Modified: Fri, 05 Jan 2018 03:29:24 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7385460c2ec2093137223e1811463ac2083099b45e7567827a44fc19278982f6`  
		Last Modified: Fri, 05 Jan 2018 03:29:24 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725672f336d71aa03c2b143222fded841af0217d937c87021ddc51eaff79ea80`  
		Last Modified: Fri, 05 Jan 2018 03:29:24 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0.15` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:00389d2bd6ffd221dfd368ac17ecfc5e260eceb2047ee6863a71fbdc5bd75191
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2910420228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdbab21328ecf02ab2f68ac4290edca6369ec007e8168c943cb98ceebd36437`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:53:47 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Dec 2017 02:53:48 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 13 Dec 2017 02:53:49 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 13 Dec 2017 02:55:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:56:01 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:56:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a4f70e8a55dd9ea85316b97f10c7d87d64d891d4a3893db509966ddf56ca77`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f3ea3f4e8d1ec0b6a063c611c64ffb2378d0ea00164896c00a217f03d1d5d8`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b39b3d13ed5c75186b92c5228062beafa6c75dc85824bf6ce76b7fdfefdeb0`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d712635eedd07152360df86c29be50fe9b990b6e6542bc774957a913a31c050`  
		Last Modified: Tue, 19 Dec 2017 04:07:52 GMT  
		Size: 46.6 MB (46586800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603d2b16e18ce034f792da7086da5c088f939d755a4cdb266e8daae630494f63`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15104271b3f326fbb100b4c990b242c7c5e2da4f1dc143fb1d7a517df9edd65`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdce9f53f93a4baac40828dea63b2616bab3b23f5d5c007506f00400fa4c2510`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-wheezy`

```console
$ docker pull mongo@sha256:b2534b3119e159ee021c15600e67ad6945fa6eb5bf40e5f20defeae807734d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0.15-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:77f22f913d8e62559b58437df321f02aabd6beeb863b5292c66c175716846f60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84530333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28cba33aad0327cf5df59ca2cbea98487692775937b9b05d0a7d7780952ba11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:27 GMT
ADD file:664e20ea0b4805f811ed279f86823b281c39df127d0f73ae147468bc1a9e4020 in / 
# Tue, 12 Dec 2017 01:46:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:35:30 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:35:31 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Dec 2017 02:35:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:15:47 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:15:47 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:16:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:16:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:16:05 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Thu, 21 Dec 2017 01:16:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:16:07 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:16:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:16:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:16:07 GMT
ENV MONGO_MAJOR=3.0
# Thu, 21 Dec 2017 01:16:08 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 21 Dec 2017 01:16:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 21 Dec 2017 01:16:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 21 Dec 2017 01:16:24 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 21 Dec 2017 01:16:24 GMT
VOLUME [/data/db /data/configdb]
# Thu, 21 Dec 2017 01:16:24 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 21 Dec 2017 01:16:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 01:16:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 01:16:26 GMT
EXPOSE 27017/tcp
# Thu, 21 Dec 2017 01:16:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b967c325a8b3055106908c059240f7ea99c3b22958080fa3a0c1688e1e6739d1`  
		Last Modified: Tue, 12 Dec 2017 02:00:41 GMT  
		Size: 19.2 MB (19164678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f4b68f5594ff127e3c87e19190ca62d695d260de2c4e1dfbc1a110dab8e2de`  
		Last Modified: Tue, 12 Dec 2017 02:41:17 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24baba5a242ee93e67a0fcfe657c4944872fd9fd2a064328454997b46cdbd62`  
		Last Modified: Tue, 12 Dec 2017 02:41:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af11f2476fef6def7b28fd2c24f84397a099411ed68ad67cf937d5f9b76a82d7`  
		Last Modified: Tue, 12 Dec 2017 02:41:15 GMT  
		Size: 2.7 MB (2660614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff4b2bf33f8e8bc113a559558c7e0fdc1f4e695b2bec89c09ccafc7f1dff9019`  
		Last Modified: Thu, 21 Dec 2017 01:22:01 GMT  
		Size: 810.6 KB (810648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2c0d1d2005390ed504d8dd433b7ce7c2f81d79abbc40e191d8e64e1d2b1729`  
		Last Modified: Thu, 21 Dec 2017 01:22:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2fb164e25f84f88ebd54215876bc44293ae6dfd02646f473f87ea57cbbf853`  
		Last Modified: Thu, 21 Dec 2017 01:22:01 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95455f9a86a6bacac05bdcca3ec35f202e59b2ace6dc2e5c14f3c1e1b154aab4`  
		Last Modified: Thu, 21 Dec 2017 01:21:58 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460daad09d9d797d449205a3892eb7727250f88cb0fd838eb3da4477673c1bfd`  
		Last Modified: Thu, 21 Dec 2017 01:22:13 GMT  
		Size: 61.9 MB (61886207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab0d8c194a10785d610e3bc5a44fc56aebdc1b74d9475c1aed4690a23569518`  
		Last Modified: Thu, 21 Dec 2017 01:21:59 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424da624b820d4a1a38ffb4556bdd657dcea49c09fdfd356aa66b45a1d995b27`  
		Last Modified: Thu, 21 Dec 2017 01:21:59 GMT  
		Size: 3.6 KB (3569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c9ad8e0e7784c98341e142dbd3bf28f8677fbbb98b85dbc7403a25779eb619`  
		Last Modified: Thu, 21 Dec 2017 01:21:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-wheezy`

```console
$ docker pull mongo@sha256:b2534b3119e159ee021c15600e67ad6945fa6eb5bf40e5f20defeae807734d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:77f22f913d8e62559b58437df321f02aabd6beeb863b5292c66c175716846f60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84530333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28cba33aad0327cf5df59ca2cbea98487692775937b9b05d0a7d7780952ba11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:27 GMT
ADD file:664e20ea0b4805f811ed279f86823b281c39df127d0f73ae147468bc1a9e4020 in / 
# Tue, 12 Dec 2017 01:46:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:35:30 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:35:31 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Dec 2017 02:35:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:15:47 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:15:47 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:16:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:16:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:16:05 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Thu, 21 Dec 2017 01:16:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:16:07 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:16:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:16:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:16:07 GMT
ENV MONGO_MAJOR=3.0
# Thu, 21 Dec 2017 01:16:08 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 21 Dec 2017 01:16:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 21 Dec 2017 01:16:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 21 Dec 2017 01:16:24 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 21 Dec 2017 01:16:24 GMT
VOLUME [/data/db /data/configdb]
# Thu, 21 Dec 2017 01:16:24 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 21 Dec 2017 01:16:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 01:16:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 01:16:26 GMT
EXPOSE 27017/tcp
# Thu, 21 Dec 2017 01:16:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b967c325a8b3055106908c059240f7ea99c3b22958080fa3a0c1688e1e6739d1`  
		Last Modified: Tue, 12 Dec 2017 02:00:41 GMT  
		Size: 19.2 MB (19164678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f4b68f5594ff127e3c87e19190ca62d695d260de2c4e1dfbc1a110dab8e2de`  
		Last Modified: Tue, 12 Dec 2017 02:41:17 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24baba5a242ee93e67a0fcfe657c4944872fd9fd2a064328454997b46cdbd62`  
		Last Modified: Tue, 12 Dec 2017 02:41:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af11f2476fef6def7b28fd2c24f84397a099411ed68ad67cf937d5f9b76a82d7`  
		Last Modified: Tue, 12 Dec 2017 02:41:15 GMT  
		Size: 2.7 MB (2660614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff4b2bf33f8e8bc113a559558c7e0fdc1f4e695b2bec89c09ccafc7f1dff9019`  
		Last Modified: Thu, 21 Dec 2017 01:22:01 GMT  
		Size: 810.6 KB (810648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2c0d1d2005390ed504d8dd433b7ce7c2f81d79abbc40e191d8e64e1d2b1729`  
		Last Modified: Thu, 21 Dec 2017 01:22:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2fb164e25f84f88ebd54215876bc44293ae6dfd02646f473f87ea57cbbf853`  
		Last Modified: Thu, 21 Dec 2017 01:22:01 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95455f9a86a6bacac05bdcca3ec35f202e59b2ace6dc2e5c14f3c1e1b154aab4`  
		Last Modified: Thu, 21 Dec 2017 01:21:58 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460daad09d9d797d449205a3892eb7727250f88cb0fd838eb3da4477673c1bfd`  
		Last Modified: Thu, 21 Dec 2017 01:22:13 GMT  
		Size: 61.9 MB (61886207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab0d8c194a10785d610e3bc5a44fc56aebdc1b74d9475c1aed4690a23569518`  
		Last Modified: Thu, 21 Dec 2017 01:21:59 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424da624b820d4a1a38ffb4556bdd657dcea49c09fdfd356aa66b45a1d995b27`  
		Last Modified: Thu, 21 Dec 2017 01:21:59 GMT  
		Size: 3.6 KB (3569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c9ad8e0e7784c98341e142dbd3bf28f8677fbbb98b85dbc7403a25779eb619`  
		Last Modified: Thu, 21 Dec 2017 01:21:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:41e11ac7f6e9bd67098651ca0bd13d41a6951482147c69123f1e0c0e476dc385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

```console
$ docker pull mongo@sha256:bc5d2886e85bb544b3464fd30a691e131a37951fde5a33ec053ec1ee09d522de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104178858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7914781c7bbd91bc087d6c2a717f1f08be8e4f82d180540944a5b4087bdf0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:17:02 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Thu, 21 Dec 2017 01:17:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:17:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:17:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:17:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:17:06 GMT
ENV MONGO_MAJOR=3.2
# Wed, 07 Feb 2018 02:32:00 GMT
ENV MONGO_VERSION=3.2.19
# Wed, 07 Feb 2018 02:32:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 07 Feb 2018 02:32:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 07 Feb 2018 02:32:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 07 Feb 2018 02:32:25 GMT
VOLUME [/data/db /data/configdb]
# Wed, 07 Feb 2018 02:32:25 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 07 Feb 2018 02:32:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Feb 2018 02:32:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Feb 2018 02:32:27 GMT
EXPOSE 27017/tcp
# Wed, 07 Feb 2018 02:32:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc977f80d9b54fb489113d6bca4c2d46cb7ca05350b2aebb5600cfdbbab0fbf2`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 3.6 KB (3597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b79ba5f76f51ae7f6619f6672ff01212259ae319fb54b72bbde4aede8a7bf1`  
		Last Modified: Wed, 07 Feb 2018 02:47:23 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e87711de73782616a128586ce8add670610ade191e5f3fe18b419c3d0393e0`  
		Last Modified: Wed, 07 Feb 2018 02:47:37 GMT  
		Size: 70.8 MB (70840005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9048d4a78c5fb8bfcee7f3dc92b1f83420eeb6156b532926c1d80b812ceea068`  
		Last Modified: Wed, 07 Feb 2018 02:47:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b13f04b66c05e05269f97359159ef65faf5c3f9fb24a500c3d0afe6a3b4e2ac`  
		Last Modified: Wed, 07 Feb 2018 02:47:23 GMT  
		Size: 3.6 KB (3570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e66fa854995c87c4cb1e13e6112003ad5b4490252c46624562653a2674dec6e`  
		Last Modified: Wed, 07 Feb 2018 02:47:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.19`

```console
$ docker pull mongo@sha256:41e11ac7f6e9bd67098651ca0bd13d41a6951482147c69123f1e0c0e476dc385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.19` - linux; amd64

```console
$ docker pull mongo@sha256:bc5d2886e85bb544b3464fd30a691e131a37951fde5a33ec053ec1ee09d522de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104178858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7914781c7bbd91bc087d6c2a717f1f08be8e4f82d180540944a5b4087bdf0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:17:02 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Thu, 21 Dec 2017 01:17:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:17:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:17:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:17:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:17:06 GMT
ENV MONGO_MAJOR=3.2
# Wed, 07 Feb 2018 02:32:00 GMT
ENV MONGO_VERSION=3.2.19
# Wed, 07 Feb 2018 02:32:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 07 Feb 2018 02:32:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 07 Feb 2018 02:32:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 07 Feb 2018 02:32:25 GMT
VOLUME [/data/db /data/configdb]
# Wed, 07 Feb 2018 02:32:25 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 07 Feb 2018 02:32:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Feb 2018 02:32:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Feb 2018 02:32:27 GMT
EXPOSE 27017/tcp
# Wed, 07 Feb 2018 02:32:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc977f80d9b54fb489113d6bca4c2d46cb7ca05350b2aebb5600cfdbbab0fbf2`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 3.6 KB (3597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b79ba5f76f51ae7f6619f6672ff01212259ae319fb54b72bbde4aede8a7bf1`  
		Last Modified: Wed, 07 Feb 2018 02:47:23 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e87711de73782616a128586ce8add670610ade191e5f3fe18b419c3d0393e0`  
		Last Modified: Wed, 07 Feb 2018 02:47:37 GMT  
		Size: 70.8 MB (70840005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9048d4a78c5fb8bfcee7f3dc92b1f83420eeb6156b532926c1d80b812ceea068`  
		Last Modified: Wed, 07 Feb 2018 02:47:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b13f04b66c05e05269f97359159ef65faf5c3f9fb24a500c3d0afe6a3b4e2ac`  
		Last Modified: Wed, 07 Feb 2018 02:47:23 GMT  
		Size: 3.6 KB (3570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e66fa854995c87c4cb1e13e6112003ad5b4490252c46624562653a2674dec6e`  
		Last Modified: Wed, 07 Feb 2018 02:47:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.19-jessie`

```console
$ docker pull mongo@sha256:41e11ac7f6e9bd67098651ca0bd13d41a6951482147c69123f1e0c0e476dc385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.19-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:bc5d2886e85bb544b3464fd30a691e131a37951fde5a33ec053ec1ee09d522de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104178858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7914781c7bbd91bc087d6c2a717f1f08be8e4f82d180540944a5b4087bdf0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:17:02 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Thu, 21 Dec 2017 01:17:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:17:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:17:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:17:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:17:06 GMT
ENV MONGO_MAJOR=3.2
# Wed, 07 Feb 2018 02:32:00 GMT
ENV MONGO_VERSION=3.2.19
# Wed, 07 Feb 2018 02:32:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 07 Feb 2018 02:32:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 07 Feb 2018 02:32:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 07 Feb 2018 02:32:25 GMT
VOLUME [/data/db /data/configdb]
# Wed, 07 Feb 2018 02:32:25 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 07 Feb 2018 02:32:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Feb 2018 02:32:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Feb 2018 02:32:27 GMT
EXPOSE 27017/tcp
# Wed, 07 Feb 2018 02:32:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc977f80d9b54fb489113d6bca4c2d46cb7ca05350b2aebb5600cfdbbab0fbf2`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 3.6 KB (3597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b79ba5f76f51ae7f6619f6672ff01212259ae319fb54b72bbde4aede8a7bf1`  
		Last Modified: Wed, 07 Feb 2018 02:47:23 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e87711de73782616a128586ce8add670610ade191e5f3fe18b419c3d0393e0`  
		Last Modified: Wed, 07 Feb 2018 02:47:37 GMT  
		Size: 70.8 MB (70840005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9048d4a78c5fb8bfcee7f3dc92b1f83420eeb6156b532926c1d80b812ceea068`  
		Last Modified: Wed, 07 Feb 2018 02:47:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b13f04b66c05e05269f97359159ef65faf5c3f9fb24a500c3d0afe6a3b4e2ac`  
		Last Modified: Wed, 07 Feb 2018 02:47:23 GMT  
		Size: 3.6 KB (3570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e66fa854995c87c4cb1e13e6112003ad5b4490252c46624562653a2674dec6e`  
		Last Modified: Wed, 07 Feb 2018 02:47:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-jessie`

```console
$ docker pull mongo@sha256:41e11ac7f6e9bd67098651ca0bd13d41a6951482147c69123f1e0c0e476dc385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:bc5d2886e85bb544b3464fd30a691e131a37951fde5a33ec053ec1ee09d522de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104178858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7914781c7bbd91bc087d6c2a717f1f08be8e4f82d180540944a5b4087bdf0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:17:02 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Thu, 21 Dec 2017 01:17:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:17:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:17:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:17:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:17:06 GMT
ENV MONGO_MAJOR=3.2
# Wed, 07 Feb 2018 02:32:00 GMT
ENV MONGO_VERSION=3.2.19
# Wed, 07 Feb 2018 02:32:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 07 Feb 2018 02:32:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 07 Feb 2018 02:32:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 07 Feb 2018 02:32:25 GMT
VOLUME [/data/db /data/configdb]
# Wed, 07 Feb 2018 02:32:25 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 07 Feb 2018 02:32:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 07 Feb 2018 02:32:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Feb 2018 02:32:27 GMT
EXPOSE 27017/tcp
# Wed, 07 Feb 2018 02:32:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc977f80d9b54fb489113d6bca4c2d46cb7ca05350b2aebb5600cfdbbab0fbf2`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 3.6 KB (3597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b79ba5f76f51ae7f6619f6672ff01212259ae319fb54b72bbde4aede8a7bf1`  
		Last Modified: Wed, 07 Feb 2018 02:47:23 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e87711de73782616a128586ce8add670610ade191e5f3fe18b419c3d0393e0`  
		Last Modified: Wed, 07 Feb 2018 02:47:37 GMT  
		Size: 70.8 MB (70840005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9048d4a78c5fb8bfcee7f3dc92b1f83420eeb6156b532926c1d80b812ceea068`  
		Last Modified: Wed, 07 Feb 2018 02:47:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b13f04b66c05e05269f97359159ef65faf5c3f9fb24a500c3d0afe6a3b4e2ac`  
		Last Modified: Wed, 07 Feb 2018 02:47:23 GMT  
		Size: 3.6 KB (3570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e66fa854995c87c4cb1e13e6112003ad5b4490252c46624562653a2674dec6e`  
		Last Modified: Wed, 07 Feb 2018 02:47:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:87abfb5956713ac29a969b7514d194c063c9a08208a06d4fb681ff125f3492b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:6f02ab1594cbbae9e98f96848f55dc9ca7520210bfe4a0cb2defd04a9d4465a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131983254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d958de24bd9317d9985bd30cd4b5a450923c49d1939a322853371830db68833`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:19:41 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 02 Feb 2018 23:27:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 02 Feb 2018 23:27:37 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 02 Feb 2018 23:27:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 02 Feb 2018 23:27:38 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 02 Feb 2018 23:27:38 GMT
ENV MONGO_MAJOR=3.4
# Fri, 02 Feb 2018 23:27:38 GMT
ENV MONGO_VERSION=3.4.11
# Fri, 02 Feb 2018 23:27:39 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 02 Feb 2018 23:27:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 02 Feb 2018 23:27:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 02 Feb 2018 23:27:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 02 Feb 2018 23:27:59 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Fri, 02 Feb 2018 23:28:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 02 Feb 2018 23:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Feb 2018 23:28:00 GMT
EXPOSE 27017/tcp
# Fri, 02 Feb 2018 23:28:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda3039019aef245727e70d5cf39b96d30bf998b0bdbac2df3d5978bcaafb439`  
		Last Modified: Fri, 02 Feb 2018 23:28:47 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c68d67baa5c89be85fb2b3b620832ace8dbe08bc592a9747ba23a4fbb0b48c4`  
		Last Modified: Fri, 02 Feb 2018 23:28:43 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c134a04085ab60ba8e63e12ee0b81cddab21cca395c9ce5c3c51c27485117a`  
		Last Modified: Fri, 02 Feb 2018 23:28:59 GMT  
		Size: 98.6 MB (98646003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b456132c3a5ff4162cd085ba4a570b18298524dbf4f34287421adf8b0deb59a2`  
		Last Modified: Fri, 02 Feb 2018 23:28:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a275ac5c576db1849a4dd7c1269f24711d59d7cbecc4526b552714d66495dea0`  
		Last Modified: Fri, 02 Feb 2018 23:28:44 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f4c3ab847ab1d90bc001e4a965a5f31e803439d34b0392b4af0c6f71e256cb`  
		Last Modified: Fri, 02 Feb 2018 23:28:44 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.12`

**does not exist** (yet?)

## `mongo:3.4.12-jessie`

**does not exist** (yet?)

## `mongo:3.4-jessie`

```console
$ docker pull mongo@sha256:87abfb5956713ac29a969b7514d194c063c9a08208a06d4fb681ff125f3492b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:6f02ab1594cbbae9e98f96848f55dc9ca7520210bfe4a0cb2defd04a9d4465a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131983254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d958de24bd9317d9985bd30cd4b5a450923c49d1939a322853371830db68833`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:19:41 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 02 Feb 2018 23:27:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 02 Feb 2018 23:27:37 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 02 Feb 2018 23:27:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 02 Feb 2018 23:27:38 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 02 Feb 2018 23:27:38 GMT
ENV MONGO_MAJOR=3.4
# Fri, 02 Feb 2018 23:27:38 GMT
ENV MONGO_VERSION=3.4.11
# Fri, 02 Feb 2018 23:27:39 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 02 Feb 2018 23:27:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 02 Feb 2018 23:27:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 02 Feb 2018 23:27:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 02 Feb 2018 23:27:59 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Fri, 02 Feb 2018 23:28:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 02 Feb 2018 23:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Feb 2018 23:28:00 GMT
EXPOSE 27017/tcp
# Fri, 02 Feb 2018 23:28:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda3039019aef245727e70d5cf39b96d30bf998b0bdbac2df3d5978bcaafb439`  
		Last Modified: Fri, 02 Feb 2018 23:28:47 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c68d67baa5c89be85fb2b3b620832ace8dbe08bc592a9747ba23a4fbb0b48c4`  
		Last Modified: Fri, 02 Feb 2018 23:28:43 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c134a04085ab60ba8e63e12ee0b81cddab21cca395c9ce5c3c51c27485117a`  
		Last Modified: Fri, 02 Feb 2018 23:28:59 GMT  
		Size: 98.6 MB (98646003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b456132c3a5ff4162cd085ba4a570b18298524dbf4f34287421adf8b0deb59a2`  
		Last Modified: Fri, 02 Feb 2018 23:28:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a275ac5c576db1849a4dd7c1269f24711d59d7cbecc4526b552714d66495dea0`  
		Last Modified: Fri, 02 Feb 2018 23:28:44 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f4c3ab847ab1d90bc001e4a965a5f31e803439d34b0392b4af0c6f71e256cb`  
		Last Modified: Fri, 02 Feb 2018 23:28:44 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6`

```console
$ docker pull mongo@sha256:878b76e5834f37da98096296f4147f6ca4d94b1a9187986e9d6e59756e7ce865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6` - linux; amd64

```console
$ docker pull mongo@sha256:8bb68343e860575cfe3e82c98f5f5baad3ab8a67f54062d3476f2276b576abb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130406419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f57644645eb53a3d2256f460ade116ad3590252c28f63e5136c026423dc8286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:21:07 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 21 Dec 2017 01:21:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:21:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:21:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_MAJOR=3.6
# Mon, 15 Jan 2018 23:15:02 GMT
ENV MONGO_VERSION=3.6.2
# Mon, 15 Jan 2018 23:15:03 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 15 Jan 2018 23:15:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 15 Jan 2018 23:15:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 15 Jan 2018 23:15:25 GMT
VOLUME [/data/db /data/configdb]
# Mon, 15 Jan 2018 23:15:25 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 15 Jan 2018 23:15:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 Jan 2018 23:15:26 GMT
EXPOSE 27017/tcp
# Mon, 15 Jan 2018 23:15:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6c28c0235b619029c8b8c9d512f97756a986bfa458e64b5aa45784af894ac3`  
		Last Modified: Thu, 21 Dec 2017 01:24:43 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688308f715efc799218462de2504d5ea35be542dfc7bb1dbcbf9298f4c055d`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c56202c1a956ce919db56d3e09890a3df459cefab949e517810b84e6c2378`  
		Last Modified: Mon, 15 Jan 2018 23:26:02 GMT  
		Size: 97.1 MB (97069699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd9b5a8a42871d8a15d6dd892cb7947fa345445ded44f610117ec4cbbe7bf81`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf24480e18299ebb064cdaa4947195f9996a9b443f3c44dcc9cc1dbe668b82e`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.2`

```console
$ docker pull mongo@sha256:878b76e5834f37da98096296f4147f6ca4d94b1a9187986e9d6e59756e7ce865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.2` - linux; amd64

```console
$ docker pull mongo@sha256:8bb68343e860575cfe3e82c98f5f5baad3ab8a67f54062d3476f2276b576abb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130406419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f57644645eb53a3d2256f460ade116ad3590252c28f63e5136c026423dc8286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:21:07 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 21 Dec 2017 01:21:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:21:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:21:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_MAJOR=3.6
# Mon, 15 Jan 2018 23:15:02 GMT
ENV MONGO_VERSION=3.6.2
# Mon, 15 Jan 2018 23:15:03 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 15 Jan 2018 23:15:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 15 Jan 2018 23:15:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 15 Jan 2018 23:15:25 GMT
VOLUME [/data/db /data/configdb]
# Mon, 15 Jan 2018 23:15:25 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 15 Jan 2018 23:15:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 Jan 2018 23:15:26 GMT
EXPOSE 27017/tcp
# Mon, 15 Jan 2018 23:15:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6c28c0235b619029c8b8c9d512f97756a986bfa458e64b5aa45784af894ac3`  
		Last Modified: Thu, 21 Dec 2017 01:24:43 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688308f715efc799218462de2504d5ea35be542dfc7bb1dbcbf9298f4c055d`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c56202c1a956ce919db56d3e09890a3df459cefab949e517810b84e6c2378`  
		Last Modified: Mon, 15 Jan 2018 23:26:02 GMT  
		Size: 97.1 MB (97069699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd9b5a8a42871d8a15d6dd892cb7947fa345445ded44f610117ec4cbbe7bf81`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf24480e18299ebb064cdaa4947195f9996a9b443f3c44dcc9cc1dbe668b82e`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.2-jessie`

```console
$ docker pull mongo@sha256:878b76e5834f37da98096296f4147f6ca4d94b1a9187986e9d6e59756e7ce865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:8bb68343e860575cfe3e82c98f5f5baad3ab8a67f54062d3476f2276b576abb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130406419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f57644645eb53a3d2256f460ade116ad3590252c28f63e5136c026423dc8286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:21:07 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 21 Dec 2017 01:21:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:21:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:21:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_MAJOR=3.6
# Mon, 15 Jan 2018 23:15:02 GMT
ENV MONGO_VERSION=3.6.2
# Mon, 15 Jan 2018 23:15:03 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 15 Jan 2018 23:15:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 15 Jan 2018 23:15:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 15 Jan 2018 23:15:25 GMT
VOLUME [/data/db /data/configdb]
# Mon, 15 Jan 2018 23:15:25 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 15 Jan 2018 23:15:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 Jan 2018 23:15:26 GMT
EXPOSE 27017/tcp
# Mon, 15 Jan 2018 23:15:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6c28c0235b619029c8b8c9d512f97756a986bfa458e64b5aa45784af894ac3`  
		Last Modified: Thu, 21 Dec 2017 01:24:43 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688308f715efc799218462de2504d5ea35be542dfc7bb1dbcbf9298f4c055d`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c56202c1a956ce919db56d3e09890a3df459cefab949e517810b84e6c2378`  
		Last Modified: Mon, 15 Jan 2018 23:26:02 GMT  
		Size: 97.1 MB (97069699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd9b5a8a42871d8a15d6dd892cb7947fa345445ded44f610117ec4cbbe7bf81`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf24480e18299ebb064cdaa4947195f9996a9b443f3c44dcc9cc1dbe668b82e`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-jessie`

```console
$ docker pull mongo@sha256:878b76e5834f37da98096296f4147f6ca4d94b1a9187986e9d6e59756e7ce865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:8bb68343e860575cfe3e82c98f5f5baad3ab8a67f54062d3476f2276b576abb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130406419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f57644645eb53a3d2256f460ade116ad3590252c28f63e5136c026423dc8286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:21:07 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 21 Dec 2017 01:21:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:21:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:21:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_MAJOR=3.6
# Mon, 15 Jan 2018 23:15:02 GMT
ENV MONGO_VERSION=3.6.2
# Mon, 15 Jan 2018 23:15:03 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 15 Jan 2018 23:15:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 15 Jan 2018 23:15:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 15 Jan 2018 23:15:25 GMT
VOLUME [/data/db /data/configdb]
# Mon, 15 Jan 2018 23:15:25 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 15 Jan 2018 23:15:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 Jan 2018 23:15:26 GMT
EXPOSE 27017/tcp
# Mon, 15 Jan 2018 23:15:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6c28c0235b619029c8b8c9d512f97756a986bfa458e64b5aa45784af894ac3`  
		Last Modified: Thu, 21 Dec 2017 01:24:43 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688308f715efc799218462de2504d5ea35be542dfc7bb1dbcbf9298f4c055d`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c56202c1a956ce919db56d3e09890a3df459cefab949e517810b84e6c2378`  
		Last Modified: Mon, 15 Jan 2018 23:26:02 GMT  
		Size: 97.1 MB (97069699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd9b5a8a42871d8a15d6dd892cb7947fa345445ded44f610117ec4cbbe7bf81`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf24480e18299ebb064cdaa4947195f9996a9b443f3c44dcc9cc1dbe668b82e`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7`

```console
$ docker pull mongo@sha256:3fec5f6e91a23bd5a438fdce9de99b1e17f2372f99268294b051019daa59a5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7` - linux; amd64

```console
$ docker pull mongo@sha256:d8d5850b183a280ba3f810effa400063a48f1acd71dc31b1d79c311dcc58721d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130395752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b616bd2250f66a81afb4fc67839685c3493bc9348d720e2a3596c6312a27a2de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 17 Jan 2018 18:15:46 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 17 Jan 2018 18:15:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 17 Jan 2018 18:15:51 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 17 Jan 2018 18:15:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 17 Jan 2018 18:15:51 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 17 Jan 2018 18:15:51 GMT
ENV MONGO_MAJOR=3.7
# Wed, 17 Jan 2018 18:15:52 GMT
ENV MONGO_VERSION=3.7.1
# Wed, 17 Jan 2018 18:15:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 17 Jan 2018 18:16:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 17 Jan 2018 18:16:12 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 17 Jan 2018 18:16:12 GMT
VOLUME [/data/db /data/configdb]
# Wed, 17 Jan 2018 18:16:12 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 17 Jan 2018 18:16:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Jan 2018 18:16:13 GMT
EXPOSE 27017/tcp
# Wed, 17 Jan 2018 18:16:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43077dfd3530b92b029f94d3396d3957d873d0856b3d1c7dbbac30bfc376f77a`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76a2d037a9d6d16450c77e225c04b8c7141cbd61264abd692def207616c4d39`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6e30e505796afd3bf3154ea36aa105c577f7cd0c5c1893f7067dc2c466105b`  
		Last Modified: Wed, 17 Jan 2018 18:16:54 GMT  
		Size: 97.1 MB (97059039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43de95800fae416e4fd2fafb7e85a99af691510518b116c17548f9c9a703f26f`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c812544e6864c9c703a5f36e5829a0e76ef8c1d501f0f5cb97f82b75012b17f`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.1`

```console
$ docker pull mongo@sha256:3fec5f6e91a23bd5a438fdce9de99b1e17f2372f99268294b051019daa59a5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7.1` - linux; amd64

```console
$ docker pull mongo@sha256:d8d5850b183a280ba3f810effa400063a48f1acd71dc31b1d79c311dcc58721d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130395752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b616bd2250f66a81afb4fc67839685c3493bc9348d720e2a3596c6312a27a2de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 17 Jan 2018 18:15:46 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 17 Jan 2018 18:15:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 17 Jan 2018 18:15:51 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 17 Jan 2018 18:15:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 17 Jan 2018 18:15:51 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 17 Jan 2018 18:15:51 GMT
ENV MONGO_MAJOR=3.7
# Wed, 17 Jan 2018 18:15:52 GMT
ENV MONGO_VERSION=3.7.1
# Wed, 17 Jan 2018 18:15:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 17 Jan 2018 18:16:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 17 Jan 2018 18:16:12 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 17 Jan 2018 18:16:12 GMT
VOLUME [/data/db /data/configdb]
# Wed, 17 Jan 2018 18:16:12 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 17 Jan 2018 18:16:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Jan 2018 18:16:13 GMT
EXPOSE 27017/tcp
# Wed, 17 Jan 2018 18:16:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43077dfd3530b92b029f94d3396d3957d873d0856b3d1c7dbbac30bfc376f77a`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76a2d037a9d6d16450c77e225c04b8c7141cbd61264abd692def207616c4d39`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6e30e505796afd3bf3154ea36aa105c577f7cd0c5c1893f7067dc2c466105b`  
		Last Modified: Wed, 17 Jan 2018 18:16:54 GMT  
		Size: 97.1 MB (97059039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43de95800fae416e4fd2fafb7e85a99af691510518b116c17548f9c9a703f26f`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c812544e6864c9c703a5f36e5829a0e76ef8c1d501f0f5cb97f82b75012b17f`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.1-jessie`

```console
$ docker pull mongo@sha256:3fec5f6e91a23bd5a438fdce9de99b1e17f2372f99268294b051019daa59a5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7.1-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:d8d5850b183a280ba3f810effa400063a48f1acd71dc31b1d79c311dcc58721d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130395752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b616bd2250f66a81afb4fc67839685c3493bc9348d720e2a3596c6312a27a2de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 17 Jan 2018 18:15:46 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 17 Jan 2018 18:15:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 17 Jan 2018 18:15:51 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 17 Jan 2018 18:15:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 17 Jan 2018 18:15:51 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 17 Jan 2018 18:15:51 GMT
ENV MONGO_MAJOR=3.7
# Wed, 17 Jan 2018 18:15:52 GMT
ENV MONGO_VERSION=3.7.1
# Wed, 17 Jan 2018 18:15:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 17 Jan 2018 18:16:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 17 Jan 2018 18:16:12 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 17 Jan 2018 18:16:12 GMT
VOLUME [/data/db /data/configdb]
# Wed, 17 Jan 2018 18:16:12 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 17 Jan 2018 18:16:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Jan 2018 18:16:13 GMT
EXPOSE 27017/tcp
# Wed, 17 Jan 2018 18:16:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43077dfd3530b92b029f94d3396d3957d873d0856b3d1c7dbbac30bfc376f77a`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76a2d037a9d6d16450c77e225c04b8c7141cbd61264abd692def207616c4d39`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6e30e505796afd3bf3154ea36aa105c577f7cd0c5c1893f7067dc2c466105b`  
		Last Modified: Wed, 17 Jan 2018 18:16:54 GMT  
		Size: 97.1 MB (97059039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43de95800fae416e4fd2fafb7e85a99af691510518b116c17548f9c9a703f26f`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c812544e6864c9c703a5f36e5829a0e76ef8c1d501f0f5cb97f82b75012b17f`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7-jessie`

```console
$ docker pull mongo@sha256:3fec5f6e91a23bd5a438fdce9de99b1e17f2372f99268294b051019daa59a5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:d8d5850b183a280ba3f810effa400063a48f1acd71dc31b1d79c311dcc58721d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130395752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b616bd2250f66a81afb4fc67839685c3493bc9348d720e2a3596c6312a27a2de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 17 Jan 2018 18:15:46 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 17 Jan 2018 18:15:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 17 Jan 2018 18:15:51 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 17 Jan 2018 18:15:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 17 Jan 2018 18:15:51 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 17 Jan 2018 18:15:51 GMT
ENV MONGO_MAJOR=3.7
# Wed, 17 Jan 2018 18:15:52 GMT
ENV MONGO_VERSION=3.7.1
# Wed, 17 Jan 2018 18:15:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 17 Jan 2018 18:16:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 17 Jan 2018 18:16:12 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 17 Jan 2018 18:16:12 GMT
VOLUME [/data/db /data/configdb]
# Wed, 17 Jan 2018 18:16:12 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 17 Jan 2018 18:16:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Jan 2018 18:16:13 GMT
EXPOSE 27017/tcp
# Wed, 17 Jan 2018 18:16:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43077dfd3530b92b029f94d3396d3957d873d0856b3d1c7dbbac30bfc376f77a`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76a2d037a9d6d16450c77e225c04b8c7141cbd61264abd692def207616c4d39`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6e30e505796afd3bf3154ea36aa105c577f7cd0c5c1893f7067dc2c466105b`  
		Last Modified: Wed, 17 Jan 2018 18:16:54 GMT  
		Size: 97.1 MB (97059039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43de95800fae416e4fd2fafb7e85a99af691510518b116c17548f9c9a703f26f`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c812544e6864c9c703a5f36e5829a0e76ef8c1d501f0f5cb97f82b75012b17f`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:878b76e5834f37da98096296f4147f6ca4d94b1a9187986e9d6e59756e7ce865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:8bb68343e860575cfe3e82c98f5f5baad3ab8a67f54062d3476f2276b576abb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130406419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f57644645eb53a3d2256f460ade116ad3590252c28f63e5136c026423dc8286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:21:07 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 21 Dec 2017 01:21:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:21:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:21:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_MAJOR=3.6
# Mon, 15 Jan 2018 23:15:02 GMT
ENV MONGO_VERSION=3.6.2
# Mon, 15 Jan 2018 23:15:03 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 15 Jan 2018 23:15:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 15 Jan 2018 23:15:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 15 Jan 2018 23:15:25 GMT
VOLUME [/data/db /data/configdb]
# Mon, 15 Jan 2018 23:15:25 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 15 Jan 2018 23:15:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 Jan 2018 23:15:26 GMT
EXPOSE 27017/tcp
# Mon, 15 Jan 2018 23:15:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6c28c0235b619029c8b8c9d512f97756a986bfa458e64b5aa45784af894ac3`  
		Last Modified: Thu, 21 Dec 2017 01:24:43 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688308f715efc799218462de2504d5ea35be542dfc7bb1dbcbf9298f4c055d`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c56202c1a956ce919db56d3e09890a3df459cefab949e517810b84e6c2378`  
		Last Modified: Mon, 15 Jan 2018 23:26:02 GMT  
		Size: 97.1 MB (97069699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd9b5a8a42871d8a15d6dd892cb7947fa345445ded44f610117ec4cbbe7bf81`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf24480e18299ebb064cdaa4947195f9996a9b443f3c44dcc9cc1dbe668b82e`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:jessie`

```console
$ docker pull mongo@sha256:878b76e5834f37da98096296f4147f6ca4d94b1a9187986e9d6e59756e7ce865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:8bb68343e860575cfe3e82c98f5f5baad3ab8a67f54062d3476f2276b576abb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130406419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f57644645eb53a3d2256f460ade116ad3590252c28f63e5136c026423dc8286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:21:07 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 21 Dec 2017 01:21:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:21:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:21:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_MAJOR=3.6
# Mon, 15 Jan 2018 23:15:02 GMT
ENV MONGO_VERSION=3.6.2
# Mon, 15 Jan 2018 23:15:03 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 15 Jan 2018 23:15:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 15 Jan 2018 23:15:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 15 Jan 2018 23:15:25 GMT
VOLUME [/data/db /data/configdb]
# Mon, 15 Jan 2018 23:15:25 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 15 Jan 2018 23:15:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 Jan 2018 23:15:26 GMT
EXPOSE 27017/tcp
# Mon, 15 Jan 2018 23:15:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6c28c0235b619029c8b8c9d512f97756a986bfa458e64b5aa45784af894ac3`  
		Last Modified: Thu, 21 Dec 2017 01:24:43 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688308f715efc799218462de2504d5ea35be542dfc7bb1dbcbf9298f4c055d`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c56202c1a956ce919db56d3e09890a3df459cefab949e517810b84e6c2378`  
		Last Modified: Mon, 15 Jan 2018 23:26:02 GMT  
		Size: 97.1 MB (97069699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd9b5a8a42871d8a15d6dd892cb7947fa345445ded44f610117ec4cbbe7bf81`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf24480e18299ebb064cdaa4947195f9996a9b443f3c44dcc9cc1dbe668b82e`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:878b76e5834f37da98096296f4147f6ca4d94b1a9187986e9d6e59756e7ce865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:8bb68343e860575cfe3e82c98f5f5baad3ab8a67f54062d3476f2276b576abb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130406419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f57644645eb53a3d2256f460ade116ad3590252c28f63e5136c026423dc8286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:21:07 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 21 Dec 2017 01:21:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:21:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:21:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_MAJOR=3.6
# Mon, 15 Jan 2018 23:15:02 GMT
ENV MONGO_VERSION=3.6.2
# Mon, 15 Jan 2018 23:15:03 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 15 Jan 2018 23:15:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 15 Jan 2018 23:15:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 15 Jan 2018 23:15:25 GMT
VOLUME [/data/db /data/configdb]
# Mon, 15 Jan 2018 23:15:25 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 15 Jan 2018 23:15:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 Jan 2018 23:15:26 GMT
EXPOSE 27017/tcp
# Mon, 15 Jan 2018 23:15:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6c28c0235b619029c8b8c9d512f97756a986bfa458e64b5aa45784af894ac3`  
		Last Modified: Thu, 21 Dec 2017 01:24:43 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688308f715efc799218462de2504d5ea35be542dfc7bb1dbcbf9298f4c055d`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c56202c1a956ce919db56d3e09890a3df459cefab949e517810b84e6c2378`  
		Last Modified: Mon, 15 Jan 2018 23:26:02 GMT  
		Size: 97.1 MB (97069699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd9b5a8a42871d8a15d6dd892cb7947fa345445ded44f610117ec4cbbe7bf81`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf24480e18299ebb064cdaa4947195f9996a9b443f3c44dcc9cc1dbe668b82e`  
		Last Modified: Mon, 15 Jan 2018 23:25:37 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:3fec5f6e91a23bd5a438fdce9de99b1e17f2372f99268294b051019daa59a5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:d8d5850b183a280ba3f810effa400063a48f1acd71dc31b1d79c311dcc58721d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130395752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b616bd2250f66a81afb4fc67839685c3493bc9348d720e2a3596c6312a27a2de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 17 Jan 2018 18:15:46 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 17 Jan 2018 18:15:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 17 Jan 2018 18:15:51 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 17 Jan 2018 18:15:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 17 Jan 2018 18:15:51 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 17 Jan 2018 18:15:51 GMT
ENV MONGO_MAJOR=3.7
# Wed, 17 Jan 2018 18:15:52 GMT
ENV MONGO_VERSION=3.7.1
# Wed, 17 Jan 2018 18:15:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 17 Jan 2018 18:16:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 17 Jan 2018 18:16:12 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 17 Jan 2018 18:16:12 GMT
VOLUME [/data/db /data/configdb]
# Wed, 17 Jan 2018 18:16:12 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 17 Jan 2018 18:16:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Jan 2018 18:16:13 GMT
EXPOSE 27017/tcp
# Wed, 17 Jan 2018 18:16:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43077dfd3530b92b029f94d3396d3957d873d0856b3d1c7dbbac30bfc376f77a`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76a2d037a9d6d16450c77e225c04b8c7141cbd61264abd692def207616c4d39`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6e30e505796afd3bf3154ea36aa105c577f7cd0c5c1893f7067dc2c466105b`  
		Last Modified: Wed, 17 Jan 2018 18:16:54 GMT  
		Size: 97.1 MB (97059039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43de95800fae416e4fd2fafb7e85a99af691510518b116c17548f9c9a703f26f`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c812544e6864c9c703a5f36e5829a0e76ef8c1d501f0f5cb97f82b75012b17f`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-jessie`

```console
$ docker pull mongo@sha256:3fec5f6e91a23bd5a438fdce9de99b1e17f2372f99268294b051019daa59a5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:d8d5850b183a280ba3f810effa400063a48f1acd71dc31b1d79c311dcc58721d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130395752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b616bd2250f66a81afb4fc67839685c3493bc9348d720e2a3596c6312a27a2de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 17 Jan 2018 18:15:46 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 17 Jan 2018 18:15:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 17 Jan 2018 18:15:51 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 17 Jan 2018 18:15:51 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 17 Jan 2018 18:15:51 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 17 Jan 2018 18:15:51 GMT
ENV MONGO_MAJOR=3.7
# Wed, 17 Jan 2018 18:15:52 GMT
ENV MONGO_VERSION=3.7.1
# Wed, 17 Jan 2018 18:15:52 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 17 Jan 2018 18:16:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 17 Jan 2018 18:16:12 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 17 Jan 2018 18:16:12 GMT
VOLUME [/data/db /data/configdb]
# Wed, 17 Jan 2018 18:16:12 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 17 Jan 2018 18:16:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Jan 2018 18:16:13 GMT
EXPOSE 27017/tcp
# Wed, 17 Jan 2018 18:16:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43077dfd3530b92b029f94d3396d3957d873d0856b3d1c7dbbac30bfc376f77a`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76a2d037a9d6d16450c77e225c04b8c7141cbd61264abd692def207616c4d39`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6e30e505796afd3bf3154ea36aa105c577f7cd0c5c1893f7067dc2c466105b`  
		Last Modified: Wed, 17 Jan 2018 18:16:54 GMT  
		Size: 97.1 MB (97059039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43de95800fae416e4fd2fafb7e85a99af691510518b116c17548f9c9a703f26f`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c812544e6864c9c703a5f36e5829a0e76ef8c1d501f0f5cb97f82b75012b17f`  
		Last Modified: Wed, 17 Jan 2018 18:16:39 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
