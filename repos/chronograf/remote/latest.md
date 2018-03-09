## `chronograf:latest`

```console
$ docker pull chronograf@sha256:1ea17677cb4e54b3f5b2f9a5808408d6dc030889bb058a6b792f22c80b6ac67d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:33de62eb558069e56876947405494e236d0feefef6fab32bb0ba64c4801337ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47119253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9959fb64d0071c7dfac8ea6cc5468f9fbf6f93c8cdfe213efe6672554d76e042`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:04:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 09 Mar 2018 22:01:56 GMT
ENV CHRONOGRAF_VERSION=1.4.2.3
# Fri, 09 Mar 2018 22:02:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Mar 2018 22:02:09 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 09 Mar 2018 22:02:10 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 09 Mar 2018 22:02:10 GMT
EXPOSE 8888/tcp
# Fri, 09 Mar 2018 22:02:10 GMT
VOLUME [/var/lib/chronograf]
# Fri, 09 Mar 2018 22:02:11 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 09 Mar 2018 22:02:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Mar 2018 22:02:11 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54107f1437f450b3ff1b49b2b60af3608e533c05f235bafd6f30eae1228976b3`  
		Last Modified: Sat, 17 Feb 2018 07:16:01 GMT  
		Size: 4.5 MB (4500302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b389cfb0733b370e5ca9c647f0cf2d0f40195fd48bd1ca8b3008c718cc2f40f`  
		Last Modified: Fri, 09 Mar 2018 22:03:04 GMT  
		Size: 20.1 MB (20097785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a642e42f2fed818682d753cbee131b69cc98859d632cd89c9aa7fce764804ad`  
		Last Modified: Fri, 09 Mar 2018 22:03:00 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7a452d544e7c0720d87e2fae41dadfef6f86478c79ebb37b4df3ed2f716e9`  
		Last Modified: Fri, 09 Mar 2018 22:03:00 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1ae0bbc291a915571b54401f4232d1c6fbc74951388a17fb309203f4762637`  
		Last Modified: Fri, 09 Mar 2018 22:03:00 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:391f89f13cebb24ecb6b7353310cec0c13f8ff91cf01b061d3eb87d4598d76a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41536175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8256eaaf0935b2352fcab98bedaacd9e34a4ca92337f72cc17e4a2e7a88a48bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:11:32 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 01 Mar 2018 23:59:52 GMT
ENV CHRONOGRAF_VERSION=1.4.2.1
# Fri, 02 Mar 2018 00:00:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 02 Mar 2018 00:00:07 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 02 Mar 2018 00:00:07 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 02 Mar 2018 00:00:07 GMT
EXPOSE 8888/tcp
# Fri, 02 Mar 2018 00:00:08 GMT
VOLUME [/var/lib/chronograf]
# Fri, 02 Mar 2018 00:00:08 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 02 Mar 2018 00:00:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Mar 2018 00:00:09 GMT
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
	-	`sha256:b785b5207399beb766af17a556690772f2013519f9ac26c4710f85efd7217481`  
		Last Modified: Fri, 02 Mar 2018 00:00:32 GMT  
		Size: 18.4 MB (18352661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708a4be8424889c80af847568641da943afe046c30c1d5033355da598740127b`  
		Last Modified: Fri, 02 Mar 2018 00:00:26 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620db2e1a0ed28bd5a7dbf27eca34761e1fd3cc957cdc15ed88aaa480bf73f79`  
		Last Modified: Fri, 02 Mar 2018 00:00:26 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3c9a096be1f2b4f5164d2af6da58dd6a9be9077b3dcb782e082a2e73c8feac`  
		Last Modified: Fri, 02 Mar 2018 00:00:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:ccff3d142f406b202345445b98b953f40d1fa2eb341b08bd0528eb9960b8547d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43002270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cc1c4bc5a39fe80e9510905d46eba2d6a590c83ca81c5a08d2cbfb28722b65c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:20:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 01 Mar 2018 23:22:11 GMT
ENV CHRONOGRAF_VERSION=1.4.2.1
# Thu, 01 Mar 2018 23:22:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 01 Mar 2018 23:22:46 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 01 Mar 2018 23:22:47 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 01 Mar 2018 23:22:47 GMT
EXPOSE 8888/tcp
# Thu, 01 Mar 2018 23:22:48 GMT
VOLUME [/var/lib/chronograf]
# Thu, 01 Mar 2018 23:22:49 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 01 Mar 2018 23:22:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Mar 2018 23:22:50 GMT
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
	-	`sha256:f111295f3950b33b3f68f613c0bfc3aab9148856a80d324b1e8503218ce2d9e3`  
		Last Modified: Thu, 01 Mar 2018 23:23:22 GMT  
		Size: 18.6 MB (18555434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fce81c0dabeeeff04ac639f96ff542d9e2a43c70f633d080681fc56907e4a3`  
		Last Modified: Thu, 01 Mar 2018 23:23:16 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0904e3f3d8ed3ba72fd6401c6f2c00cc8a4d716bdace1a9614f6e6a404f8c4`  
		Last Modified: Thu, 01 Mar 2018 23:23:16 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86567d8e7dd7f6b0e3029be48a94894146d8cc33d4484022a77866b21bf0a94e`  
		Last Modified: Thu, 01 Mar 2018 23:23:16 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
