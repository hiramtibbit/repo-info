## `amazoncorretto:latest`

```console
$ docker pull amazoncorretto@sha256:9cfd4d23a4ea14e1102f8403e0b3445c4ae6f9ff1f80f00f95ca6ff7e11bd729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:latest` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5732cc117eb41bbfad50bc92456dfaf7299cf8d74437b42b9cb8f77f3dcde8d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182565092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d228f0cf0d7c1607630a7ee9a4bad477e1c10b2fe6c61857e2afe16063cd897d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:39:41 GMT
ARG rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
# Thu, 23 May 2019 22:39:41 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2
# Thu, 23 May 2019 22:39:42 GMT
ARG key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B
# Thu, 23 May 2019 22:40:05 GMT
# ARGS: key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2 rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Thu, 23 May 2019 22:40:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d042b5f8e146b4ed8e5e7f5082aea6e9392d3ac1eb8fa75f7c4b12b48cfbf584`  
		Last Modified: Thu, 23 May 2019 22:40:58 GMT  
		Size: 121.3 MB (121279915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
