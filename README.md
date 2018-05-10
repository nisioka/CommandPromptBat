# CommandPromptBat
これはWindowsバッチ集です。

# それぞれのバッチ説明
## 1. CombineAndReplaceFiles.bat
### 概要
複数ファイルの結合と置換を行います。
同ディレクトリ内にある、対象拡張子のファイル全てを結合します。  
ただし、ファイルエンコードは統一されている必要があります。
その際、文字列置換も可能です。  

### 使用方法  
使用の際には、バッチを直接編集する必要があります。

#### 1.1 ファイルエンコードを変更する場合
chcpから始まる行のコードポイントを任意の値に変更してください。

#### 1.2. 対象拡張子変更を変更する場合
以下の行の"*.txt"部分を変更してください。ただし、"*.bat"は指定できません(このbat自体が対象となってしまうため)。
> type *.txt > %TMP_FILE%

#### 1.3. 置換前後文字列を変更する場合
置換対象の文字列の指定箇所
> set BEFORE_STR=before

置換後の文字列の指定箇所
> set AFTER_STR=after

## 2. TortoiseSvnUpdate.bat  
### 概要
TortoiseSVNをGUIを使わずにSVN更新する。 

### 使用方法
#### 2.1. 更新対象ディレクトリを変更する場合  
以下の"対象ディレクトリ"を変更してください。
> start TortoiseProc.exe /command:update /path:"対象ディレクトリ" /closeonend:3

### 参考
http://tortoisesvn.net/docs/release/TortoiseSVN_ja/tsvn-automation.html

## 3. shotdown.vbs  
### 概要
確認ダイアログ付きの電源OFFスクリプト。 

### 使用方法   
ダブルクリック等で、バッチを実行します。
確認ダイアログで"はい"を選択するとWindowsをシャットダウンします。

## 4. switchingJava
### 概要
Javaのバージョンを動的に変更します。
使用方法の詳細はswitchingJavaディレクトリの[README.md](/switchingJava/README.md)を参照してください。
