#RequireAdmin
Global $license = ""
if $CmdLine[0] > 1 Then
   run($CmdLine[2])
Else
   run(@ScriptDir & '\k9-webprotection.exe')
EndIf
if $CmdLine[0] = 0 Then
   $license = ""
Else
   $license = $CmdLine[1]
EndIf

AutoItSetOption('MouseCoordMode',0)

WinWait('Blue Coat K9 Web Protection Setup')
WinActivate('Blue Coat K9 Web Protection Setup')
sleep(300)
ControlClick('Blue Coat K9 Web Protection Setup', 'Welcome to the Blue Coat K9 Web Protection Setup', 'Button2')
sleep(300)
ControlClick('Blue Coat K9 Web Protection Setup', 'Please review the license terms before installing', 'Button2')
sleep(300)
ControlSetText('Blue Coat K9 Web Protection Setup', 'User License && Password', 'Edit1', $license)
sleep(300)
ControlSetText('Blue Coat K9 Web Protection Setup', 'User License && Password', 'Edit2', "judges")
sleep(300)
ControlSetText('Blue Coat K9 Web Protection Setup', 'User License && Password', 'Edit3', "judges")
sleep(300)
ControlClick('Blue Coat K9 Web Protection Setup', 'User License && Password', 'Button2')
sleep(5000)
ControlClick('Blue Coat K9 Web Protection Setup', 'Completing the Blue Coat K9 Web Protection Setup', 'Button5')
sleep(300)
ControlClick('Blue Coat K9 Web Protection Setup', 'Completing the Blue Coat K9 Web Protection Setup', 'Button2')

