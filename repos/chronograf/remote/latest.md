## `chronograf:latest`

```console
$ docker pull chronograf@sha256:8f61da3f06f0ca23f9868b13ff884b8be435fa01aee6665ea3fcb7ddb36600fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:6216bd41c1cc00ea8329d024de24984696f2fe6efeaa3ce5b80c3b80edcc478e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47111531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c88b323debf221c8d4ff311c77bac6d6ffc90cde6d4049854d10ca8973072c7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:18:30 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 05:19:02 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Wed, 14 Mar 2018 05:19:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 05:19:13 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 14 Mar 2018 05:19:13 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 14 Mar 2018 05:19:13 GMT
EXPOSE 8888/tcp
# Wed, 14 Mar 2018 05:19:14 GMT
VOLUME [/var/lib/chronograf]
# Wed, 14 Mar 2018 05:19:14 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 14 Mar 2018 05:19:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 05:19:15 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3360a9607a577c345628fa69b5c0b4013e5cca0177cdc9880ffd041bafcb625`  
		Last Modified: Wed, 14 Mar 2018 05:19:37 GMT  
		Size: 4.5 MB (4500353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2c1b623fe97a69bfa1fad51db4fc0f694e2d03a62b80146fee23af279936ab`  
		Last Modified: Wed, 14 Mar 2018 05:20:35 GMT  
		Size: 20.1 MB (20097805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51ffc67a50d8cf0c47a3bc74c74ef496b84b5dad4f2f043007a3dccac4f491f`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da5293aac87c81ef9fca3a2f623a5cae99276100a96e1b437cce085970b282a`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8a55a8f25869048fcf367de3ac41d7999c3a2bc1edfce5a1e8745b04597d9`  
		Last Modified: Wed, 14 Mar 2018 05:20:32 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:367be76ac7a674367882d384b35563dfcb29d1b1e0cf1979ee30dae92533f1fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41536281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7341edbca300a783c5d5afaaba491f22c4cd47589e880e8d9bd05d5255349c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:11:32 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 09 Mar 2018 23:59:53 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Sat, 10 Mar 2018 00:00:07 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 10 Mar 2018 00:00:07 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 10 Mar 2018 00:00:08 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 10 Mar 2018 00:00:08 GMT
EXPOSE 8888/tcp
# Sat, 10 Mar 2018 00:00:08 GMT
VOLUME [/var/lib/chronograf]
# Sat, 10 Mar 2018 00:00:09 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 10 Mar 2018 00:00:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Mar 2018 00:00:09 GMT
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
	-	`sha256:4bbbe99f74fa5c1444980f35ad2b68096a3fc075c31b550e90c0ed9f1d991a08`  
		Last Modified: Sat, 10 Mar 2018 00:00:31 GMT  
		Size: 18.4 MB (18352758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c1bc651dcb93bf0da8ede4482305de5c78f00a7c22fea0a746ed59393e32a9`  
		Last Modified: Sat, 10 Mar 2018 00:00:25 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72216fcea22f4a406ae1cc456ba51fb440e5db22b2c87fd4b02da2d55654a9e5`  
		Last Modified: Sat, 10 Mar 2018 00:00:25 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2642d46df83586f9b276d1f035d2dd4bcf9fd6e46ee3ead264b92ae5b0f3885`  
		Last Modified: Sat, 10 Mar 2018 00:00:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8e459ef79cc1a2f8545163950671ccdad062421ca3c6f10a2a343010ac248eb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43002267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64990e01fff618e9b731d741a3c8aee75dce055411dd6a535eabbc9481e1c8f0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:20:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 09 Mar 2018 23:22:12 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Fri, 09 Mar 2018 23:22:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Mar 2018 23:22:49 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 09 Mar 2018 23:22:50 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 09 Mar 2018 23:22:51 GMT
EXPOSE 8888/tcp
# Fri, 09 Mar 2018 23:22:51 GMT
VOLUME [/var/lib/chronograf]
# Fri, 09 Mar 2018 23:22:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 09 Mar 2018 23:22:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Mar 2018 23:22:53 GMT
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
	-	`sha256:e5f9d398c90f54ecfec4496195187d8553c22f00e9f2da899d21a45c1528729f`  
		Last Modified: Fri, 09 Mar 2018 23:23:25 GMT  
		Size: 18.6 MB (18555427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c0c9c886b307d5cd08778e4c2806f6a68a2d0e982d07251f43367a29e6f37d`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f0e72119e4a9152cc1034978bb9b5bcab167e5159745341d6056373b2b7f53`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b191568c2e66925ce50c579fc706295df738c642a03a568c8253d72cd3bea8f4`  
		Last Modified: Fri, 09 Mar 2018 23:23:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
