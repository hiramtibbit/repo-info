## `python:windowsservercore-1709`

```console
$ docker pull python@sha256:1f91ed09a417f4be429a8c6187cb71089805fb2366db5c4ee39e333a41bda59d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.248; amd64

### `python:windowsservercore-1709` - windows version 10.0.16299.248; amd64

```console
$ docker pull python@sha256:87589b761a4c0ca41b0b58641b3c2876732511e087f2d4e5705219c735367e52
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3071814971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e3b027b6935ee44a04db86ee0060d245f847551b4e51fd2c943014aa2bc3fad`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 17:39:51 GMT
ENV PYTHON_VERSION=3.6.4
# Wed, 14 Feb 2018 17:39:52 GMT
ENV PYTHON_RELEASE=3.6.4
# Wed, 14 Feb 2018 17:42:11 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 17:42:12 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Feb 2018 17:43:36 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 17:43:37 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e145bacf174c0fdf788d2f7b287b7376baecc5993ddc3226fc183a4048df5e`  
		Last Modified: Wed, 14 Feb 2018 17:56:05 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d555c31e451d40b6805874d0ea700ff215824a4cf5c2fed1db59ef259f6742c`  
		Last Modified: Wed, 14 Feb 2018 17:56:02 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae938f6259fdb020f82661dbe7cc1459da46e281bcae7935f8b9e6a6e4bcb31`  
		Last Modified: Wed, 14 Feb 2018 17:56:27 GMT  
		Size: 47.3 MB (47273358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08909e2d616debf856ab935839ba6b530e0cfeb99abfe04ef666b550b7c365de`  
		Last Modified: Wed, 14 Feb 2018 17:56:00 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fa3cc2053a86c686b0e62ce34f616fa5f4d1ef9a02bb8b561f029d507f3d75`  
		Last Modified: Wed, 14 Feb 2018 17:56:13 GMT  
		Size: 9.1 MB (9057230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13353cbec327df386ac8a42b2e2f75ceb336d22dfb0624698495dadffd2db259`  
		Last Modified: Wed, 14 Feb 2018 17:56:00 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
