## `crate:latest`

```console
$ docker pull crate@sha256:e7f464426db6cec72502cbd80f374599fcc66d0dbca54716cc2caf0ed6f8ba8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:763a7285ef2a9e3428222e7951599304840118a26cf26cba800bb5ed4a9260a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343889227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb78fdfae4a1b59dd6e249dadfb3fc9c072ebd5f36ec7c5e2259d79ad2a612f`
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
# Tue, 26 Mar 2019 22:20:36 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.6.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.6.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.2.6.tar.gz.asc crate-3.2.6.tar.gz     && rm -rf "$GNUPGHOME" crate-3.2.6.tar.gz.asc     && tar -xf crate-3.2.6.tar.gz -C /crate --strip-components=1     && rm crate-3.2.6.tar.gz     && ln -sf /usr/bin/python3.6 /usr/bin/python3     && ln -sf /usr/bin/python3.6 /usr/bin/python
# Tue, 26 Mar 2019 22:20:36 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 26 Mar 2019 22:20:36 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 26 Mar 2019 22:20:39 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Tue, 26 Mar 2019 22:20:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 22:20:39 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 26 Mar 2019 22:20:40 GMT
RUN mkdir -p /data/data /data/log
# Tue, 26 Mar 2019 22:20:40 GMT
VOLUME [/data]
# Tue, 26 Mar 2019 22:20:40 GMT
WORKDIR /data
# Tue, 26 Mar 2019 22:20:40 GMT
EXPOSE 4200 4300 5432
# Tue, 26 Mar 2019 22:20:40 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 26 Mar 2019 22:20:41 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 26 Mar 2019 22:20:41 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-03-25T12:24:46.502416066+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.2.6
# Tue, 26 Mar 2019 22:20:41 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Tue, 26 Mar 2019 22:20:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 26 Mar 2019 22:20:41 GMT
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
	-	`sha256:bec7c6c6f76a7a977c44013c8917e70525284718e0ee8b1f57706b399a14c7d3`  
		Last Modified: Tue, 26 Mar 2019 22:21:27 GMT  
		Size: 79.1 MB (79084756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afe3a4aee7f79a5f36398c0f95c3c85976d7d012efe59428e631a6a4187f870`  
		Last Modified: Tue, 26 Mar 2019 22:21:15 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e65dfe1cc1e483bd60dd8cde4c1e4f4a30d701648f117b0bec85726047d820`  
		Last Modified: Tue, 26 Mar 2019 22:21:15 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc442fdfd2c3a5cfcaa8de8c24a5fbed48d6bdde8b902685da4755249736b88e`  
		Last Modified: Tue, 26 Mar 2019 22:21:14 GMT  
		Size: 1.3 MB (1294048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bfc9ea5265de9da356c064a0a875300cd5e72f5d0ee895a36924c3fd6c17bc`  
		Last Modified: Tue, 26 Mar 2019 22:21:14 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a098ad46a979156172afb8f4f100c4283a5be16c54fb12a36dcb0d31068003`  
		Last Modified: Tue, 26 Mar 2019 22:21:14 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977144ac18377a9558b5c7e424ec35ab92e610ee14d3f958af51e1521fb2d74f`  
		Last Modified: Tue, 26 Mar 2019 22:21:14 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39ec0f9b68282cf0492184ccfbfdd7aefb416cbe49bb587e222ecdb43a11b79`  
		Last Modified: Tue, 26 Mar 2019 22:21:14 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
