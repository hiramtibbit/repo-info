## `crate:latest`

```console
$ docker pull crate@sha256:03938e0ebe2490b39e2369c84a22eb5cb2ab1ff3bf1b4e97df20656b65372262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:f229ba710eb54ae2651f6a4455d1ed6d084b34a721ee055fafaf8c8fa2e17f59
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342206556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:755a2f66945a7242cf131b1d0a3f4f283ac91261ef6e5918256116fd5d869628`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 23:19:29 GMT
RUN groupadd crate && useradd -u 1000 -g crate -d /crate crate
# Tue, 29 Jan 2019 23:19:47 GMT
RUN curl --retry 8 -o /openjdk.tar.gz https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz     && echo "7a6bb980b9c91c478421f865087ad2d69086a0583aeeb9e69204785e8e97dcfd */openjdk.tar.gz" | sha256sum -c -     && tar -C /opt -zxf /openjdk.tar.gz     && rm /openjdk.tar.gz
# Tue, 29 Jan 2019 23:19:48 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Tue, 29 Jan 2019 23:19:48 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-11.0.1/lib/security/cacerts
# Wed, 13 Mar 2019 22:20:02 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.5.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.5.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.2.5.tar.gz.asc crate-3.2.5.tar.gz     && rm -rf "$GNUPGHOME" crate-3.2.5.tar.gz.asc     && tar -xf crate-3.2.5.tar.gz -C /crate --strip-components=1     && rm crate-3.2.5.tar.gz     && ln -sf /usr/bin/python3.6 /usr/bin/python3     && ln -sf /usr/bin/python3.6 /usr/bin/python
# Wed, 13 Mar 2019 22:20:03 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Wed, 13 Mar 2019 22:20:03 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Wed, 13 Mar 2019 22:20:04 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Wed, 13 Mar 2019 22:20:04 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Mar 2019 22:20:04 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 13 Mar 2019 22:20:05 GMT
RUN mkdir -p /data/data /data/log
# Wed, 13 Mar 2019 22:20:05 GMT
VOLUME [/data]
# Wed, 13 Mar 2019 22:20:06 GMT
WORKDIR /data
# Wed, 13 Mar 2019 22:20:06 GMT
EXPOSE 4200 4300 5432
# Wed, 13 Mar 2019 22:20:06 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-03-11T17:11:13.010861050+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.2.5
# Wed, 13 Mar 2019 22:20:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Wed, 13 Mar 2019 22:20:06 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Wed, 13 Mar 2019 22:20:06 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Wed, 13 Mar 2019 22:20:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Mar 2019 22:20:07 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3b2f3029bf3d37d53f02ec1fd06dcdd9aaf7e5b304227556ebcf7625faf4ec`  
		Last Modified: Tue, 29 Jan 2019 23:21:36 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484ca28b121efb621f5dc3984b2b8ae4af4435ce25f61275ebbdfdbbbbe6088e`  
		Last Modified: Tue, 29 Jan 2019 23:21:56 GMT  
		Size: 188.1 MB (188101373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e515cf0412753750450c4cd5f65f94ee4a53dd0250eed89f17c17dc9220d8`  
		Last Modified: Tue, 29 Jan 2019 23:21:36 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4a79a3bf0101e10c224f3455e783f8213e3d00e302319ea640ddb54834f120`  
		Last Modified: Wed, 13 Mar 2019 22:20:49 GMT  
		Size: 77.6 MB (77640304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57af9f01b961f5f5b148d9503abcd0d73ea23a516d25f3451f43b7f91579e54e`  
		Last Modified: Wed, 13 Mar 2019 22:20:40 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c12c5913d6926b2aaa5ddb899da92983449eff68b64747a1a753d5bc9c6c13`  
		Last Modified: Wed, 13 Mar 2019 22:20:40 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d772270721de338a2bf954f7c69e0dbc00611aa811c9c241092597d55cb6ce`  
		Last Modified: Wed, 13 Mar 2019 22:20:39 GMT  
		Size: 1.3 MB (1294047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84448fb3fd84a05a555195fbbbed439b4600a454eaa10a9a289b2a4e1e88f0b3`  
		Last Modified: Wed, 13 Mar 2019 22:20:39 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf58aed6787b0ceaaa649a9ba9b0bdab71f489923035d20d80cc60e940a0f2a`  
		Last Modified: Wed, 13 Mar 2019 22:20:39 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4570de6837c3d7812ac13afa37f2b41cf3d2db3eefe38fc0e95835edd6b3f529`  
		Last Modified: Wed, 13 Mar 2019 22:20:39 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863cfebf054aa3a54cb8008593eb10cc55997de1ed6676f696174ec227535eec`  
		Last Modified: Wed, 13 Mar 2019 22:20:39 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
