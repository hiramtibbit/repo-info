## `python:rc-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:6dd61fccf60d4d2d2f389942a9c60955af3387c0759f0ea0c1af1331f9851329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `python:rc-windowsservercore-ltsc2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull python@sha256:6075b9353ff69e6c9d260388d9543b413ae44c22b2cc6e5b665df1ebf2d3fb9a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5451399752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9627219b58879cb0b5b59e75f05b762d4de8d15e48fe8fd6fa62ffde7f54567c`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:53:23 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 02:24:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 16:25:58 GMT
ENV PYTHON_VERSION=3.7.0b2
# Wed, 14 Mar 2018 16:25:59 GMT
ENV PYTHON_RELEASE=3.7.0
# Wed, 14 Mar 2018 16:29:03 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Tue, 20 Mar 2018 16:26:06 GMT
ENV PYTHON_PIP_VERSION=9.0.2
# Tue, 20 Mar 2018 16:28:03 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 20 Mar 2018 16:28:05 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:133e38d368dd63f5c9da410ed1656fa9c1f3322a661906f3c2a86b4cd3ff292b`  
		Last Modified: Tue, 13 Mar 2018 00:53:23 GMT  
		Size: 1.3 GB (1319194954 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2b7b9f0500dd2fdcc737e4b1fc4f4a71cddd6f8f02c79660fe8e4d2815db6846`  
		Last Modified: Wed, 14 Mar 2018 16:54:26 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80ec40a60ed09138926f0b3acdb65539603d924c1a843be23a664e50d7f1b7`  
		Last Modified: Wed, 14 Mar 2018 16:54:26 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fcd468497b41ce080efaa99c8c2f83589570ee50d3427bf72bda59325c4359`  
		Last Modified: Wed, 14 Mar 2018 16:54:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa1b128c0334a8785fa73e0b73d07950ef96dfb6d9ceed88dddbfff14bb281f`  
		Last Modified: Wed, 14 Mar 2018 16:54:56 GMT  
		Size: 52.5 MB (52459961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d0b408132dc1e60cd7890e2120ce9b64ef3a66383af25855fe944068569f01`  
		Last Modified: Tue, 20 Mar 2018 16:40:29 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3661d1389d23fcc061c27e4665a2febe7b09f536d9b0a5480890a5e8e5a2e769`  
		Last Modified: Tue, 20 Mar 2018 16:40:37 GMT  
		Size: 9.8 MB (9752955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd52b2a38f6a8f15720731641ad94bd1e96b808e592ecaf3f97f992ba499b1a`  
		Last Modified: Tue, 20 Mar 2018 16:40:28 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
