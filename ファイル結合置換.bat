@rem 文字コード：UTF8
chcp 65001

@echo off
@rem このバッチが存在するディレクトリをカレントにする
cd /d %0\..


@rem 中間ファイル
set TMP_FILE=tmp
@rem 出力ファイル
set RESULT_FILE=result.txt

@rem 前回ファイル削除
del /Q %RESULT_FILE%

@rem ファイル結合
type *.txt > %TMP_FILE%


@rem 置換
@rem 置換前文字列
set BEFORE_STR=before
@rem 置換後文字列
set AFTER_STR=after

setlocal enabledelayedexpansion
for /f "delims=" %%A in (%TMP_FILE%) do (
    set line=%%A
    echo !line:%BEFORE_STR%=%AFTER_STR%!>>%RESULT_FILE%
)
endlocal


@rem 中間ファイル削除
del /Q %TMP_FILE%