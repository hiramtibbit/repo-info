<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:6.7.2`](#logstash672)
-	[`logstash:7.0.1`](#logstash701)

## `logstash:6.7.2`

```console
$ docker pull logstash@sha256:76484e1e79b74c5a067cfdf6e9b44ba9c7ba36b1873fc18be56283a9cc256088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:6.7.2` - linux; amd64

```console
$ docker pull logstash@sha256:876161bea60a92c77080a55cb9764e9ffeb069c4bc0e2a1b763ef4ced51ba6ad
```

-	Docker Version: 18.09.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.9 MB (359937215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857d9a1f822101fe076e6e6a4a7df0426640424521e868393dac7e171baa9af5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Mon, 29 Apr 2019 10:09:15 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Mon, 29 Apr 2019 10:09:16 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Mon, 29 Apr 2019 10:09:36 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-6.7.2.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-6.7.2 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Mon, 29 Apr 2019 10:09:36 GMT
WORKDIR /usr/share/logstash
# Mon, 29 Apr 2019 10:09:36 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 29 Apr 2019 10:09:36 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 29 Apr 2019 10:09:37 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Mon, 29 Apr 2019 10:09:37 GMT
ADD file:2a0dac103ac5f20f8efa6c77384f10d83a87c3de7c017658f787cce7d6156b76 in config/logstash.yml 
# Mon, 29 Apr 2019 10:09:37 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Mon, 29 Apr 2019 10:09:37 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Mon, 29 Apr 2019 10:09:38 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Mon, 29 Apr 2019 10:09:38 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Mon, 29 Apr 2019 10:09:38 GMT
ADD file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Mon, 29 Apr 2019 10:09:39 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Mon, 29 Apr 2019 10:09:39 GMT
USER 1000
# Mon, 29 Apr 2019 10:09:39 GMT
ADD file:e22d146a880f0f369decacfd49c523706ac533251c16f48f477e83d655dd66bc in /usr/local/bin/ 
# Mon, 29 Apr 2019 10:09:39 GMT
EXPOSE 5044 9600
# Mon, 29 Apr 2019 10:09:39 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=6.7.2 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Mon, 29 Apr 2019 10:09:39 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063405b57b969d24c049f910c5e5298a14340caf01413fdffb1a6514a29bc8b5`  
		Last Modified: Thu, 02 May 2019 16:42:00 GMT  
		Size: 110.0 MB (110029441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0115b8825cd58205fdd723d8841df198477b7eacfef11730ad6906f984e931`  
		Last Modified: Thu, 02 May 2019 16:39:52 GMT  
		Size: 1.6 KB (1612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825b124900cb689fc2432c778d48fed2cdddd83bdb4da3a78f9cf6a7b00f2750`  
		Last Modified: Thu, 02 May 2019 16:42:11 GMT  
		Size: 173.5 MB (173495281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed736d9e3c41cefcd0e9858d301c1abf6dd983710ac7a85514f6e05a9429f88f`  
		Last Modified: Thu, 02 May 2019 16:39:40 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efb3934697a75f222dee5221b5fde1794278518883b10b48d377bc24e7b1438`  
		Last Modified: Thu, 02 May 2019 16:39:39 GMT  
		Size: 270.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a3a0c8ebc242335c5f61913a06c9b7b4b1320d79594e9b94bcf64b31ca3cf3`  
		Last Modified: Thu, 02 May 2019 16:39:39 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55d8adfbc3d96a89de5bdb043726a7e92da99b659c9b1563f853aea9869853c`  
		Last Modified: Thu, 02 May 2019 16:39:30 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6c56fbbef8ae5e0813663ed08778459e2ae195b04cfab8456fb8d0f07dc831`  
		Last Modified: Thu, 02 May 2019 16:39:32 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca45dc8946a2c46bb18e05000aee826737afffbbca04cdfacb928911f37f1a08`  
		Last Modified: Thu, 02 May 2019 16:39:30 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca45dc8946a2c46bb18e05000aee826737afffbbca04cdfacb928911f37f1a08`  
		Last Modified: Thu, 02 May 2019 16:39:30 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b852a079ea9e48b3641d7e2cea38ef3d45dce1c90e5d713d52bca4cbcd90bb7`  
		Last Modified: Thu, 02 May 2019 16:39:32 GMT  
		Size: 1.0 MB (1002056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:7.0.1`

```console
$ docker pull logstash@sha256:00b0d908e775b7d25b3d4d56e6018536cb6a8d2e018228c1fa9596b7e371a1cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:7.0.1` - linux; amd64

```console
$ docker pull logstash@sha256:08ce6009987afdf3297330a8cc1a90b62062864d3fbe0edcd7adcf96f3613ef4
```

-	Docker Version: 18.09.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.7 MB (358662113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b534744e48a7e52994f879d3a68ae96e54a8fd1c78d9d42f55be4caef7eb86`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Mon, 29 Apr 2019 14:07:12 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Mon, 29 Apr 2019 14:07:13 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Mon, 29 Apr 2019 14:07:33 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-7.0.1.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-7.0.1 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Mon, 29 Apr 2019 14:07:34 GMT
WORKDIR /usr/share/logstash
# Mon, 29 Apr 2019 14:07:34 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 29 Apr 2019 14:07:35 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 29 Apr 2019 14:07:35 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Mon, 29 Apr 2019 14:07:35 GMT
ADD file:83ab096464b764c812ae68c2872c05d48ee1620e6a1629948d52c13ac6dcfe11 in config/logstash.yml 
# Mon, 29 Apr 2019 14:07:35 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Mon, 29 Apr 2019 14:07:35 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Mon, 29 Apr 2019 14:07:36 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Mon, 29 Apr 2019 14:07:36 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Mon, 29 Apr 2019 14:07:36 GMT
ADD file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Mon, 29 Apr 2019 14:07:37 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Mon, 29 Apr 2019 14:07:37 GMT
USER 1000
# Mon, 29 Apr 2019 14:07:37 GMT
ADD file:8ed33e1faef241414be58a24e3bf8926d65ade5e342819ae4333c9b474416834 in /usr/local/bin/ 
# Mon, 29 Apr 2019 14:07:38 GMT
EXPOSE 5044 9600
# Mon, 29 Apr 2019 14:07:38 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=7.0.1 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Mon, 29 Apr 2019 14:07:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acb8d9c2ee95908f017385238fc47385399267b3f7b7baebd70fc475837782b`  
		Last Modified: Wed, 01 May 2019 14:27:24 GMT  
		Size: 110.0 MB (110030312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1094286f832aec4c199af77af69953b0c68a5f4203a4d6d3a2b75e42aa37e99`  
		Last Modified: Wed, 01 May 2019 14:27:07 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335c368bfe0b306b5bf162c817018a33798a87ea98c44727222ba065eaea3840`  
		Last Modified: Wed, 01 May 2019 14:27:24 GMT  
		Size: 172.2 MB (172219271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7caab92382af968923d76cd22ad0a6621ad0652f538d3e1ab6ca0c69644c6cf4`  
		Last Modified: Wed, 01 May 2019 14:27:06 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d0a5b695986332a12fa0e5b6cbe749a4e9f96104c0ecb1af8dca688bd7dffd`  
		Last Modified: Wed, 01 May 2019 14:27:07 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fd5e3c8ee53dee253471cb6f02e0df37f3be9ff8a0bcb140ed69434c045e49`  
		Last Modified: Wed, 01 May 2019 14:27:03 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea17513e98c850afbaa48c36043152ea41a0e419b9eb3b0d50c067dd7104578`  
		Last Modified: Wed, 01 May 2019 14:27:03 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db053fec74e12cdbfc499537882f3f2e37b2d6a5ec069cef3ddc385cae9539d`  
		Last Modified: Wed, 01 May 2019 14:27:03 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08c9ba7eb37ca47ab8041c7c48cb71da7320b2bff0eb680d1e43084ecd76dc3`  
		Last Modified: Wed, 01 May 2019 14:27:03 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08c9ba7eb37ca47ab8041c7c48cb71da7320b2bff0eb680d1e43084ecd76dc3`  
		Last Modified: Wed, 01 May 2019 14:27:03 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1882ed8e8e9ff5bf49934dabd20059583ff6d12e7b0fd3024d8356df39c7d25`  
		Last Modified: Wed, 01 May 2019 14:27:04 GMT  
		Size: 1.0 MB (1002082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
