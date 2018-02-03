## `mono:slim`

```console
$ docker pull mono@sha256:83fc83df80cb714d74c0ed373255349ca18c5ea7d80f60405464db9cecf69f45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:02c31e444e1c3f893e7fd83dfce0517683c9de3124a2e7f702c7abe796fca44a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57395359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a177afcf138e9f920f2d1cddf31383c03d096c04913c0e825a14ef7870afa71f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 00:34:55 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 00:34:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 00:35:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3667f9c6c2571c6af3af9b1bc94db9fb16b99fc8efd02dd78af6cf229dec0c05`  
		Last Modified: Sat, 03 Feb 2018 00:36:57 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec49b73bdb3f7bb1206cac39416184cb19cb3755b485f4ae5b631d64eb5cbfe`  
		Last Modified: Sat, 03 Feb 2018 00:37:03 GMT  
		Size: 27.3 MB (27278772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
