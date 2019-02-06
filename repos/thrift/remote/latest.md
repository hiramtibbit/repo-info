## `thrift:latest`

```console
$ docker pull thrift@sha256:c6aa68cd74161a1cba3e5d9bf7aadddce0c88d98ce119dd4e71fecf0661303e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:latest` - linux; amd64

```console
$ docker pull thrift@sha256:701bb8c493c1f3ed4454b764e64879075ed62f351091297950adfc129b775791
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52472347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c041facafe5026d334ea991f16ee3f9fdbcffcfdc97506ff905ed8f92bb3706c`
-	Default Command: `["thrift"]`

```dockerfile
# Wed, 06 Feb 2019 03:31:30 GMT
ADD file:8cf36f5c76ea3119278e91016148dd680311000ba59b5fa986b707f000a40906 in / 
# Wed, 06 Feb 2019 03:31:30 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 04:54:28 GMT
LABEL authors=Adam Hawkins <hi@ahawkins.me>
# Wed, 06 Feb 2019 04:54:28 GMT
ENV THRIFT_VERSION=0.11.0
# Wed, 06 Feb 2019 04:59:13 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Feb 2019 04:59:13 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:2eaed095b90d08fb6a1870ea73a7bff5cd989c5969dd5ed3be88483796869559`  
		Last Modified: Wed, 06 Feb 2019 03:36:56 GMT  
		Size: 39.3 MB (39339703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65420881ff141528d863b5478ffd697ef81838dec154ed3a65811205ceb13a7`  
		Last Modified: Wed, 06 Feb 2019 04:59:51 GMT  
		Size: 13.1 MB (13132644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
