## `znc:latest`

```console
$ docker pull znc@sha256:8b4ad6570d6257735829c4fdbf2eac146a61f9598fd4bd61e6206c0d0d555f5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:70ec474a6754276eb0f1b70ea1c5a041237ff3ce2af86954b29ce348fe24092e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122495147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12cb96aac47bb9cd614ee1e12859833a0ce700e7d9a19af058f7a0485992df8`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Thu, 25 Oct 2018 21:21:22 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 25 Oct 2018 21:21:22 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Thu, 25 Oct 2018 21:21:23 GMT
ARG MAKEFLAGS=
# Thu, 25 Oct 2018 21:21:23 GMT
ENV ZNC_VERSION=1.7.1
# Thu, 25 Oct 2018 21:25:48 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Thu, 25 Oct 2018 21:25:58 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Thu, 25 Oct 2018 21:25:58 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Thu, 25 Oct 2018 21:25:59 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Thu, 25 Oct 2018 21:25:59 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Thu, 25 Oct 2018 21:25:59 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Thu, 25 Oct 2018 21:26:00 GMT
VOLUME [/znc-data]
# Thu, 25 Oct 2018 21:26:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 25 Oct 2018 21:26:36 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Thu, 25 Oct 2018 21:26:37 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00766c08070d58bda9b03fcdc1414a80d54b9b0a53b149e3fff042cd529fc4da`  
		Last Modified: Thu, 25 Oct 2018 21:27:01 GMT  
		Size: 28.6 MB (28627175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22bc07ca1439d7448d4ee51f26f9549d9ab2e2d4cff15afde2b4daeb6a6e7e0`  
		Last Modified: Thu, 25 Oct 2018 21:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ac01970898119d1b2c5a4465468872c6854b9b77337a1b5da4c11656cd6559`  
		Last Modified: Thu, 25 Oct 2018 21:26:54 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f81e8b912f0e5001120aa57ecf0c2438d25a53f204b67f041e92b207a2e4d27`  
		Last Modified: Thu, 25 Oct 2018 21:26:54 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304d3b552505d587b6ec927ce3a19b175bcc2d16fb8b930d791182985356ac19`  
		Last Modified: Thu, 25 Oct 2018 21:26:55 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e424d2065fa06c069d47919e2d56e23a2e1b68d946c5a9816d2e374ef1c760e`  
		Last Modified: Thu, 25 Oct 2018 21:26:54 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053049afaac53fbcc668f6f22d4716956e9e89bfb58efbab24f56a3f7df4c20f`  
		Last Modified: Thu, 25 Oct 2018 21:27:56 GMT  
		Size: 91.7 MB (91659393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9666b8fa7c3c98baec50ae799226cb72f4c85b27d22003ef73e3863f78ee2bc5`  
		Last Modified: Thu, 25 Oct 2018 21:27:36 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:latest` - linux; arm variant v6

```console
$ docker pull znc@sha256:a1545cfb61a45d998d7568efae9c50530516f46cf79d74d5eee7474bea08d04f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109802779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f0d0fc760da15c7b6e2a43217ef4e1bc0de4772ca62e331c778d7fb184ccb4c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Fri, 26 Oct 2018 07:50:27 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 26 Oct 2018 07:50:27 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 26 Oct 2018 07:50:28 GMT
ARG MAKEFLAGS=
# Fri, 26 Oct 2018 07:50:28 GMT
ENV ZNC_VERSION=1.7.1
# Fri, 26 Oct 2018 07:58:05 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
VOLUME [/znc-data]
# Fri, 26 Oct 2018 07:58:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 26 Oct 2018 07:58:55 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Fri, 26 Oct 2018 07:58:57 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38cd7ba02da6c5969de16d9f9bdea21f13f59f954ae0b356b198ac93e2926d3`  
		Last Modified: Fri, 26 Oct 2018 07:59:23 GMT  
		Size: 27.3 MB (27334876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c75fe0d3998124e5391e271bedd26545163c3a424610a7b212065ab31ff946`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5fd26f09ff3adb33f97bcee67f65db60a3366c34b93b0f2fccc1540a6a8532`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986eef77e0b6e74c6418c31be3f465b40517a7978b7d59643b139df8ae7c4782`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb40517a7a0ba705420a5c82ee96e88c84f7ba056ed3ea904a5065dae91b9aa`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca256cc4958443f1c54fa5f64175aa8088747eeef92d2a767a8499042bcbf2`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1975ccce7a1620a372340bdf526e5d053f00f2106bd50275a26e877135868a70`  
		Last Modified: Fri, 26 Oct 2018 08:00:07 GMT  
		Size: 80.3 MB (80319599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb511d530f45a3be4a8893407b712a89d0eb3c113b10fba1f9f737aafb68fcc3`  
		Last Modified: Fri, 26 Oct 2018 07:59:39 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:latest` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:6413efc2a539ec352a995dd7296dac54a9fe68a9b17d338ac1cb9b4455f7d8bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112145475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44655976ffa4152acf398ec6d2b14715aa481e107b5379593922f365bb4c1465`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:56:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 11 Jul 2018 09:56:53 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Wed, 11 Jul 2018 09:56:54 GMT
ARG MAKEFLAGS=
# Sat, 21 Jul 2018 12:29:14 GMT
ENV ZNC_VERSION=1.7.1
# Sat, 21 Jul 2018 12:42:24 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Sat, 21 Jul 2018 12:42:25 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Sat, 21 Jul 2018 12:42:26 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:27 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:28 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
VOLUME [/znc-data]
# Sat, 21 Jul 2018 12:42:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jul 2018 12:43:06 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Sat, 21 Jul 2018 12:43:08 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561570bc00e073ccea95404f611bd7accfde1b7cbe21b49276aab26f94c07fa4`  
		Last Modified: Sat, 21 Jul 2018 12:43:46 GMT  
		Size: 28.7 MB (28714849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61065298b3ecc79a0ab5681109f229576c6e4741be832f7666db39985ab4dda`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dee37c50568cc7cd2ed921b6eae634687112f5806d24fae7175434e9d82d344`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f5ea31177b735c510269f9d32d73758e2470ec9abe94991ae0d34f7dc3b650`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005643b3a8653695d1a8e375111b35053e302071a884c24b9bf1eace1be04f8a`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c4bff3576f1c9ae479f2c5257ba0729afb318958faaacee7bce9fd57bc8677`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84d81694bde27db1f8348f15dd5943cff897b4aeff6cd0d154ba424b9cc91c4`  
		Last Modified: Sat, 21 Jul 2018 12:45:42 GMT  
		Size: 81.4 MB (81439951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4386d359c59766339289da7d58166aca62796b72a8128d137c35db4227929ec`  
		Last Modified: Sat, 21 Jul 2018 12:44:46 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
