@rem 文字コード：(UTF8->65001, Shift-JIS->932)
@rem chcp 65001

@echo off
setlocal enabledelayedexpansion
cd %~dp0


@rem 【設定定義箇所↓】
@rem 削除対象ファイル名（ワイルドカード指定可能）
set TARGET_FILE=diag-*.png
@rem 削除対象ディレクトリ名（ワイルドカード指定不可）
set TARGET_DIRECTORY=.asciidoctor
@rem 【設定定義箇所↑】


@rem ファイル削除実行
del /F /S /Q %TARGET_FILE%

@rem ディレクトリ削除
for /R %%d in (%TARGET_DIRECTORY%) do rmdir /S /Q %%d
