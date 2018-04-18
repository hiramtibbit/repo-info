## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:4e52cab56f3d15a54e1d7878cbf8fc4c0f94caea0d8106380d52432e3f53d25b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:29bf9c2bf03295974a5f0d7c40de8482851fff052805f26751fcdd9750549b86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14585745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9e771506d92e69f3ae785fc7f35752af7d4925a4d725abc4e92b3b4499bcc5`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 18 Apr 2018 01:00:48 GMT
COPY file:46586aa1379f413b932316cdcf61909d77a2ae441f3ed57259d92571aa8e4e32 in / 
# Wed, 18 Apr 2018 01:00:48 GMT
EXPOSE 80/tcp
# Wed, 18 Apr 2018 01:00:48 GMT
ENTRYPOINT ["/traefik"]
# Wed, 18 Apr 2018 01:00:48 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.0-rc6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de216640819140493d227298e292100648dc8240f329d53645675ee35969f9f3`  
		Last Modified: Wed, 18 Apr 2018 01:11:52 GMT  
		Size: 14.4 MB (14430593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
