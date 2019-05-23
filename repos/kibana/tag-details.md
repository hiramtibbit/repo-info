<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:6.8.0`](#kibana680)
-	[`kibana:7.1.0`](#kibana710)

## `kibana:6.8.0`

```console
$ docker pull kibana@sha256:b14544ad3fe674e8893f738d8a728ee63c52966c3cf2e70a8125759d9b9c92b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:6.8.0` - linux; amd64

```console
$ docker pull kibana@sha256:6d487c045e9a8e5bc092325185407216881981843210b35ab1166fcaf6f9472b
```

-	Docker Version: 18.09.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.3 MB (308296314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290cd245e9088917d578a85574e5bfbffa3d95623c911dbc4d28383b3836d8d8`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 20:38:32 GMT
EXPOSE 5601
# Wed, 15 May 2019 20:38:54 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Wed, 15 May 2019 20:39:14 GMT
COPY --chown=1000:0dir:e9bf75c2b64d897db1c026d03e72361dc89f4de63e8cb8baf8dbf68946643c84 in /usr/share/kibana 
# Wed, 15 May 2019 20:39:15 GMT
WORKDIR /usr/share/kibana
# Wed, 15 May 2019 20:39:16 GMT
RUN ln -s /usr/share/kibana /opt/kibana
# Wed, 15 May 2019 20:39:16 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 15 May 2019 20:39:16 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 May 2019 20:39:16 GMT
COPY --chown=1000:0file:60b6181f28c99b362092ea6139b6d4112ddd0bef32d52563c33b26bdc2b51318 in /usr/share/kibana/config/kibana.yml 
# Wed, 15 May 2019 20:39:16 GMT
COPY --chown=1000:0file:94f5b4926d54efe4eb5f4b03e2f8f43595bdfb03570ece4d02a479728abb58fe in /usr/local/bin/ 
# Wed, 15 May 2019 20:39:17 GMT
RUN chmod g+ws /usr/share/kibana && find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Wed, 15 May 2019 20:39:18 GMT
RUN groupadd --gid 1000 kibana && useradd --uid 1000 --gid 1000 --home-dir /usr/share/kibana --no-create-home kibana
# Wed, 15 May 2019 20:39:18 GMT
USER kibana
# Wed, 15 May 2019 20:39:18 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=6.8.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana license=Elastic License
# Wed, 15 May 2019 20:39:18 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03111aa4a1aa912f8e54599fabcf44fd8b35dc1c05f360da224150b1292c1a8c`  
		Last Modified: Mon, 20 May 2019 14:46:47 GMT  
		Size: 44.8 MB (44809308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1600339fe71c261b5d6347f1a0e501f154be6e7d2e546aeb7b066c556ea82dfa`  
		Last Modified: Mon, 20 May 2019 14:47:04 GMT  
		Size: 188.1 MB (188078789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4259b95413fbb2902f7fa9b057ab3ad8a1dad299fb91ebfc1d2ae3e3166e50a`  
		Last Modified: Mon, 20 May 2019 14:46:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86dc1db7b94bbe9469402db21dc649bb8a1ad6b09f85c3b67ee10e1635a41fca`  
		Last Modified: Mon, 20 May 2019 14:46:33 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac21d563c0727202e61b81c9593e7bd7f662c408b1f72e9766c20000eb851aa`  
		Last Modified: Mon, 20 May 2019 14:46:33 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb43bbf0ab8aa8237735ad5ef1511ce5b31fff9c509e84aa5056d080c92a3957`  
		Last Modified: Mon, 20 May 2019 14:46:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39be997eee6f161c926846426a1567ab82616493592ff0f1f074ec72ccbeb2a1`  
		Last Modified: Mon, 20 May 2019 14:46:33 GMT  
		Size: 1.6 KB (1608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:7.1.0`

```console
$ docker pull kibana@sha256:7a60259ea48715842d88e262cbf58ccc9f847997faf6babda55338a562bcee61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:7.1.0` - linux; amd64

```console
$ docker pull kibana@sha256:0eb53e2eb9a8846a5a4e700115a4b6e207a8f298128a45cdd28a514f708ec0f3
```

-	Docker Version: 18.09.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289626200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714b175e84e8fa91ceed8b802980efb4017fa75359599cd2b63c87bbc26efe77`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 01:17:48 GMT
EXPOSE 5601
# Thu, 16 May 2019 01:18:09 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Thu, 16 May 2019 01:18:28 GMT
COPY --chown=1000:0dir:8bde05e4b7cd45af1614d9d9477fd1d4723937416467934e19a89b91a2c44d34 in /usr/share/kibana 
# Thu, 16 May 2019 01:18:30 GMT
WORKDIR /usr/share/kibana
# Thu, 16 May 2019 01:18:31 GMT
RUN ln -s /usr/share/kibana /opt/kibana
# Thu, 16 May 2019 01:18:31 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 May 2019 01:18:31 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 May 2019 01:18:31 GMT
COPY --chown=1000:0file:60b6181f28c99b362092ea6139b6d4112ddd0bef32d52563c33b26bdc2b51318 in /usr/share/kibana/config/kibana.yml 
# Thu, 16 May 2019 01:18:31 GMT
COPY --chown=1000:0file:b6db778cfa3edcf0a54106abc21ff318bd0ede0284f2471172623218dc89d6ae in /usr/local/bin/ 
# Thu, 16 May 2019 01:18:33 GMT
RUN chmod g+ws /usr/share/kibana && find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Thu, 16 May 2019 01:18:35 GMT
RUN groupadd --gid 1000 kibana && useradd --uid 1000 --gid 1000 --home-dir /usr/share/kibana --no-create-home kibana
# Thu, 16 May 2019 01:18:35 GMT
USER kibana
# Thu, 16 May 2019 01:18:35 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=7.1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana license=Elastic License
# Thu, 16 May 2019 01:18:35 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1fa00155138f6233d836a8bd6e59504e05bbebe54d9a7a73b552ee43a33fb8`  
		Last Modified: Mon, 20 May 2019 15:52:44 GMT  
		Size: 44.8 MB (44809000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89eb31e0c2f5423e505945c42a378a4be05d508755e2e51c8e91bc02b855c466`  
		Last Modified: Mon, 20 May 2019 15:53:04 GMT  
		Size: 169.4 MB (169408984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e418438b8415752375889d2ebe43bb6d6df055c017dedaced9bb35844fe770`  
		Last Modified: Mon, 20 May 2019 15:52:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402cffb373dc8e7afacd7231bce69c42dee20a662b0c1157a4e0326555424ae2`  
		Last Modified: Mon, 20 May 2019 15:52:34 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a881828200af3ed41f587b0d639c4d47ffd78bcb260fe47792f4a1ba681c8c`  
		Last Modified: Mon, 20 May 2019 15:52:33 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301a4cfc4f4fac01b6988c16de917b5e3d9cef93c4fca3149c447544d077309f`  
		Last Modified: Mon, 20 May 2019 15:52:33 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ded62578b8cda7e2f589d05b4f1a0d6324fd5e76c46bedcf0264831f1c1441`  
		Last Modified: Mon, 20 May 2019 15:52:33 GMT  
		Size: 1.6 KB (1606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
