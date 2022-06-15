@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  untitled startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and UNTITLED_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\untitled-0.0.1.jar;%APP_HOME%\lib\arrow-fx-coroutines-jvm-1.0.1.jar;%APP_HOME%\lib\arrow-fx-stm-jvm-1.0.1.jar;%APP_HOME%\lib\arrow-core-jvm-1.0.1.jar;%APP_HOME%\lib\ktor-server-content-negotiation-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-netty-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-host-common-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-server-core-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-client-cio-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-client-websockets-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-client-core-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-serialization-kotlinx-json-jvm-2.0.2.jar;%APP_HOME%\lib\kotlin-logging-jvm-2.0.11.jar;%APP_HOME%\lib\ktor-websocket-serialization-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-serialization-kotlinx-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-serialization-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-events-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-http-cio-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-websockets-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-http-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-network-tls-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-network-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-utils-jvm-2.0.2.jar;%APP_HOME%\lib\ktor-io-jvm-2.0.2.jar;%APP_HOME%\lib\kotlinx-coroutines-jdk8-1.6.1.jar;%APP_HOME%\lib\kotlinx-coroutines-core-jvm-1.6.1.jar;%APP_HOME%\lib\kotlinx-coroutines-slf4j-1.6.1.jar;%APP_HOME%\lib\arrow-continuations-jvm-1.0.1.jar;%APP_HOME%\lib\arrow-annotations-jvm-1.0.1.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.6.21.jar;%APP_HOME%\lib\adapter-rxjava2-2.9.0.jar;%APP_HOME%\lib\converter-gson-2.9.0.jar;%APP_HOME%\lib\retrofit-2.9.0.jar;%APP_HOME%\lib\okhttp-3.14.9.jar;%APP_HOME%\lib\logback-classic-1.2.10.jar;%APP_HOME%\lib\mockk-1.12.4.jar;%APP_HOME%\lib\gson-2.9.0.jar;%APP_HOME%\lib\rxandroid-2.0.1.aar;%APP_HOME%\lib\wiremock-jre8-2.33.1.jar;%APP_HOME%\lib\kotlinx-serialization-json-jvm-1.3.3.jar;%APP_HOME%\lib\mockk-agent-jvm-1.12.4.jar;%APP_HOME%\lib\mockk-common-1.12.4.jar;%APP_HOME%\lib\mockk-dsl-jvm-1.12.4.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.6.21.jar;%APP_HOME%\lib\kotlin-reflect-1.6.21.jar;%APP_HOME%\lib\mockk-agent-common-1.12.4.jar;%APP_HOME%\lib\mockk-agent-api-1.12.4.jar;%APP_HOME%\lib\mockk-dsl-1.12.4.jar;%APP_HOME%\lib\kotlinx-serialization-core-jvm-1.3.3.jar;%APP_HOME%\lib\kotlin-stdlib-1.6.21.jar;%APP_HOME%\lib\okio-1.17.2.jar;%APP_HOME%\lib\logback-core-1.2.10.jar;%APP_HOME%\lib\httpclient5-5.1.3.jar;%APP_HOME%\lib\json-path-2.7.0.jar;%APP_HOME%\lib\handlebars-helpers-4.3.0.jar;%APP_HOME%\lib\handlebars-4.3.0.jar;%APP_HOME%\lib\slf4j-api-1.7.36.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.6.21.jar;%APP_HOME%\lib\rxjava-2.0.1.jar;%APP_HOME%\lib\reactive-streams-1.0.3.jar;%APP_HOME%\lib\jetty-alpn-java-server-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-alpn-openjdk8-server-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-alpn-server-9.4.46.v20220331.jar;%APP_HOME%\lib\http2-server-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-webapp-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-servlet-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-security-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-server-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-servlets-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-proxy-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-alpn-java-client-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-alpn-openjdk8-client-9.4.46.v20220331.jar;%APP_HOME%\lib\guava-31.1-jre.jar;%APP_HOME%\lib\jackson-databind-2.13.2.2.jar;%APP_HOME%\lib\jackson-annotations-2.13.2.jar;%APP_HOME%\lib\jackson-core-2.13.2.jar;%APP_HOME%\lib\xmlunit-legacy-2.9.0.jar;%APP_HOME%\lib\xmlunit-placeholders-2.9.0.jar;%APP_HOME%\lib\xmlunit-core-2.9.0.jar;%APP_HOME%\lib\json-unit-core-2.33.0.jar;%APP_HOME%\lib\asm-9.3.jar;%APP_HOME%\lib\jopt-simple-5.0.4.jar;%APP_HOME%\lib\commons-lang3-3.12.0.jar;%APP_HOME%\lib\commons-fileupload-1.4.jar;%APP_HOME%\lib\commons-io-2.11.0.jar;%APP_HOME%\lib\json-smart-2.4.8.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.19.jar;%APP_HOME%\lib\config-1.4.1.jar;%APP_HOME%\lib\jansi-2.4.0.jar;%APP_HOME%\lib\netty-codec-http2-4.1.77.Final.jar;%APP_HOME%\lib\alpn-api-1.1.3.v20160715.jar;%APP_HOME%\lib\netty-transport-native-kqueue-4.1.77.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.77.Final.jar;%APP_HOME%\lib\objenesis-3.2.jar;%APP_HOME%\lib\byte-buddy-1.12.6.jar;%APP_HOME%\lib\byte-buddy-agent-1.12.6.jar;%APP_HOME%\lib\jetty-alpn-client-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-client-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-continuation-9.4.46.v20220331.jar;%APP_HOME%\lib\http2-common-9.4.46.v20220331.jar;%APP_HOME%\lib\http2-hpack-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-http-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-io-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-util-ajax-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-xml-9.4.46.v20220331.jar;%APP_HOME%\lib\jetty-util-9.4.46.v20220331.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.12.0.jar;%APP_HOME%\lib\error_prone_annotations-2.11.0.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\httpcore5-h2-5.1.3.jar;%APP_HOME%\lib\httpcore5-5.1.3.jar;%APP_HOME%\lib\commons-codec-1.15.jar;%APP_HOME%\lib\hamcrest-core-2.2.jar;%APP_HOME%\lib\netty-codec-http-4.1.77.Final.jar;%APP_HOME%\lib\netty-handler-4.1.77.Final.jar;%APP_HOME%\lib\netty-codec-4.1.77.Final.jar;%APP_HOME%\lib\netty-transport-classes-kqueue-4.1.77.Final.jar;%APP_HOME%\lib\netty-transport-classes-epoll-4.1.77.Final.jar;%APP_HOME%\lib\netty-transport-native-unix-common-4.1.77.Final.jar;%APP_HOME%\lib\netty-transport-4.1.77.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.77.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.77.Final.jar;%APP_HOME%\lib\netty-common-4.1.77.Final.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\hamcrest-2.2.jar;%APP_HOME%\lib\accessors-smart-2.4.8.jar


@rem Execute untitled
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %UNTITLED_OPTS%  -classpath "%CLASSPATH%" com.me.postfetcher.ApplicationKt %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable UNTITLED_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%UNTITLED_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
