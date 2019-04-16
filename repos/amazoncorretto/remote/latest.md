## `amazoncorretto:latest`

```console
$ docker pull amazoncorretto@sha256:51a23a48e37c947ecd0de28bc459ededae51e308b385875c10dffc64e2b5da81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:latest` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d0a0cd11e4380164bb336244fae60ee2172349890416ff94397214848d0905e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182597514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595e5a41485943620a3355c2880844bd897eacbf562e8216e79e0e5c9536de60`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Apr 2019 22:19:18 GMT
ARG rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-1.x86_64.rpm
# Tue, 16 Apr 2019 22:19:18 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.1
# Tue, 16 Apr 2019 22:19:19 GMT
ARG key=484CDE7BB81097879E61E28990322C5AAB2654F9
# Tue, 16 Apr 2019 22:20:08 GMT
# ARGS: key=484CDE7BB81097879E61E28990322C5AAB2654F9 path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.1 rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-1.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Tue, 16 Apr 2019 22:20:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto.x86_64
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23713ac837c69fbae21056c5939543060dfb2325d4c9cfe368ab173c56ff808b`  
		Last Modified: Tue, 16 Apr 2019 22:21:47 GMT  
		Size: 121.3 MB (121287769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
