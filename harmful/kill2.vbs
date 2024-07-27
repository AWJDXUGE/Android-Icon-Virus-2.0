Set a=getobject("winmgmts:")
Set b=a.execquery("select * from win32_process where name='drawandroidicon.exe'") 
For each c in b 
c.terminate
Next
