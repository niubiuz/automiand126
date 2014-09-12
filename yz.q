Call Plugin.Web.RunJS(0, "window.location.href='https://112.124.23.137/mail/';")
Delay 5000
//Url = Plugin.Web.GetURL()
//If Url = "https://112.124.23.137/mail/" Then
For 10
Call Plugin.Web.RunJS(0, "var yh=prompt('请输入用户名！','');document.getElementById('rcmloginuser').value=yh;")
Call Plugin.Web.RunJS(0, "var mm=prompt('请输入密码！','');document.getElementById('rcmloginpwd').value=mm;")
Call Plugin.Web.RunJS(0, "if(document.getElementById('rcmloginpwd').value!=null){/*alert('pause');*/var arr=document.getElementsByTagName('input');for(var i=0;i<arr.length;i++){if(arr[i].type=='submit'){arr[i].click();}}}")
Delay 5000
Url = Plugin.Web.GetURL()
If Url <> "https://112.124.23.137/mail/" Then 
Exit For
End If
Next
//End If
Delay 2000
Url4 = Plugin.Web.GetURL()
If Url4 <> "https://112.124.23.137/mail/?_task=mail" Then 
	ExitScript
End If
