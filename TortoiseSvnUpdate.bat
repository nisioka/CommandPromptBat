@rem このバッチが存在するディレクトリをカレントにする
cd /d %0\..


@rem SVNリポジトリを更新
@rem 参考→http://tortoisesvn.net/docs/release/TortoiseSVN_ja/tsvn-automation.html
@rem /path:以降にsvn更新対象のパスを指定。複数パスは"*"でつなぐ。
start TortoiseProc.exe /command:update /path:"対象ディレクトリ" /closeonend:3

