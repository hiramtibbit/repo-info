## `python:windowsservercore-1709`

```console
$ docker pull python@sha256:91745fe2744d19b8ff5470247e0f14dcb2aacb6ff29bce20d2b197859f3be2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.492; amd64

### `python:windowsservercore-1709` - windows version 10.0.16299.492; amd64

```console
$ docker pull python@sha256:8ed246a0a34e3e4f045e2aa144607b255905ba12ef24b9412268a71cd83f68d6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3155581947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc57c5580512d4b3be05eb4796f826e037d4f1b51c544b20abfe6fd722406cf`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 11 Jun 2018 20:38:48 GMT
RUN Install update 10.0.16299.492
# Tue, 03 Jul 2018 00:32:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 04 Jul 2018 09:19:33 GMT
ENV PYTHON_VERSION=3.7.0
# Wed, 04 Jul 2018 09:19:34 GMT
ENV PYTHON_RELEASE=3.7.0
# Wed, 04 Jul 2018 09:22:15 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 04 Jul 2018 09:22:16 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 04 Jul 2018 09:23:38 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 04 Jul 2018 09:23:39 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3b9c63e313c8b374d5767c602fd6f2b947a3f1df9a8f8c5fcecb2fa6b1cfa968`  
		Last Modified: Wed, 13 Jun 2018 01:11:53 GMT  
		Size: 823.6 MB (823576248 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3989f186f0fc841be4fd06c5f4d58afe814bf92ffa0940def6b8d21ea38c223f`  
		Last Modified: Tue, 03 Jul 2018 01:22:20 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f9736204944f3fafacf04523072bbd7956f0baf787c52f52e124570a1d5f40`  
		Last Modified: Wed, 04 Jul 2018 09:42:19 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b05e863d9a07efe4d6082f38f3df0b561aad707286b45b8ed0fcdb310f1cd88`  
		Last Modified: Wed, 04 Jul 2018 09:42:15 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e358f0d81289d047e139c12d37e3cff40d21251fee9d87e1f505e2135872f1e`  
		Last Modified: Wed, 04 Jul 2018 09:42:37 GMT  
		Size: 48.2 MB (48241198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c1a936c025f68ded59b2809ac01c9d7de4e0aa5190c3b8827b8077a6992605`  
		Last Modified: Wed, 04 Jul 2018 09:42:16 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdd55ebcdd7a6ba5e519395cc048e06f88f21c044848eabb24837152b186ffe`  
		Last Modified: Wed, 04 Jul 2018 09:42:27 GMT  
		Size: 9.5 MB (9457952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39072c86d538e7054c77d31046d09788ad329accdfe07cf8f851b69b5d829804`  
		Last Modified: Wed, 04 Jul 2018 09:42:15 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
