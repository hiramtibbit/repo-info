## `chronograf:latest`

```console
$ docker pull chronograf@sha256:f646257f52e5be753ff3c521002cef8b5f3f9d7bcf2df4877342d81bd245150c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:1a6e4d5353f6d007c551726141b1a280ae7f211d31fce2b028aceddff5754ddd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55225742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc1b738d794dc15e0c45f708a24089d3cb88609c71c112d5dc3e3487285e643`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:11:23 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 26 Mar 2019 23:12:06 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Tue, 26 Mar 2019 23:12:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Mar 2019 23:12:18 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 26 Mar 2019 23:12:18 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 26 Mar 2019 23:12:19 GMT
EXPOSE 8888
# Tue, 26 Mar 2019 23:12:19 GMT
VOLUME [/var/lib/chronograf]
# Tue, 26 Mar 2019 23:12:19 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 26 Mar 2019 23:12:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Mar 2019 23:12:19 GMT
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
	-	`sha256:f0914113713868d8b3dd3014e53aaad831c287455e74308f47601fa28a43a161`  
		Last Modified: Tue, 26 Mar 2019 23:12:57 GMT  
		Size: 28.2 MB (28201802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd11500cef84d2cc487af2d2384415868a8737c9c7ef6130fc78321bc4b0a06`  
		Last Modified: Tue, 26 Mar 2019 23:12:53 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f70a3f3804659841b8f5c6b7e4fbf18be8a040d1fe7d06667477830c8055014`  
		Last Modified: Tue, 26 Mar 2019 23:12:53 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f701cb9e9ef45c69a58ea00bb885dc6c5b3e03f1a38aea95e64e5538d6dc40c6`  
		Last Modified: Tue, 26 Mar 2019 23:12:52 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:8d4993f8fc735b137f444649b7ac773dfe09b35d3cb9ec1e6414a9713e7a8d99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49199484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169c20cb502598d4bdac3a879e39e40fa7acfbd985285f496bcb4cd7fd53c266`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:38:34 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 14:39:39 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Tue, 05 Mar 2019 14:40:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:40:02 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 14:40:03 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 14:40:03 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 14:40:04 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 14:40:04 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 14:40:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 14:40:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ba34841111970b21594ddeb49c390336f328ebac3318a5575d8499a8e953d7`  
		Last Modified: Tue, 05 Mar 2019 14:40:19 GMT  
		Size: 3.9 MB (3877184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a257a9e012d4e11a58e2c7bdd8b4149daa328ce1561e01a65487a21ca61c19`  
		Last Modified: Tue, 05 Mar 2019 14:40:55 GMT  
		Size: 26.0 MB (26015407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b26b6e0fb274faf9a2612fbacfd593cd68dbad3ff4346a34ca76c2f7866dca2`  
		Last Modified: Tue, 05 Mar 2019 14:40:47 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb61ac5a3212c84702a7975dd5e3f7ccdaef4f835a06aaa4e9d148ab43956573`  
		Last Modified: Tue, 05 Mar 2019 14:40:47 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047d62f13acc851368fb0c25dfc9827afdd4b46bd2d91a63ca3b655ad6277ac7`  
		Last Modified: Tue, 05 Mar 2019 14:40:47 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:a6c676a902aef811c1d944d3cecf8937c82f35e98f86b847260093e21e24e763
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50668275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764b50d5152d571352be46d6b76e168f255d4f289f2d589cdff170783a4549cc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:10:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 10:14:11 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Wed, 27 Mar 2019 10:14:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:14:57 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 10:14:58 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 10:15:00 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 10:15:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 10:15:02 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 10:15:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 10:15:04 GMT
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
	-	`sha256:5080de97b04ced8d4a758498756253ffccb5c2a5a9080b5898e44ccbc07ded7d`  
		Last Modified: Wed, 27 Mar 2019 10:16:05 GMT  
		Size: 26.2 MB (26223759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039930a30945899515da4541a73329cdc20486b6231cc26403ac9bb69112400e`  
		Last Modified: Wed, 27 Mar 2019 10:15:56 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5a867732c9038fea8b119e4dccf2e9b03a8aec5f34347511e1696fa8d9a4cc`  
		Last Modified: Wed, 27 Mar 2019 10:15:56 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797603fabadc31b1d10611d30fa90d34ffcc804f4adb60eee3d6225720849d4`  
		Last Modified: Wed, 27 Mar 2019 10:15:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
