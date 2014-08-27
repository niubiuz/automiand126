PID = Plugin.Web.Bind("wqm.exe")
Call Plugin.Web.ClearCookie()
Call Plugin.Web.ClearTemp()
Call Plugin.Web.ClearHistory()
Call Plugin.Web.Go("http://reg.email.163.com/unireg/call.do?cmd=register.entrance&from=126mail")
Call Plugin.Web.RunJS(0,"document.getElementsByTagName('a')[6].click();")

//Call Plugin.Web.HtmlCheck(true,"id:tab1")
//Call Plugin.Web.HtmlInput(jjinqnwu@126.com,"id:emailInp")
//Call Plugin.Web.HtmlInput(m12345678,"id:pwd")
//Call Plugin.Web.HtmlInput(m12345678,"name:repassword")
//Call Plugin.Web.HtmlInput(m12345678,"id:imginput")
user=Plugin.Web.RunJS(1, "var len=16;var $chars = 'abcdefhijkmnprstwxyz';var maxPos = $chars.length;var pwd = '';for (i = 0; i < len; i++){pwd += $chars.charAt(Math.floor(Math.random() * maxPos));}var user=pwd;document.getElementById('nameIpt').value=user;return user;")
Call Plugin.Web.RunJS(0, "document.getElementById('nameIpt').focus();")
passwd=Plugin.Web.RunJS(1, "var passwd='m12345678';document.getElementById('mainPwdIpt').value=passwd;return passwd;")
Call Plugin.Web.RunJS(0, "document.getElementById('mainPwdIpt').focus();")
//Call Plugin.Web.RunJS(0, "document.getElementByName('repassword').autocomplete='on';")
Call Plugin.Web.RunJS(0, "document.getElementById('mainCfmPwdIpt').value='m12345678';")
Call Plugin.Web.RunJS(0, "document.getElementById('mainCfmPwdIpt').focus();")
Call Plugin.Web.RunJS(0, "var yz=prompt('请输入验证码！','');document.getElementById('vcodeIpt').value=yz;")
Call Plugin.Web.RunJS(0, "document.getElementById('vcodeIpt').focus();")
Call Plugin.Web.RunJS(0, "document.getElementById('mainRegA').focus();")
Call Plugin.Web.RunJS(0, "var user=document.getElementById('nameIpt').value;var passwd=document.getElementById('mainPwdIpt').value;var fso,tf;fso = new ActiveXObject('Scripting.FileSystemObject');tf = fso.OpenTextFile('F:\\test.txt',8,true);tf.WriteLine(user+'----'+passwd);tf.Close();")
Call Plugin.Web.RunJS(0, "if(document.getElementById('vcodeIpt').value!=null){document.getElementById('mainRegA').click();}")
Delay 2000
Call Plugin.Web.RunJS(0, "document.getElementById('lskipA').click();")

Delay 2000
For 5000
Delay 1000	
Url = Plugin.Web.GetURL()
If Url <> "http://reg.email.163.com/unireg/call.do?cmd=register.entrance&from=126mail" Then 
Exit For
End If
Next 
Call Plugin.Web.Go("https://account.xiaomi.com/pass/register")
Delay 2000
Call Plugin.Web.RunJS(0, "document.getElementById('tab1').click();")
xmuser="document.getElementById('emailInp').value="+"'"+user+"@126.com'"
Call Plugin.Web.RunJS(0, xmuser)
Call Plugin.Web.RunJS(0, "document.getElementById('emailInp').focus();")
xmpasswd="document.getElementById('pwd').value="+"'"+passwd+"'"
Call Plugin.Web.RunJS(0, xmpasswd)
Call Plugin.Web.RunJS(0, "document.getElementById('pwd').focus();")
Call Plugin.Web.RunJS(0, "document.getElementsByName('repassword')[0].value=document.getElementById('pwd').value;")
Call Plugin.Web.RunJS(0, "document.getElementsByName('repassword')[0].focus();")
Call Plugin.Web.RunJS(0, "var xmyz=prompt('请输入验证码！','');document.getElementById('imginput').value=xmyz;")
Call Plugin.Web.RunJS(0, "document.getElementById('imginput').focus();")
Call Plugin.Web.RunJS(0, "var xmuser=document.getElementById('emailInp').value;var xmpasswd=document.getElementById('pwd').value;var fso,tf;fso = new ActiveXObject('Scripting.FileSystemObject');tf = fso.OpenTextFile('F:\\xmtest.txt',8,true);tf.WriteLine(xmuser+'----'+xmpasswd);tf.Close();")
Delay 1000
Call Plugin.Web.RunJS(0, "if(document.getElementById('imginput').value!=null){var arr=wqmjq('input');for(var i=0;i<arr.length;i++){if(arr[i].value=='立即注册'){arr[i].click();}}}")
//临时粘贴备用
//Call Plugin.Web.RunJS(0, "document.getElementById('mainRegA').focus();")
Delay 1000
Call Plugin.Web.RunJS(0, "var arr=document.getElementsByTagName('a');for(var i=0;i<arr.length;i++){if(arr[i].href=='http://static.account.xiaomi.com/html/faq/faqList.html'){arr[i].target='_self';arr[i].click();}}")

Delay 2000
For 5000
Delay 1000	
Url = Plugin.Web.GetURL()
If Url <> "https://account.xiaomi.com/pass/register" Then 
Exit For
End If
Next 
Call Plugin.Web.Go("http://126.com")
jhuser="document.getElementById('idInput').value="+"'"+user+"'"
Call Plugin.Web.RunJS(0, jhuser)
jhpasswd="document.getElementById('pwdInput').value="+"'"+passwd+"'"
Call Plugin.Web.RunJS(0,jhpasswd)
Call Plugin.Web.RunJS(0, "document.getElementById('loginBtn').click();")
Delay 2000

Call Plugin.Web.RunJS(0, "document.getElementById('login_link').click();")
Call Plugin.Web.RunJS(0, "if(document.getElementById('login_link').value!=null){var yxyz=prompt('请输入验证码！','');document.getElementById('usercheckcode').value=yxyz;}")
Call Plugin.Web.RunJS(0, "if(document.getElementById('usercheckcode').value!=null){document.getElementsByTagName('em')[1].click();}")


Delay 2000
Call Plugin.Web.RunJS(0, "document.getElementById('_mail_tree_1_40count').click();")
Delay 2000
Call Plugin.Web.RunJS(0, "var arr=document.getElementsByTagName('span');for(var i=0;i<arr.length;i++){if(arr[i].innerText=='小米科技'){arr[i].click();}}")
Delay 2000
Call Plugin.Web.RunJS(0, "var arr=document.getElementsByTagName('iframe');for(var i=0;i<arr.length;i++){if(arr[i].style.height=='365px'){alert(arr[i].src);window.location.href=arr[i].src;}}")
Delay 2000
Call Plugin.Web.RunJS(0, "var arr=document.getElementsByTagName('a');var str='mi1.cc';for(var i=0;i<arr.length;i++){str2=arr[i].href;if(str2.indexOf(str)!=-1){arr[i].target='_self';arr[i].click();}}")
Delay 2000
Hwnd = Plugin.Web.GetHwnd()
//Delay 2000
//MessageBox Hwnd
Call Plugin.Bkgnd.LeftClick(Hwnd,265,372)
