## `chronograf:latest`

```console
$ docker pull chronograf@sha256:d7f53cfd42c49a98b10fc21d732af282f5369baba2ae2608b52775284b54a3b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:1b606be2066168171dcbb11087310cf508627db55fbb57148298d88adf23b8ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47058009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ff8338b5ae0a9a9801d4dd470a472f6468666d83dbad269541d8c736b2d6fc5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:56:53 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Feb 2018 21:23:26 GMT
ENV CHRONOGRAF_VERSION=1.4.1.2
# Wed, 14 Feb 2018 21:23:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Feb 2018 21:23:39 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Feb 2018 21:23:51 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Feb 2018 21:23:51 GMT
EXPOSE 8888/tcp
# Wed, 14 Feb 2018 21:23:51 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Feb 2018 21:24:03 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Feb 2018 21:24:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 21:24:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d5c79d105adf7ea85108c1b312525f1c0ca344849101a049b1a067118636`  
		Last Modified: Tue, 12 Dec 2017 03:57:23 GMT  
		Size: 4.5 MB (4500164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027124e3777e434e5aac73ec17dddd6b412920bf75fe46ef5da03ea15782635`  
		Last Modified: Wed, 14 Feb 2018 21:28:24 GMT  
		Size: 20.0 MB (20047727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5bc1e1122c930925f0079c1a62d56d8db77b224e407d025624e323a55c17098`  
		Last Modified: Wed, 14 Feb 2018 21:28:19 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e07110ac4629be730c0b70bd4d1a618044fd353dca09fc4af983ef2b57122e5`  
		Last Modified: Wed, 14 Feb 2018 21:28:19 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf5711584a34662d0bf1168037f6dfe4b2aa9530e60052db05f8e4b61ebbe74`  
		Last Modified: Wed, 14 Feb 2018 21:28:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:05c680c75b6dc93bfcc47a04db1c6f8285b1707e6cef74040234c29a7ffeb468
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41490190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b3b386844ef5bd0ff19a6cc3384726ddc188647f9fe332946a80c4200e0cd6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:11:32 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Feb 2018 14:12:00 GMT
ENV CHRONOGRAF_VERSION=1.4.1.2
# Thu, 15 Feb 2018 14:12:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 14:12:18 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 15 Feb 2018 14:12:19 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 15 Feb 2018 14:12:19 GMT
EXPOSE 8888/tcp
# Thu, 15 Feb 2018 14:12:20 GMT
VOLUME [/var/lib/chronograf]
# Thu, 15 Feb 2018 14:12:23 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 15 Feb 2018 14:12:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 14:12:24 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0808071856a8529fe4869c485955ff1837233b22bbff7d55a6f2f06cdad5f5`  
		Last Modified: Thu, 15 Feb 2018 14:12:41 GMT  
		Size: 3.9 MB (3873038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42080d6770f44717912c56f29bf2fbb92611d3671d0b945e373757d106b6e00`  
		Last Modified: Thu, 15 Feb 2018 14:13:32 GMT  
		Size: 18.3 MB (18306667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a1489fc029f8f5e43b1dac2e709810065f456fe8b90f78793921e424fe5d8d`  
		Last Modified: Thu, 15 Feb 2018 14:13:26 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b63074fc6f9773d0e742e55ac100902fe5fdc358494740847eb75e1ff27367`  
		Last Modified: Thu, 15 Feb 2018 14:13:27 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fd90e2761a1d4fcf26c787b174100621c42c9374b7c5774e0d4193e450679b`  
		Last Modified: Thu, 15 Feb 2018 14:13:26 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:4e5deb541be2b1e1a899a9c93941e7e5acb024dd14fc52bf46c8dc5e32835f72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42955075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f7c91fe5821a891b6ae3c8ad7eb680dc7de57f9da92427c75c245adc925747b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:20:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Feb 2018 19:21:57 GMT
ENV CHRONOGRAF_VERSION=1.4.1.2
# Thu, 15 Feb 2018 19:22:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 19:22:38 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 15 Feb 2018 19:22:39 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 15 Feb 2018 19:22:40 GMT
EXPOSE 8888/tcp
# Thu, 15 Feb 2018 19:22:44 GMT
VOLUME [/var/lib/chronograf]
# Thu, 15 Feb 2018 19:22:46 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 15 Feb 2018 19:22:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 19:22:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6543186046ee46d4a5ac1f4eb8141b92f0c7ae54cca0715b7d7d16ffdff1e31b`  
		Last Modified: Thu, 15 Feb 2018 19:23:22 GMT  
		Size: 4.1 MB (4075010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6346634e18e1f9ef9da45e7e0d3ac24235eaa512c1274c903bf30b53a7726`  
		Last Modified: Thu, 15 Feb 2018 19:24:16 GMT  
		Size: 18.5 MB (18508249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44b776e3ccedc5f0a24dfa70949042f3ab5e840b626aeecc50f37ec8a0f2ea4`  
		Last Modified: Thu, 15 Feb 2018 19:24:08 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe974b41c6ab28893cf93cf907d3b4b521efe3027cacabd2336ed70ac26596b`  
		Last Modified: Thu, 15 Feb 2018 19:24:08 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4f34c84b8b728d3d857e6a868e387278ee878c0f47c2661cbd423a543db906`  
		Last Modified: Thu, 15 Feb 2018 19:24:09 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
