## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:b9c21b620f623300ed9f3a1795d3c78396d4f2203b8792cc6d948a7baec5d1f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:bc2c9c06b9aa8aa2dfd062414a1848d489ab7b193169b4fd0bbd0b62fd3f433d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14129708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b257f70b056a3a25e1904a7a6e6c6cbefb0489f8f52096e8880754cf40080224`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 22:45:45 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Tue, 11 Sep 2018 22:45:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 11 Sep 2018 22:45:51 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 11 Sep 2018 22:45:51 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 11 Sep 2018 22:45:51 GMT
EXPOSE 8888/tcp
# Tue, 11 Sep 2018 22:45:51 GMT
VOLUME [/var/lib/chronograf]
# Tue, 11 Sep 2018 22:45:52 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 11 Sep 2018 22:45:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 22:45:52 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2349a8a7f7bdda0cb09368e8145f2e6cdfab26381349afa12e6f435bf8c5effc`  
		Last Modified: Tue, 11 Sep 2018 22:46:26 GMT  
		Size: 11.7 MB (11737197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32190bf4d91cd0df282de75348fb6f823d05dedb6ce78fa6f8a69f239c2803b`  
		Last Modified: Tue, 11 Sep 2018 22:46:23 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13155af12dbcb1433aa3b22a1b82cd329081a93de9cd81e0c29460cd04873c79`  
		Last Modified: Tue, 11 Sep 2018 22:46:25 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84686f6b89be33c683dd50ad1c14aab8c459587363059a9b34f835038e7883b`  
		Last Modified: Tue, 11 Sep 2018 22:46:23 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
