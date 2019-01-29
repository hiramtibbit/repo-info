## `znc:latest`

```console
$ docker pull znc@sha256:38e65a39d787caabff11ae162adb8d3a8394d116235b700eee78d937738a3b46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:d03087b72587d6bc485e0222971191a7f8c338342b5bfa5bcab3f299ffcb0018
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122542102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40ef6371f6446f4ed4f65a90ce3091fec7dfcc8447d9d5d5c291ff8358274fc`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:53:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 21 Dec 2018 00:53:52 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 21 Dec 2018 00:53:52 GMT
ARG MAKEFLAGS=
# Mon, 28 Jan 2019 23:31:22 GMT
ENV ZNC_VERSION=1.7.2
# Mon, 28 Jan 2019 23:37:35 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 28 Jan 2019 23:37:35 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 28 Jan 2019 23:37:35 GMT
COPY file:dfda6761eff5635f2f7a6c1d540b2b14ea67514867578d12226629a780844185 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:809dccdc6a2a9f5e2a058644d9f71b2f167ab0f237913902896fef13b6315814 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:5e0f569cb97b27c9961c87a9748eb2e2fb3f63b5d43ad5d7079dc7fb8c9ff62f in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:f4f3dd4e08ff4e970f8bceb98bad9970e3424c0b6215921b3e67dd3c3dbd2085 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
VOLUME [/znc-data]
# Mon, 28 Jan 2019 23:37:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Jan 2019 23:38:02 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Mon, 28 Jan 2019 23:38:03 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230a8b93b537384b3a359b07da9ef6f27cbabee5bb922c10921b5e857c3954ad`  
		Last Modified: Mon, 28 Jan 2019 23:38:18 GMT  
		Size: 28.7 MB (28676591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02a4eec18db79942c13224766cfef2ea8f6e3154a11e0d728aff8da7b1884fe`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1685205049d1d594870b51962fa25026bfef4db58550963e8816a32aedbfe`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780c4bdcf740df3573f45db5a0f8f167a2627b9fdd0b32160bf49b6863accee2`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b77686a2d005da0e178dd8edbdbb2f13834fd273d1f9945488fae7b57adde3`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781b52f3e98199cff0bfe0caed960415a7d9ffe4c1ff9f0953b69a936ba09eb4`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a17b2eb8bba204594e174481cae607be25ecd47052e886d9466cec4fe9fc99a`  
		Last Modified: Mon, 28 Jan 2019 23:38:44 GMT  
		Size: 91.7 MB (91656841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4badf9d1693b3253108965044b07b026c3fefa1ff6c8ec55323750b993ef89fa`  
		Last Modified: Mon, 28 Jan 2019 23:38:24 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:latest` - linux; arm variant v6

```console
$ docker pull znc@sha256:86dac12149febe0bf44b7c903aada7497348bffbb120da42c525463a76f7da13
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.9 MB (109853977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af932884133c12f834f4f91bcf9e71c193f07e4f83f35848bd05a4dce1da4686`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:42:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 21 Dec 2018 09:42:57 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 21 Dec 2018 09:42:57 GMT
ARG MAKEFLAGS=
# Tue, 29 Jan 2019 08:52:24 GMT
ENV ZNC_VERSION=1.7.2
# Tue, 29 Jan 2019 09:00:11 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 29 Jan 2019 09:00:12 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Tue, 29 Jan 2019 09:00:12 GMT
COPY file:dfda6761eff5635f2f7a6c1d540b2b14ea67514867578d12226629a780844185 in /startup-sequence/ 
# Tue, 29 Jan 2019 09:00:13 GMT
COPY file:809dccdc6a2a9f5e2a058644d9f71b2f167ab0f237913902896fef13b6315814 in /startup-sequence/ 
# Tue, 29 Jan 2019 09:00:13 GMT
COPY file:5e0f569cb97b27c9961c87a9748eb2e2fb3f63b5d43ad5d7079dc7fb8c9ff62f in /startup-sequence/ 
# Tue, 29 Jan 2019 09:00:13 GMT
COPY file:f4f3dd4e08ff4e970f8bceb98bad9970e3424c0b6215921b3e67dd3c3dbd2085 in /startup-sequence/ 
# Tue, 29 Jan 2019 09:00:14 GMT
VOLUME [/znc-data]
# Tue, 29 Jan 2019 09:00:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Jan 2019 09:00:44 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Tue, 29 Jan 2019 09:00:46 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8d4493ed67d7dbcf1f501f2324f1721c7241f16d7170d61f6e541eea2a7663`  
		Last Modified: Tue, 29 Jan 2019 09:01:09 GMT  
		Size: 27.4 MB (27384235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caea6f552720bea52ba7b6a53dfafc50b7473270675cb408011174df798693d8`  
		Last Modified: Tue, 29 Jan 2019 09:00:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001722e0be2b4acf32aabea4fb1882f00752ef6d1015de741af1e5d1c2f0a328`  
		Last Modified: Tue, 29 Jan 2019 09:00:57 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744940ff28fdfac6ea25f5981d8e75a248364b4032f7224899878c4be76d82e5`  
		Last Modified: Tue, 29 Jan 2019 09:00:57 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea4dc7d955b57117b3cae828ea5317214ae88de58452f8762eff46e97228cb6`  
		Last Modified: Tue, 29 Jan 2019 09:00:57 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b1b5ca0007c36f291402cf56dac27a8f308eb06bb4a82d205bfe774887db40`  
		Last Modified: Tue, 29 Jan 2019 09:00:57 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd347bd55a8a0776310b6ce8f535a67ef758e07493c64f6f1b0a1745087a4ebf`  
		Last Modified: Tue, 29 Jan 2019 09:01:50 GMT  
		Size: 80.3 MB (80322117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab72e10dc98aba07d8d4e9df1a9c294a56790f9fd6a3a3ad56c3f789b901ccc`  
		Last Modified: Tue, 29 Jan 2019 09:01:19 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
