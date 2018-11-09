## `chronograf:latest`

```console
$ docker pull chronograf@sha256:85f9b85b0299120be18ea0ef2692486e22c11f4766eb661579407b3b5ee19c6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:c1fc3abeab1a61cd85040e444f6cb89e8d0dc1426c87d602c432a9b58db8eb47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49866694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e00815848698b016c4a5aaee37271569215ed3cb07368be17a29810e41ffb014`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:18:57 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 08 Nov 2018 23:21:04 GMT
ENV CHRONOGRAF_VERSION=1.7.1
# Thu, 08 Nov 2018 23:21:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Nov 2018 23:21:24 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 08 Nov 2018 23:21:24 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 08 Nov 2018 23:21:24 GMT
EXPOSE 8888/tcp
# Thu, 08 Nov 2018 23:21:25 GMT
VOLUME [/var/lib/chronograf]
# Thu, 08 Nov 2018 23:21:25 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 08 Nov 2018 23:21:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Nov 2018 23:21:25 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c85d9a68972abcc45fae4ea3cb98dd73e4fc16511351197e7248a8a52fb37d`  
		Last Modified: Tue, 16 Oct 2018 01:20:30 GMT  
		Size: 4.5 MB (4500449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a80b2c3277a36b8d98c0c1af41fe80957aa8051c69345ee8a6b90df2a05c725`  
		Last Modified: Thu, 08 Nov 2018 23:22:40 GMT  
		Size: 22.9 MB (22855805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9646fe744234ae7f2212b61ea82d9d828dcb043c18d8c2a51d13fdbf972d8a88`  
		Last Modified: Thu, 08 Nov 2018 23:22:36 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de37d40e969e37287b1acef06ba229da95c5bc6c548201983081a8c676921dcb`  
		Last Modified: Thu, 08 Nov 2018 23:22:36 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b38573e2e02d51abab22166f135e2d648f7fc3a80bfae0f23986173e3e87a0`  
		Last Modified: Thu, 08 Nov 2018 23:22:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
