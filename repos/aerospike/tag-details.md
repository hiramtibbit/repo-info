<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:4.3.1.12`](#aerospike43112)
-	[`aerospike:4.4.0.13`](#aerospike44013)
-	[`aerospike:4.5.0.8`](#aerospike4508)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:4.3.1.12`

**does not exist** (yet?)

## `aerospike:4.4.0.13`

**does not exist** (yet?)

## `aerospike:4.5.0.8`

**does not exist** (yet?)

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:004a6eab46597db4f77552b85d625f6cac5d24d49920e4be970d4a19afb431fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:ff950c781c4ce06d6196725176a44fbfa125b63c0d8d877a381aed732de9338f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49255224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97287bee110c72fe72b81da623f4425123ffd5c4005ce613acdbe89902e96095`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:17:33 GMT
ENV AEROSPIKE_VERSION=4.5.0.5
# Tue, 05 Mar 2019 03:17:33 GMT
ENV AEROSPIKE_SHA256=c1062f496cb3e16a22df31d87a04aeda5f1294d30208e25477d51c8973f0e6e6
# Tue, 05 Mar 2019 03:17:51 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 05 Mar 2019 03:17:51 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 05 Mar 2019 03:17:52 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 05 Mar 2019 03:17:52 GMT
VOLUME [/opt/aerospike/data]
# Tue, 05 Mar 2019 03:17:52 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 05 Mar 2019 03:17:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 03:17:53 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48eaea56337739a6dccb4cccf981f1836634df0be71343db9a7ff56decbbb23f`  
		Last Modified: Tue, 05 Mar 2019 03:19:02 GMT  
		Size: 26.8 MB (26757195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136864c6e114a3f2fda3b2ddf2f18df6b9c669de059e1a7b2ecf08eb9a8963dc`  
		Last Modified: Tue, 05 Mar 2019 03:18:55 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503c17f09a17b6c1b6338fbb27ea0991784a2b975df2caf23514492a85a109c8`  
		Last Modified: Tue, 05 Mar 2019 03:18:55 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
