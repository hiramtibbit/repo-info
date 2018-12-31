## `mono:slim`

```console
$ docker pull mono@sha256:c76574d5ac01829faa21b88e840a90a6c44bb9a527a8b66a7cb83a11a12a7f55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:38cc687bbbe6f48b245d2a7c790ce6ae422d2b24529b6c9c54ddf7e24d771740
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83886840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef28f72e30957a59541893d3779169afddb1a0862b20e1d2f2a4a15bcd5f519`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:19:47 GMT
ENV MONO_VERSION=5.18.0.225
# Mon, 31 Dec 2018 21:19:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:20:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd7abdf58a11c2b85b4c6c610dfb7d5c825b1829162b0f99938aecc736ab46`  
		Last Modified: Mon, 31 Dec 2018 21:35:09 GMT  
		Size: 244.4 KB (244440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4720eb7d76dc07f11ffed25c898580f9a8c17b2d224c59a7c893d6c6052677`  
		Last Modified: Mon, 31 Dec 2018 21:35:21 GMT  
		Size: 61.1 MB (61149484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
