SET PYTHONPATH=%~dp0\..\..

set sphinxdir=C:\tools\python\python38\scripts

set doc_root=.
set code_source=..\..\gdesk

set doc_source=%doc_root%\source
set doc_html=%doc_root%\build\html

set pwd=%CD%
echo %doc_source%

%sphinxdir%\sphinx-apidoc.exe --separate -f -o %doc_source% %code_source% > sphinx-apidoc.log 2>&1
%sphinxdir%\sphinx-build.exe -E -b html -n %doc_source% %doc_html% > sphinx-build-html.log 2>&1


cd %pwd%

pause