## `chronograf:latest`

```console
$ docker pull chronograf@sha256:4797fd00d6a5e9ae8541bb67a91ca292b20a4f98ebab45e0a2876288dcba4203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:813834f1b424d33a91d209269014d03c0575c50cef7f03eee42c4d68ddb452c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49085278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36cd3bfd857b4d3dbd860764ffc58e42a9c444f7af2c661983ab868256e13070`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:04:19 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 04 Sep 2018 23:04:52 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Tue, 04 Sep 2018 23:05:04 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 04 Sep 2018 23:05:04 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:05:04 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:05:05 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:05:05 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:05:05 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Tue, 04 Sep 2018 23:05:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:05:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ded6d78d8b9128ef2922f65a07020a45fcce2e51f020676fb77f45f5f6894dc`  
		Last Modified: Tue, 04 Sep 2018 23:05:28 GMT  
		Size: 4.5 MB (4500369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c9dfe8daa33cbed6554e84d6a2662a8df98119dcaeed489d33b91d7a442af3`  
		Last Modified: Tue, 04 Sep 2018 23:05:55 GMT  
		Size: 22.1 MB (22074550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a417fb67eb2716aac4f6312cb592a74eca83f9744529cbcfcf1d8f056d4a4c`  
		Last Modified: Tue, 04 Sep 2018 23:05:52 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3240c172d43e60d845ff1978568e01f9214a3d598720c16b541f4d4637f6d0ff`  
		Last Modified: Tue, 04 Sep 2018 23:05:51 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe9a9d432d9503d39d1d401d264bec6854851f2f9a7ea32cb788328086cb8eb`  
		Last Modified: Tue, 04 Sep 2018 23:05:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:26ed6db13a6d88a9b0d2cf4d0c0fd76b00a58877936f5e59fa99c20c9a957059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43668757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7186413f11850e8357405438db73e24e141bb4f43b5115cb67fcad123531f04d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:15:18 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 04 Aug 2018 11:58:53 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Sat, 04 Aug 2018 11:59:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Aug 2018 11:59:11 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 04 Aug 2018 11:59:12 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 04 Aug 2018 11:59:12 GMT
EXPOSE 8888/tcp
# Sat, 04 Aug 2018 11:59:13 GMT
VOLUME [/var/lib/chronograf]
# Sat, 04 Aug 2018 11:59:13 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 04 Aug 2018 11:59:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Aug 2018 11:59:14 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45cf45c882b806e89bfc72bf429786f2252363328a0af138650fc6886feb8f3a`  
		Last Modified: Tue, 17 Jul 2018 14:17:03 GMT  
		Size: 3.9 MB (3873177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7944d2ed4a49de8695e9983e194b1666b09653e9969a428f6a7849c8680657b9`  
		Last Modified: Sat, 04 Aug 2018 11:59:31 GMT  
		Size: 20.5 MB (20501002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f03f81904826117e3d1c2b954ba0028858ea3535846bb01cacabbc7bf7eedc`  
		Last Modified: Sat, 04 Aug 2018 11:59:25 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b6a4ed9e83f1d632510de7e8f39aede27b9d69ec22fb657c5d93a985da12f7`  
		Last Modified: Sat, 04 Aug 2018 11:59:25 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46af21b3018bb877193d98c967127d1c7ebf03dd19faecd4d74863cc92307372`  
		Last Modified: Sat, 04 Aug 2018 11:59:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6ed338d7fb62aaacd9f727bdb96145fe49aaae5322b3b3fec50a9374e98c9944
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45132406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad7ee32b24ac7d4d53e7ee3c7a661545efba34bccfce88ffa1b30eb0a30d6f5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:12:11 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 10:14:53 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Wed, 05 Sep 2018 10:15:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 10:15:53 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 05 Sep 2018 10:15:54 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 05 Sep 2018 10:15:55 GMT
EXPOSE 8888/tcp
# Wed, 05 Sep 2018 10:15:56 GMT
VOLUME [/var/lib/chronograf]
# Wed, 05 Sep 2018 10:15:57 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 05 Sep 2018 10:15:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 10:15:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd177d11ba28398cb8381eddb735605132189a44cf727b33713a8e4d1c7fb031`  
		Last Modified: Wed, 05 Sep 2018 10:16:41 GMT  
		Size: 4.1 MB (4075471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec03035dc1c7a0ba08d0749e9b6713716dfe865fc1d3a8acd05bd171399632c5`  
		Last Modified: Wed, 05 Sep 2018 10:18:49 GMT  
		Size: 20.7 MB (20700892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841b88bb501a1c1fc523af1bce239102991bc6a7c039cd65b09a81f2dd7d6aa2`  
		Last Modified: Wed, 05 Sep 2018 10:18:41 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eea29db3d859690839242a306a37a5e71a19e1472e59da1946a135afc6d8e2c`  
		Last Modified: Wed, 05 Sep 2018 10:18:43 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c3692b167d819e24b52b42f3f8fd3ff542ed4ff514325ac6fafb06b686c521`  
		Last Modified: Wed, 05 Sep 2018 10:18:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
