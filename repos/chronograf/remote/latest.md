## `chronograf:latest`

```console
$ docker pull chronograf@sha256:df5e800a8eb333ff0a960e05d52901af9e8d7b8102270d807b88d04cf2a6df88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:e4fa405557c19ab1c469ef25238e5433c22fb33d7d821ab987b9005d0188fd9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56854382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372c934a89e9ccd29ab1671b08c677bdc9741945a78040f9dae2cbf1b44d014a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:11:23 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 27 Apr 2019 00:23:39 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Sat, 27 Apr 2019 00:23:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 27 Apr 2019 00:23:54 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 27 Apr 2019 00:23:54 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 27 Apr 2019 00:23:54 GMT
EXPOSE 8888
# Sat, 27 Apr 2019 00:23:54 GMT
VOLUME [/var/lib/chronograf]
# Sat, 27 Apr 2019 00:23:54 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 27 Apr 2019 00:23:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 00:23:55 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309bb94eb7c8c2b3b65ff4830dcab0f76716e8f9908e1ebc344da27cfe4afe3a`  
		Last Modified: Tue, 26 Mar 2019 23:12:33 GMT  
		Size: 4.5 MB (4503502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ab2f1e6858331e32841477a96d57a3f20be9a6353646dac8e527e2c0895d03`  
		Last Modified: Sat, 27 Apr 2019 00:24:23 GMT  
		Size: 29.8 MB (29830438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949eb70c79dd9ef01c61aca528e29d565e2b8539302ab4625259260ff26cb27f`  
		Last Modified: Sat, 27 Apr 2019 00:24:17 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a1aefc5526d6164204b180b51530f7f0b541609387c68079baacc1833c73c5`  
		Last Modified: Sat, 27 Apr 2019 00:24:17 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78eef4601edc6972afb489564469726cc218386cd12e8a27875691dd9d6468ae`  
		Last Modified: Sat, 27 Apr 2019 00:24:17 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:76683e6648ebdb8c15727451d6afe9dd7de7bc2b342670c007ad4a84d190df8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50790920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68a71b54daa2a7a3f20d36ccc61c45527eebbf632fdbede3ec5bd01be14cea19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:30:16 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 18 Apr 2019 11:57:31 GMT
ENV CHRONOGRAF_VERSION=1.7.10
# Thu, 18 Apr 2019 11:57:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 18 Apr 2019 11:57:52 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Thu, 18 Apr 2019 11:57:52 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 18 Apr 2019 11:57:53 GMT
EXPOSE 8888
# Thu, 18 Apr 2019 11:57:53 GMT
VOLUME [/var/lib/chronograf]
# Thu, 18 Apr 2019 11:57:54 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Thu, 18 Apr 2019 11:57:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 11:57:55 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094f601ac435fef45e187affb5c6d6f484c28d62a3884ed2eaa70e6fbca7e0fb`  
		Last Modified: Wed, 27 Mar 2019 12:31:54 GMT  
		Size: 3.9 MB (3877205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef2236e37c1f70b80e8eb6113bfd2946a97131a842c6495242e94c986ff5188`  
		Last Modified: Thu, 18 Apr 2019 11:58:17 GMT  
		Size: 27.6 MB (27606874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcb22b0b1d8886cf91265c1c514eafbd4386b524dc914a7d7ded91cd3056b9e`  
		Last Modified: Thu, 18 Apr 2019 11:58:08 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02700b8d3f372205da250a727244baceaceb749e724aaae39e267d246518b2fa`  
		Last Modified: Thu, 18 Apr 2019 11:58:08 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d724179af9a3ba451eecc35bc1fac889a4bb3f7bbd3c09e9f06dd1aba0f4685`  
		Last Modified: Thu, 18 Apr 2019 11:58:08 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:e389ae4dacf9c3f0c0bb938461d0cc18cb1051685fb5795cb9efa3781d12a3ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52253241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:668ae9ec98b4911be0a245c5f9cc8baf9ef4921ba95306779d6fa89c56f5d486`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:10:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 27 Apr 2019 08:39:35 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Sat, 27 Apr 2019 08:40:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 27 Apr 2019 08:40:19 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 27 Apr 2019 08:40:20 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 27 Apr 2019 08:40:20 GMT
EXPOSE 8888
# Sat, 27 Apr 2019 08:40:21 GMT
VOLUME [/var/lib/chronograf]
# Sat, 27 Apr 2019 08:40:22 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 27 Apr 2019 08:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 27 Apr 2019 08:40:23 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60583caf3af85646b427d46254573b00fd07b2929f619f12d9c9cb7b23c767e8`  
		Last Modified: Wed, 27 Mar 2019 10:15:25 GMT  
		Size: 4.1 MB (4079940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7ecc73e2addf24b21904e1d6fa2a9ebe41e1da5ca74ae6efb06dc44b3cf4fb`  
		Last Modified: Sat, 27 Apr 2019 08:40:51 GMT  
		Size: 27.8 MB (27808728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d1bccc274f6b90116994d509b667fd03aa80c2ef1a485f6007ed23422d7d94`  
		Last Modified: Sat, 27 Apr 2019 08:40:42 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b42c70fd0f41320e57940428df1d98f19eea85958f86d24f67cb2136af32e9`  
		Last Modified: Sat, 27 Apr 2019 08:40:42 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f80808583be89977203298d564d640544ac1b3b391c6e2c9485bcda9db37e8`  
		Last Modified: Sat, 27 Apr 2019 08:40:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
