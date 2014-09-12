PID = Plugin.Web.Bind("wqm.exe")
//Call Lib.API.运行程序("wqm.exe")

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

Call Plugin.Web.Go("http://item.jd.com/1186170.html")
//Call Plugin.Web.RunJS(0, "var xmlhttp=new ActiveXObject('MSXML2.XMLHTTP.3.0');xmlhttp.open('GET','http://bjtime.cn',false);xmlhttp.setRequestHeader('If-Modified-Since','bjtime');xmlhttp.send();var dateStr=xmlhttp.getResponseHeader('Date');var date=new Date(dateStr);var year=date.getFullYear();var month=date.getMonth()+1;var date1=date.getDate();var hour=date.getHours();var minutes=date.getMinutes();var second=date.getSeconds();var arr=document.getElementsByTagName('a');var len=arr.length;for(var i=0;i<len;i++){if(arr[i].style.cursor=='pointer'&& minutes=='45' && second=='00'){arr[i].click();}}")
For 30000
Call Plugin.Web.Go("http://item.jd.com/1186170.html")
//时间 = Lib.网络.获取网络时间()
//TracePrint 时间
//If 时间>"21:34:00" Then
//Call Plugin.Web.RunJS(0, "var arr=document.getElementsByTagName('a');var len=arr.length;for(var i=0;i<len;i++){if(arr[i].title=='大牛3（2GRAM 32GROM）'){arr[i].click();}}")
//End If
//Call Plugin.Web.RunJS(0, "document.getElementById('InitCartUrl').click()")
For 4
Call Plugin.Web.RunJS(0, "var arr=wqmjq('a');for(var i=0;i<arr.length;i++){if(arr[i].innerText=='抢购中'){arr[i].click();}}")
Call Plugin.Web.RunJS(0, "wqmjq('.btn-qiang')[0].click();")
If Url<>"http://item.jd.com/1186170.html#none" And Url<>"http://item.jd.com/1186170.html" And Url<>"http://item.jd.com/1137395.html#none" And Url<>"http://item.jd.com/1137395.html"  Then
Exit For
End If
Next
Url = Plugin.Web.GetURL()
//TracePrint Url
If Url<>"http://item.jd.com/1186170.html#none" And Url<>"http://item.jd.com/1186170.html" And Url<>"http://item.jd.com/1137395.html#none" And Url<>"http://item.jd.com/1137395.html"  Then
Exit For
End If
Next




BeginThread A
Delay 10
BeginThread B
Sub A()
AID = GetThreadID()
If true
Call Plugin.Web.RunJS(0, "var yz=window.prompt('请输入验证码！','');document.getElementById('realCode').value=yz;")
End If
End Sub
//Hwnd = Plugin.Web.GetHwnd()
//Delay 2000
//MessageBox Hwnd
//Call Plugin.Bkgnd.LeftDown(266976,295,-11)
//Call Plugin.Bkgnd.MoveTo(68442,734,104)
//Hwnd = Plugin.Window.Foreground()
//MsgBox "得到当前最前面的窗口句柄为："& Hwnd
//Delay 2000
//s = InStr(Hwnd, "|")
//Hw = int(Mid(Hwnd, 1, s - 1))
//Call Plugin.Window.Move(Hwnd,0,0)
Sub B()
BID = GetThreadID()
while true
Hwnd = Plugin.Window.Foreground()
Call Plugin.Window.Move(Hwnd, 0, 0)
Wend
End Sub



StopThread AID
StopThread BID

Call Plugin.Web.RunJS(0, "if(document.getElementById('realCode').value!=null){document.getElementById('goToOrder').click();}")



For 1000

Url = Plugin.Web.GetURL()
If Url <> "http://item.jd.com/1186170.html#none" And Url <> "http://item.jd.com/1186170.html" And Url <> "http://item.jd.com/1137395.html#none" And Url <> "http://item.jd.com/1137395.html" And Lib.算法.得到字符串中字母的数量(Url) <> 40 Then 
Delay 1
Else
Exit For	
End If
Next



For 30000
//Call Plugin.Web.RunJS(0, "document.getElementById('settleup-url').click()")
//Url = Plugin.Web.GetURL()
//If Url <> "http://cart.jd.com/cart/cart.html" And Lib.算法.得到字符串中字母的数量(Url)<>40 Then 
//Delay 1000
//For 2
//Call Plugin.Web.RunJS(0, "document.getElementById('toggle-checkboxes').click()")
//Next
//Call Plugin.Web.RunJS(0, "document.getElementById('toggle-checkboxes').click()")
//Delay 1000
//End If

//Call Plugin.Web.RunJS(0, "document.getElementById('toSettlement').click()")
//KeyPress 32,1
Call Plugin.Web.RunJS(0, "document.getElementById('saveConsigneeTitleDiv').click()")
//Call Plugin.Web.RunJS(0, "document.getElementById('order-submit').click()")
Call Plugin.Web.RunJS(0, "wqmjq('.btn-submit')[0].click();")
Call Plugin.Web.RunJS(0, "document.getElementById('order-submit').click()")
Next
