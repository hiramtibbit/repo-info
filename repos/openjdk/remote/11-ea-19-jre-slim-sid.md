## `openjdk:11-ea-19-jre-slim-sid`

```console
$ docker pull openjdk@sha256:96b5a8999cad9919e50304fd134fdd34462c35f7606c0389f82cd1795ce82d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:11-ea-19-jre-slim-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:93223ac3b9d4c40f1d58f7cec76c42eb620cda4bb5314cf85f75a28d31c1cc8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100208460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec66ae9f658c645d1b5394d45361297c7a19122f2c602c11cb623cc22f22538`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:47 GMT
ADD file:f6f1518ff68043ed3ca8bae9ce07dcc969ae13bbdbfa6de70c869a9082f53e3c in / 
# Tue, 26 Jun 2018 21:23:47 GMT
CMD ["bash"]
# Mon, 02 Jul 2018 23:41:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:41:03 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jul 2018 23:41:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 02 Jul 2018 23:41:04 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 02 Jul 2018 23:41:04 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 02 Jul 2018 23:41:04 GMT
ENV JAVA_VERSION=11-ea+19
# Mon, 02 Jul 2018 23:41:05 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Mon, 02 Jul 2018 23:42:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:469c03946d59bad3e2f921c73851b892468df0e7358d603dc6cf4cf3754df71d`  
		Last Modified: Tue, 26 Jun 2018 21:34:51 GMT  
		Size: 26.1 MB (26124512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1ec3adc8c2a28e7aa43e510fcab377b6b0b4e63f8488d2f3a641956c8709af`  
		Last Modified: Tue, 03 Jul 2018 00:09:34 GMT  
		Size: 460.1 KB (460105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61519190b40cef4250e5befc23cf94759408d00b5a386907184483e450dce63a`  
		Last Modified: Tue, 03 Jul 2018 00:09:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc00490a3b859707fb4f6b6acd85ae0efaa67833fb2f0324c393f4d7a9617612`  
		Last Modified: Tue, 03 Jul 2018 00:09:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7980579279d45910ea9d89cc3f54914b859070b5873cfbb3998a1f6d32d64e1f`  
		Last Modified: Tue, 03 Jul 2018 00:15:57 GMT  
		Size: 73.6 MB (73623474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
