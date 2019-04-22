#RequireAdmin
if $CmdLine[0] > 0 Then
   run($CmdLine[1])
Else
   run(@ScriptDir & '\uninst.exe')
EndIf

AutoItSetOption('MouseCoordMode',0)

WinWait('Blue Coat K9 Web Protection Uninstall')
WinActivate('Blue Coat K9 Web Protection Uninstall')
sleep(300)
ControlClick('Blue Coat K9 Web Protection Uninstall', 'Are you sure you want to completely remove', 'Button1')
sleep(300)
ControlSetText('Blue Coat K9 Web Protection Uninstall', 'Please enter your uninstall password', 'Edit1', "judges")
sleep(300)
ControlClick('Blue Coat K9 Web Protection Uninstall', 'Please enter your uninstall password', 'Button2')
sleep(5000)
ControlClick('Blue Coat K9 Web Protection Uninstall', 'Completing the Blue Coat K9 Web Protection Uninstall', 'Button5')
sleep(300)
ControlClick('Blue Coat K9 Web Protection Uninstall', 'Completing the Blue Coat K9 Web Protection Uninstall', 'Button2')

