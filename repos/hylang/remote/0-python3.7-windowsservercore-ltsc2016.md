## `hylang:0-python3.7-windowsservercore-ltsc2016`

```console
$ docker pull hylang@sha256:73681e05d2506c8728bffbf1e3555f1c01eb5c9e219d4da3bd8514e5de54a3af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `hylang:0-python3.7-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull hylang@sha256:f9d11f8e69832a58ed48637057753ae163614ed0fcf14bd69f5ec7ed598e7017
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5765599812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5906cf4a460fd7f93976a2ae764a1e1d7984391011979890e1d3fbac9ec03a1`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:10:09 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 22 May 2019 14:10:10 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 22 May 2019 14:12:46 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:12:48 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:14:27 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:14:29 GMT
CMD ["python"]
# Thu, 23 May 2019 00:17:40 GMT
ENV HY_VERSION=0.17.0
# Thu, 23 May 2019 00:18:57 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Thu, 23 May 2019 00:18:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:238abb146382d28000f03a82c40be99cbfac99a1480f9d23f8a6420cafc6b083`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a568c2ae299aa0ae591ce11919294889b7b84535ddbe09f43e0271f5a2cace78`  
		Last Modified: Wed, 22 May 2019 14:49:39 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc263c8d673cdc18270397249c1bd88841a1f0d7b17c2a2c61bc38e71da242`  
		Last Modified: Wed, 22 May 2019 14:49:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d1e94d709941609120cf4a8eed6998f133c5efe37a91ebd86bd0ec9cf227ea`  
		Last Modified: Wed, 22 May 2019 14:50:40 GMT  
		Size: 49.8 MB (49828109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af13c57134f4fab8ea4d3a265eb876e98a912c64608db2e13ff79e2c9cf339cf`  
		Last Modified: Wed, 22 May 2019 14:49:36 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d476079965e5bbf4c45d703dca5f2220b5a53c7aecb88f205005b68907df5373`  
		Last Modified: Wed, 22 May 2019 14:49:49 GMT  
		Size: 10.0 MB (9970888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bf93c8363acae5ca1a3828f15600da657a94de9c9ca02a250b408601d16afa`  
		Last Modified: Wed, 22 May 2019 14:49:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09592c2b249c410b1c4c95aa7f3b0a5ffa2695db2f64a93de573281c388dfea2`  
		Last Modified: Thu, 23 May 2019 00:28:21 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873573662574e59a4ba521f29c347d6691b42f4cfc49a460e2db3b50eec06475`  
		Last Modified: Thu, 23 May 2019 00:28:28 GMT  
		Size: 6.0 MB (6004247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328b290c5e2ab8a1cf46538b70c6aef971ade41d0b32998166ec1edae503e722`  
		Last Modified: Thu, 23 May 2019 00:28:21 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
