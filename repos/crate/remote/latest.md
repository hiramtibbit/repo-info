## `crate:latest`

```console
$ docker pull crate@sha256:9067f6bc104173fdb0a93ae6a87ad7b36f648310e3e3ba9cc3f824393a26ad2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:fb2c16570d7785103b3d13ef5a10bbbc5b4746525ad303b505f427c7aab5a34c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343799768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84016f89bc83ee98ae06f2bc0d04f7096abe4bf3bd503a1f9751027254e99347`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:11:34 GMT
RUN groupadd crate && useradd -u 1000 -g crate -d /crate crate
# Thu, 14 Mar 2019 22:12:17 GMT
RUN curl --retry 8 -o /openjdk.tar.gz https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz     && echo "7a6bb980b9c91c478421f865087ad2d69086a0583aeeb9e69204785e8e97dcfd */openjdk.tar.gz" | sha256sum -c -     && tar -C /opt -zxf /openjdk.tar.gz     && rm /openjdk.tar.gz
# Thu, 14 Mar 2019 22:12:18 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Thu, 14 Mar 2019 22:12:18 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-11.0.1/lib/security/cacerts
# Tue, 28 May 2019 22:19:59 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.3.3.tar.gz.asc crate-3.3.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.3.3.tar.gz.asc     && tar -xf crate-3.3.3.tar.gz -C /crate --strip-components=1     && rm crate-3.3.3.tar.gz     && ln -sf /usr/bin/python3.6 /usr/bin/python3     && ln -sf /usr/bin/python3.6 /usr/bin/python
# Tue, 28 May 2019 22:20:02 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 28 May 2019 22:20:02 GMT
COPY --chown=1000:0file:5f0d1b776d3a6517508a00a88f8053bd0933a642599374c9dff00dc3b632fd09 in /crate/config/log4j2.properties 
# Tue, 28 May 2019 22:20:04 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Tue, 28 May 2019 22:20:04 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 May 2019 22:20:04 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 28 May 2019 22:20:05 GMT
RUN mkdir -p /data/data /data/log
# Tue, 28 May 2019 22:20:05 GMT
VOLUME [/data]
# Tue, 28 May 2019 22:20:05 GMT
WORKDIR /data
# Tue, 28 May 2019 22:20:05 GMT
EXPOSE 4200 4300 5432
# Tue, 28 May 2019 22:20:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 28 May 2019 22:20:06 GMT
COPY --chown=1000:0file:5f0d1b776d3a6517508a00a88f8053bd0933a642599374c9dff00dc3b632fd09 in /crate/config/log4j2.properties 
# Tue, 28 May 2019 22:20:06 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-05-23T12:13:14.395117312+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.3.3
# Tue, 28 May 2019 22:20:06 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Tue, 28 May 2019 22:20:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 May 2019 22:20:07 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a6ddc97e717216c4d09cb226d7c28378812cda87215ea56c16e1af8b56e38e`  
		Last Modified: Thu, 14 Mar 2019 22:13:39 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1359655471fc316d2654fe88e0ffbd8ad33d956afbd82d89eb5e8bf6cb32a54d`  
		Last Modified: Thu, 14 Mar 2019 22:13:59 GMT  
		Size: 188.1 MB (188101289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5766c8b329a683dcdadf719e0994c62a435da699445e5f734ad0df71bdc399e1`  
		Last Modified: Thu, 14 Mar 2019 22:13:39 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c4feec9d37b2d32837d2819df1991ae60c62f0a196b453a49ee785b2f4471a`  
		Last Modified: Tue, 28 May 2019 22:20:37 GMT  
		Size: 79.0 MB (78995270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152634989adcb88fd031beaa7faed201b80374b7bc531a2f1547507b05dd0d2c`  
		Last Modified: Tue, 28 May 2019 22:20:29 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04782039476bf7a53891eed7e01d44612b5e523a935191486ae4106417a90ca`  
		Last Modified: Tue, 28 May 2019 22:20:29 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ff93884fba2944c92c8dfab8122c999642c3fd69fa8fd7a158ad684f0aaa14`  
		Last Modified: Tue, 28 May 2019 22:20:29 GMT  
		Size: 1.3 MB (1294046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b526805d8310addeef79624ecec5e271f67c3bde277a88c1594c6fdd26ea075`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1280c8f4f0d473649eb00ee069734cf4adc5f6f49ca937ea890c5e19e109192`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c279cc6fa7a50a2858dfbd28a1efe567297c19e191a76bfa75edd223a4044934`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f42b631301542a1b1acce4fd561bb94540c1263526ee3405ce9c54d035ec53`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:db0c912f2ffb291abdf1b8ac7032599f0a3d98e1f05af9834b8395666dd5a9b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128570784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f194b7a8010074bbd1dea99993ec8e283b3283be7a20122711e3152938467d0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:40:52 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Fri, 25 Jan 2019 09:53:30 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.5.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.5.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.5.tar.gz.asc crate-3.1.5.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.5.tar.gz.asc     && tar -xf crate-3.1.5.tar.gz -C /crate --strip-components=1     && rm crate-3.1.5.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 25 Jan 2019 09:53:43 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 25 Jan 2019 09:53:45 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Jan 2019 09:53:47 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 25 Jan 2019 09:53:50 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 25 Jan 2019 09:53:57 GMT
RUN mkdir -p /data/data /data/log
# Fri, 25 Jan 2019 09:53:58 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 09:54:01 GMT
WORKDIR /data
# Fri, 25 Jan 2019 09:54:03 GMT
EXPOSE 4200 4300 5432
# Fri, 25 Jan 2019 09:54:05 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-01-22T17:02:01.628483081+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.5
# Fri, 25 Jan 2019 09:54:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 25 Jan 2019 09:54:08 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 25 Jan 2019 09:54:08 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Fri, 25 Jan 2019 09:54:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Jan 2019 09:54:13 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf6e4828a3e9f80bfa761b39062e4481c11b4a610152a814acd32573231fa99`  
		Last Modified: Fri, 21 Dec 2018 13:42:11 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0e67bbf3f48cc5272f52f25ca390d32d7129326881f72227fa77c036063c0d`  
		Last Modified: Fri, 25 Jan 2019 09:55:07 GMT  
		Size: 125.0 MB (125011209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7f21460e9575c38dc2e949517a38a8879a2cd80160ec7ab0c0bd58aed14fc0`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 1.5 MB (1456441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da11ea425af1731ea21a870fa115175477cae145c8ade3c1daaf9e87bf216f13`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e901e4006cebfb1689df93628a914d428008bc5a4998a3794fcb564853083d3`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aff0b367ba9ee7651f99121048f8d6d970a02d5634af435b7e1cd68f238c6c6`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0c2d26d4648beea5d96e217db832b78f33579544be71ffe03f3dfbe30f6fe4`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
