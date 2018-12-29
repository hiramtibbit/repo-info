<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:3.13.0.11`](#aerospike313011)
-	[`aerospike:4.4.0.6`](#aerospike4406)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:3.13.0.11`

```console
$ docker pull aerospike@sha256:af9de2656b8b58d02685b17129a842361fdfa5d44abfcb81e5a86c84715536f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:3.13.0.11` - linux; amd64

```console
$ docker pull aerospike@sha256:8c26cb0de7033f0808c7656e93e5bd050b8fbe5b26f32a67c0d4b5b852861678
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70426634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c858c861937ccd6c2b73efdfba6a5b1e3b4286c70c0d13a2300b1fb68e628a90`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:24:40 GMT
ENV AEROSPIKE_VERSION=3.13.0.11
# Sat, 29 Dec 2018 00:24:40 GMT
ENV AEROSPIKE_SHA256=6b3bb0da56185e66d5125cf5ec84706be153b51e90f36e31cc1c9e5620bc3ed4
# Sat, 29 Dec 2018 00:25:10 GMT
RUN apt-get update -y   && apt-get install -y wget python python-argparse python-bcrypt python-openssl logrotate net-tools iproute2 iputils-ping gettext-base  && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r wget ca-certificates   && dpkg --purge wget ca-certificates   && apt-get purge -y
# Sat, 29 Dec 2018 00:25:10 GMT
COPY file:f66649da216697645dae85ec3e3675ce62c98397fd6dde20fc5e1611c2b57832 in /etc/aerospike/aerospike.template.conf 
# Sat, 29 Dec 2018 00:25:10 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Sat, 29 Dec 2018 00:25:10 GMT
VOLUME [/opt/aerospike/data]
# Sat, 29 Dec 2018 00:25:10 GMT
EXPOSE 3000 3001 3002 3003
# Sat, 29 Dec 2018 00:25:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 00:25:11 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d8e4400e4ecf41681d409d5e95c2370da8683e1f274af0a3b5f504707d4ae3`  
		Last Modified: Sat, 29 Dec 2018 00:25:36 GMT  
		Size: 27.0 MB (26980109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e59c59ee99f64d9c54396430e4304e70eb8e2809a6c27e78fd5fe69e9940cbd`  
		Last Modified: Sat, 29 Dec 2018 00:25:31 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae7f3035d43ed29c22369e407f638500e85cb6da69b343c1f07b05b2b49345d`  
		Last Modified: Sat, 29 Dec 2018 00:25:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.4.0.6`

```console
$ docker pull aerospike@sha256:4661d216c123809852793bda6ad59018018ddc7bdbd2767b4f99ff265ad3fa89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.4.0.6` - linux; amd64

```console
$ docker pull aerospike@sha256:447932363afc812e7a2775a1181ae21c39813a92038e36e72e94c9af2151a26a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49244500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36fe0418a649f0bc7f6b4a1933a388c8bd810063750dace622c376fd5e217efd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:24:13 GMT
ENV AEROSPIKE_VERSION=4.4.0.6
# Sat, 29 Dec 2018 00:24:13 GMT
ENV AEROSPIKE_SHA256=09197428e79a78d4c3646507f8168cea81d0441600e31daabe085ba9f789a1a7
# Sat, 29 Dec 2018 00:24:34 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Sat, 29 Dec 2018 00:24:34 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Sat, 29 Dec 2018 00:24:34 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Sat, 29 Dec 2018 00:24:34 GMT
VOLUME [/opt/aerospike/data]
# Sat, 29 Dec 2018 00:24:34 GMT
EXPOSE 3000 3001 3002 3003
# Sat, 29 Dec 2018 00:24:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 00:24:35 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659892d19b3665370d26be093282198b2dc77dfe542e00d786a07d7389ea6cb0`  
		Last Modified: Sat, 29 Dec 2018 00:25:27 GMT  
		Size: 26.7 MB (26749589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f5e16dfdc257dd28fdf7e306cecbcd77c528c6c953789e876ccd0bba583050`  
		Last Modified: Sat, 29 Dec 2018 00:25:22 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946e603ca9f87dfc94266c21dc195f70ca4bad5469a3c91cf41650ee1d70cb29`  
		Last Modified: Sat, 29 Dec 2018 00:25:22 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:4661d216c123809852793bda6ad59018018ddc7bdbd2767b4f99ff265ad3fa89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:447932363afc812e7a2775a1181ae21c39813a92038e36e72e94c9af2151a26a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49244500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36fe0418a649f0bc7f6b4a1933a388c8bd810063750dace622c376fd5e217efd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:24:13 GMT
ENV AEROSPIKE_VERSION=4.4.0.6
# Sat, 29 Dec 2018 00:24:13 GMT
ENV AEROSPIKE_SHA256=09197428e79a78d4c3646507f8168cea81d0441600e31daabe085ba9f789a1a7
# Sat, 29 Dec 2018 00:24:34 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Sat, 29 Dec 2018 00:24:34 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Sat, 29 Dec 2018 00:24:34 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Sat, 29 Dec 2018 00:24:34 GMT
VOLUME [/opt/aerospike/data]
# Sat, 29 Dec 2018 00:24:34 GMT
EXPOSE 3000 3001 3002 3003
# Sat, 29 Dec 2018 00:24:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 00:24:35 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659892d19b3665370d26be093282198b2dc77dfe542e00d786a07d7389ea6cb0`  
		Last Modified: Sat, 29 Dec 2018 00:25:27 GMT  
		Size: 26.7 MB (26749589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f5e16dfdc257dd28fdf7e306cecbcd77c528c6c953789e876ccd0bba583050`  
		Last Modified: Sat, 29 Dec 2018 00:25:22 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946e603ca9f87dfc94266c21dc195f70ca4bad5469a3c91cf41650ee1d70cb29`  
		Last Modified: Sat, 29 Dec 2018 00:25:22 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
