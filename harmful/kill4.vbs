Set a=getobject("winmgmts:")
Set b=a.execquery("select * from win32_process where name='drawxugeicon2k.'") 
For each c in b 
c.terminate
Next
