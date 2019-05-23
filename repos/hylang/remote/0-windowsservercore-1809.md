## `hylang:0-windowsservercore-1809`

```console
$ docker pull hylang@sha256:bcf39c5fb274a5977d1d84ccdd417750f243785d421bd7ebc2c97790aa261c26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64

### `hylang:0-windowsservercore-1809` - windows version 10.0.17763.504; amd64

```console
$ docker pull hylang@sha256:2a0ed302c8bad671451aceb93a4f56891111b172a1d1401a06f98d1f1c22fc30
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2134423162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c23f6ed1b95797da4d80d611cdae6c249ae140e3bb6c0a0a46d5f3dfc60f5f6a`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:18:22 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 22 May 2019 14:18:23 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 22 May 2019 14:20:35 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:20:36 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:21:40 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:21:42 GMT
CMD ["python"]
# Thu, 23 May 2019 00:15:42 GMT
ENV HY_VERSION=0.17.0
# Thu, 23 May 2019 00:16:34 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Thu, 23 May 2019 00:16:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbaf5590486c3e4642731a25025419984b73ffd09eba4113dea6ef927820d17`  
		Last Modified: Wed, 22 May 2019 14:51:57 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b458fed7a408f6e7edbd491c7eaffd6568473ec9b69f6a1e6c5c391a8370af`  
		Last Modified: Wed, 22 May 2019 14:51:53 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fe1955fe1d67ce808616d37f5c1d852a0809c7754293b66e38bb7ea1b4e2e6`  
		Last Modified: Wed, 22 May 2019 14:52:19 GMT  
		Size: 49.0 MB (49005139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca38395bdf7922840885404e348a9053fb5b4fb691a3d5cb786c0273d85548e`  
		Last Modified: Wed, 22 May 2019 14:51:54 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a732ed8d9fea79b36d2c4b3848d6ac6c953a08404c346ec3baf3972c33bf0c59`  
		Last Modified: Wed, 22 May 2019 14:52:05 GMT  
		Size: 5.1 MB (5117564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55a72e418aa1d0a229cc39db03e67a166027994cb18d4b47b0e5ffa06840b50`  
		Last Modified: Wed, 22 May 2019 14:51:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dc5695efae18cce6e15223013bfa119349d2acadc9b6bb0a03abcc01223304`  
		Last Modified: Thu, 23 May 2019 00:26:49 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0342907d923eefe72336de154f1f3b3dd7a2793a8a7df5121669f1801bcf6ef8`  
		Last Modified: Thu, 23 May 2019 00:26:52 GMT  
		Size: 1.2 MB (1165375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b536521efa2f729a377d0c0d93eb1c34d2add6da6b253f8a6c5c4feda65b40`  
		Last Modified: Thu, 23 May 2019 00:26:49 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
