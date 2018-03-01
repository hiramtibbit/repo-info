## `kong:latest`

```console
$ docker pull kong@sha256:225fea7355e6dc845cfb3f02307237be9aba4d8f852819ce067c96333dde0538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:ff14aa64de3b38c18e003199fb800cdda869ddbfe27fd321a7c1c9b1181f2d90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79379079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d5d200351546af4b755ab8b7037236e834ab0e478f7275d083e2f9f845dcbe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 08 Jan 2018 19:58:26 GMT
ADD file:6bba01fe946852a560a939627ba0bd1b219aaf9abc538d9e2d8470d475c5a399 in / 
# Mon, 08 Jan 2018 19:58:27 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180107
# Mon, 08 Jan 2018 19:58:27 GMT
CMD ["/bin/bash"]
# Mon, 08 Jan 2018 20:28:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 01 Mar 2018 18:10:30 GMT
ENV KONG_VERSION=0.12.2
# Thu, 01 Mar 2018 18:10:44 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 01 Mar 2018 18:10:44 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 01 Mar 2018 18:10:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Mar 2018 18:10:45 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 01 Mar 2018 18:10:45 GMT
STOPSIGNAL [SIGTERM]
# Thu, 01 Mar 2018 18:10:45 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:af4b0a2388c69010cf675c050e51cb1fabbdf2303f955c31805b280324fd4523`  
		Last Modified: Mon, 08 Jan 2018 20:09:37 GMT  
		Size: 73.7 MB (73673211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60d79b10ccb1b96cff0317dce0428491c17d0091bff86b96d43cb0d277becad`  
		Last Modified: Thu, 01 Mar 2018 18:27:43 GMT  
		Size: 5.7 MB (5705545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9261ce38e5a918bd6bcb215f06a711a2cf95933b1137be1fbe186d989bb6a16e`  
		Last Modified: Thu, 01 Mar 2018 18:27:42 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
