## `crate:latest`

```console
$ docker pull crate@sha256:a4ae04c36cba22a3729f380b78dd51d2f2d910d0fe7976cc220b5aa69479e5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:d91b330c38dfa2d7691bab525fe009857c28c3727c535047ee300ae953d83c14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.5 MB (342459387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f87b7144c314005f2aef3a67392e26259b7294e5670b117fc61879cbf8b314`
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
# Thu, 14 Mar 2019 22:13:03 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.5.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.5.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.2.5.tar.gz.asc crate-3.2.5.tar.gz     && rm -rf "$GNUPGHOME" crate-3.2.5.tar.gz.asc     && tar -xf crate-3.2.5.tar.gz -C /crate --strip-components=1     && rm crate-3.2.5.tar.gz     && ln -sf /usr/bin/python3.6 /usr/bin/python3     && ln -sf /usr/bin/python3.6 /usr/bin/python
# Thu, 14 Mar 2019 22:13:04 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 14 Mar 2019 22:13:04 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 14 Mar 2019 22:13:06 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Thu, 14 Mar 2019 22:13:07 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Mar 2019 22:13:07 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 14 Mar 2019 22:13:08 GMT
RUN mkdir -p /data/data /data/log
# Thu, 14 Mar 2019 22:13:09 GMT
VOLUME [/data]
# Thu, 14 Mar 2019 22:13:09 GMT
WORKDIR /data
# Thu, 14 Mar 2019 22:13:09 GMT
EXPOSE 4200 4300 5432
# Thu, 14 Mar 2019 22:13:09 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-03-11T17:11:13.010861050+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.2.5
# Thu, 14 Mar 2019 22:13:09 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 14 Mar 2019 22:13:10 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 14 Mar 2019 22:13:10 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Thu, 14 Mar 2019 22:13:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:13:10 GMT
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
	-	`sha256:a889762ac77fb43c3f1480d85d310b6996c077bf0c064c6897c96cc7ef0174d9`  
		Last Modified: Thu, 14 Mar 2019 22:13:48 GMT  
		Size: 77.7 MB (77654930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167880487940b0b3219472deaf8e2133730b5e515af79ec3ce17202678b75283`  
		Last Modified: Thu, 14 Mar 2019 22:13:38 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce8690abcad9ff340b749eec8c14a39083ee14b4b9efa6eaa2c1f2ba7cf81b9`  
		Last Modified: Thu, 14 Mar 2019 22:13:38 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ef65390509012dd2407523ad8c3b82bacb1eae5c2084e914a4d957a1080af7`  
		Last Modified: Thu, 14 Mar 2019 22:13:38 GMT  
		Size: 1.3 MB (1294037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b112ade1455845c505b5241cfece88c7e9db078313ef2cb2d7d1f7a9413ee1b`  
		Last Modified: Thu, 14 Mar 2019 22:13:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ff280e54eed7126e8127ad207e523bff914f7f8a3196ba5ef9a53e8b738b4d`  
		Last Modified: Thu, 14 Mar 2019 22:13:38 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e210c819f802e48be165c9ad08c41da00b838f4a99a17e61fbbb7e28ac9d8f`  
		Last Modified: Thu, 14 Mar 2019 22:13:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e8ee773f2b35cb83943f2ba34b62bc0802b4d265f4ed35649caab7b9d800d1`  
		Last Modified: Thu, 14 Mar 2019 22:13:38 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
