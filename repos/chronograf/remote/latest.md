## `chronograf:latest`

```console
$ docker pull chronograf@sha256:ea88e8bfa562de148a25be73a1574955d4b63586fe6a2bbf79543fa31886c474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:386d4689667ea682a1d73b7726e62a40a3a19fabc9b75956e556ce928f3b4823
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48546200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d6ef72d39ecf7cb2aeed6b3092943e59ba73334a152ed840459234cd7de40d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 04:58:29 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 30 Apr 2018 05:08:58 GMT
ENV CHRONOGRAF_VERSION=1.4.4.1
# Mon, 30 Apr 2018 05:09:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Mon, 30 Apr 2018 05:09:13 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Mon, 30 Apr 2018 05:09:14 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Mon, 30 Apr 2018 05:09:14 GMT
EXPOSE 8888/tcp
# Mon, 30 Apr 2018 05:09:14 GMT
VOLUME [/var/lib/chronograf]
# Mon, 30 Apr 2018 05:09:15 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Mon, 30 Apr 2018 05:09:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 30 Apr 2018 05:09:15 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7349ac161b0096ca747527cd84d6b0616b3221a251b4064e3c96d535b1698b2`  
		Last Modified: Mon, 30 Apr 2018 05:21:13 GMT  
		Size: 4.5 MB (4500376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3446533c2bec672c7533f7fe1f9165877f6ac246588a7dbd78355bd14997a4`  
		Last Modified: Mon, 30 Apr 2018 05:31:14 GMT  
		Size: 21.5 MB (21525399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04547a679b25a3894a94802376f1481bd9b9d30f6a9ab8286abf308f8082b3b`  
		Last Modified: Mon, 30 Apr 2018 05:31:09 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3998a47e04c7dcdec82d17b76d564435f11fbbfc0201d76457c1605b40ac9d0`  
		Last Modified: Mon, 30 Apr 2018 05:31:09 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305290d3e5a301305cda0dcec1584ac6446a2a8c3ed5d66db487884d5c1bbfe2`  
		Last Modified: Mon, 30 Apr 2018 05:31:09 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:9ec39e798ca4108cb923575fbb2b4925a7c594faf57502834a1e9bfec2910f0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43105388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef404d777c73970844de1836c5ed1a5141ecd8c02ae3dba2735572c9842b89b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 28 Apr 2018 12:36:14 GMT
ENV CHRONOGRAF_VERSION=1.4.4.1
# Sat, 28 Apr 2018 12:36:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:36:33 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 28 Apr 2018 12:36:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 28 Apr 2018 12:36:34 GMT
EXPOSE 8888/tcp
# Sat, 28 Apr 2018 12:36:35 GMT
VOLUME [/var/lib/chronograf]
# Sat, 28 Apr 2018 12:36:36 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 28 Apr 2018 12:36:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 12:36:37 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dd0c89825e53b7cc7525e90a3213c9f6ddf632cdeeaf6522a84e1f3a1bc675`  
		Last Modified: Sat, 28 Apr 2018 12:36:56 GMT  
		Size: 3.9 MB (3873102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d53d8fb616197b9bdc5515fa8e1ade2acd252be3714d87bfc462496a1dad889`  
		Last Modified: Sat, 28 Apr 2018 12:37:43 GMT  
		Size: 19.9 MB (19921099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ed87c34ee768de792cd52567c647a1461987acf2376d24f7302a2ca5aaab0d`  
		Last Modified: Sat, 28 Apr 2018 12:37:36 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8544c7c8cca2a0ef7d6f865e0a6c47626e8b3532f0ead95071d9262d15b931f`  
		Last Modified: Sat, 28 Apr 2018 12:37:36 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f729b673c6860ff9a6fcb2c103baa7f2d803b1b064d5fb19ee8cb7a186fc1d8c`  
		Last Modified: Sat, 28 Apr 2018 12:37:37 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8cf9510dd2227d5729cb8ab38d42d3db797ebceb7c36d742c07e0d22e584a7d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44559125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2d2657c0599bc72d04ee7de4ca1ca87da1883c23107345de01533f0acc088b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:50:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 25 Apr 2018 08:41:05 GMT
ENV CHRONOGRAF_VERSION=1.4.4.1
# Wed, 25 Apr 2018 08:41:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 25 Apr 2018 08:41:46 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 25 Apr 2018 08:41:47 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 25 Apr 2018 08:41:48 GMT
EXPOSE 8888/tcp
# Wed, 25 Apr 2018 08:41:49 GMT
VOLUME [/var/lib/chronograf]
# Wed, 25 Apr 2018 08:41:51 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 25 Apr 2018 08:41:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 25 Apr 2018 08:41:53 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fbb595522d03c9501f6d5fbbf579b5656caa58ed279424683f8deccaf279a6`  
		Last Modified: Thu, 15 Mar 2018 00:52:57 GMT  
		Size: 4.1 MB (4075003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0856bd3f67a59c7deeba005d54b40623f4d4623d719beabea26b1c9f2aedb1`  
		Last Modified: Wed, 25 Apr 2018 08:42:46 GMT  
		Size: 20.1 MB (20122521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c51cd1405e47e55a3144ee6e6f43a116bb4f9623163506db9cccb5d0fbb0b0c`  
		Last Modified: Wed, 25 Apr 2018 08:42:39 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbbfda364c89c214c6a74c85c1404117d1de512c6e8f0f6cc85d45a4d10e453`  
		Last Modified: Wed, 25 Apr 2018 08:42:39 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405d390d934ccff07e68ace211a1ebcb54bd9308cf6a143856e3e782868b6746`  
		Last Modified: Wed, 25 Apr 2018 08:42:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
