## `python:2-windowsservercore-1709`

```console
$ docker pull python@sha256:fa260a925c9cc3453bd5c645b518192550e7fabb4f7e52a5608d2bff5ca5242f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1029; amd64

### `python:2-windowsservercore-1709` - windows version 10.0.16299.1029; amd64

```console
$ docker pull python@sha256:411ad93430b3de7034b8a47ced7953aa55478484be800f404a60f4e57a5c3efa
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3265713423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d954faf03efb43d1c560a821bdd81224fbd2d602e7216c33ec7f0a0b5751fa`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Sat, 16 Mar 2019 09:35:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 20 Mar 2019 10:17:29 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 20 Mar 2019 10:17:30 GMT
ENV PYTHON_RELEASE=2.7.16
# Wed, 20 Mar 2019 10:19:49 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 10:19:51 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 20 Mar 2019 10:21:24 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 20 Mar 2019 10:22:20 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 20 Mar 2019 10:22:22 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7f4a716683dc03db3521ed040924c24ea9bd17c7f134c09bf22e33f6af33ade8`  
		Last Modified: Mon, 11 Mar 2019 21:13:17 GMT  
		Size: 936.6 MB (936551125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:81856e9377a060d58cb8798fbc456fc8414158afec682bdd098149edc0a7d1fc`  
		Last Modified: Sat, 16 Mar 2019 10:41:06 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89feacbfdb1d9a49d38977c673856dd7576334a5cfd9bfbc88d208f9105b2ffa`  
		Last Modified: Wed, 20 Mar 2019 11:12:56 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4ed222973b3f138a3715882ffe5511fc2d763891bd5258c055c0a4725afe1`  
		Last Modified: Wed, 20 Mar 2019 11:12:56 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726b924bd36e53da7e47f9957f4128063d77bf91e182b4912169cb91a1e8c964`  
		Last Modified: Wed, 20 Mar 2019 11:13:19 GMT  
		Size: 38.8 MB (38803286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dd79d74647e2a273fb792f636f8ca6bcf9745632ae5f9dff62a98913653b24`  
		Last Modified: Wed, 20 Mar 2019 11:12:53 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a82b0da1daeb13beb6470082514f75f469f1af309dd0959234d990566d2faa1`  
		Last Modified: Wed, 20 Mar 2019 11:13:09 GMT  
		Size: 9.3 MB (9265011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169a952c9a73211cd235970d8df69010263e12b8257f60f26d4e15c52d622399`  
		Last Modified: Wed, 20 Mar 2019 11:12:56 GMT  
		Size: 6.8 MB (6787403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77a45e887b4f40038015df939fb8e7925f873f9e2f09c038574b42e08a87764`  
		Last Modified: Wed, 20 Mar 2019 11:12:53 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
