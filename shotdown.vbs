Msg = MsgBox("シャットダウンしますか？", vbYesNo + vbQuestion, "確認")
If Msg = vbYes Then
Set WSHShell = WScript.CreateObject("WScript.shell")
WSHShell.Run "Shutdown.exe -S -T 000"
End If
