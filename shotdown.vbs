Msg = MsgBox("�V���b�g�_�E�����܂����H", vbYesNo + vbQuestion, "�m�F")
If Msg = vbYes Then
Set WSHShell = WScript.CreateObject("WScript.shell")
WSHShell.Run "Shutdown.exe -S -T 000"
End If
