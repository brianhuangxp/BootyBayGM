@echo off
rd /s /Q bbgm-assembly\target
rd /s /Q bbgm-assembly\src\main\webapp\compass\.sass-cache
rd /s /Q bbgm-assembly\src\main\webapp\WEB-INF\classes
rd /s /Q bbgm-common\target
rd /s /Q bbgm-import\target
rd /s /Q bbgm-ms-core\target
rd /s /Q bbgm-home\target
rd /s /Q BootyBayImport
rd /s /Q localStorage
md BootyBayImport
md localStorage

rd /s /Q bbgm-home\webapp\WEB-INF\compass\.sass-cache
rd /s /Q bbgm-home\webapp\WEB-INF\classes
rd /s /Q bbgm-home\webapp\WEB-INF\lib
rd /s /Q bbgm-home\webapp\META-INF
pause