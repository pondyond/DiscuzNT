<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Space.Pages.bloglist" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>
<%@ Import namespace="Discuz.Config" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2018/2/23 16:59:46.
		本页面代码由Discuz!NT模板引擎生成于 2018/2/23 16:59:46. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	templateBuilder.Append(meta.ToString());
	templateBuilder.Append("\r\n<title>");
	templateBuilder.Append(pagetitle.ToString());
	templateBuilder.Append(" ");
	templateBuilder.Append(config.Seotitle.ToString().Trim());
	templateBuilder.Append(" - ");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append(" - Powered by Discuz!NT</title>\r\n<link rel=\"icon\" href=\"favicon.ico\" type=\"image/x-icon\" />\r\n<link rel=\"shortcut icon\" href=\"favicon.ico\" type=\"image/x-icon\" /> \r\n<!-- 调用样式表 -->\r\n<link rel=\"stylesheet\" href=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/space/space.css\" type=\"text/css\" media=\"all\"  />\r\n");
	templateBuilder.Append(link.ToString());
	templateBuilder.Append("\r\n<script type=\"text/javascript\" src=\"javascript/template_report.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"javascript/template_utils.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"javascript/common.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"javascript/menu.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\"> \r\n	var aspxrewrite = ");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(";\r\n</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append(script.ToString());
	templateBuilder.Append("\r\n</head>\r\n\r\n<body onkeydown=\"if(event.keyCode==27) return false;\">\r\n<div id=\"append_parent\"></div><div id=\"ajaxwaitid\"></div>\r\n<div id=\"container\">\r\n");
	if (headerad!="")
	{

	templateBuilder.Append("\r\n	<div id=\"ad_headerbanner\">");
	templateBuilder.Append(headerad.ToString());
	templateBuilder.Append("</div>\r\n");
	}	//end if

	templateBuilder.Append("\r\n<div id=\"hd\">\r\n	<div class=\"wrap\">\r\n		<div class=\"head cl\">\r\n			<h2><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("index.aspx\" title=\"Discuz!NT|BBS|论坛\"><img src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/logo.png\" alt=\"Discuz!NT|BBS|论坛\"/></a></h2>\r\n			");
	if (userid==-1)
	{


	if (pagename!="login.aspx"&&pagename!="register.aspx")
	{

	templateBuilder.Append("\r\n			<form onsubmit=\"if ($('ls_username').value == '' || $('ls_username').value == '用户名/Email') showWindow('login', '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("login.aspx');hideWindow('register');return\" action=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("login.aspx?referer=");
	templateBuilder.Append(pagename.ToString());
	templateBuilder.Append("\" id=\"lsform\" autocomplete=\"off\" method=\"post\">\r\n				<div class=\"fastlg c1\">\r\n					<div class=\"y pns\">\r\n						<p>\r\n							<label for=\"ls_username\">帐号</label> <input type=\"text\" tabindex=\"901\" value=\"用户名/Email\" id=\"ls_username\" name=\"username\" class=\"txt\" onblur=\"if(this.value == '') this.value = '用户名/Email';\" onfocus=\"if(this.value == '用户名/Email') this.value = '';\"/><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("register.aspx\" onClick=\"showWindow('register', '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("register.aspx');hideWindow('login');\" style=\"margin-left: 7px;\" class=\"xg2\">注册</a>							\r\n						</p>\r\n						<p>\r\n							<label for=\"ls_password\">密码</label> <input type=\"password\" onfocus=\"lsShowmore();innerVcode();\" tabindex=\"902\" autocomplete=\"off\" id=\"ls_password\" name=\"password\"  class=\"txt\"/>\r\n							&nbsp;<input type=submit style=\"width:0px;filter:alpha(opacity=0);-moz-opacity:0;opacity:0;display:none;\"/><button class=\"pn\" type=\"submit\"><span>登录</span></button>\r\n						</p>\r\n					</div>\r\n				</div>\r\n                <div id=\"ls_more\" style=\"position:absolute;display:none;\">\r\n                <h3 class=\"cl\"><em class=\"y\"><a href=\"###\" class=\"flbc\" title=\"关闭\" onclick=\"closeIsMore();return false;\">关闭</a></em>安全选项</h3>\r\n                ");
	if (isLoginCode)
	{

	templateBuilder.Append("\r\n                <div id=\"vcode_header\"></div>\r\n                <script type=\"text/javascript\" reload=\"1\">\r\n	                if (typeof vcodeimgid == 'undefined'){\r\n	                    var vcodeimgid = 1;\r\n	                }\r\n	                else\r\n	                    vcodeimgid++;\r\n	                function innerVcode() {\r\n	                    if ($('vcodetext1') == null) {\r\n	                        $('vcode_header').innerHTML = '<input name=\"vcodetext\" tabindex=\"903\" size=\"20\" onkeyup=\"changevcode(this.form, this.value);\" class=\"txt\" style=\"width:50px;\" id=\"vcodetext' + vcodeimgid + '\" value=\"\" autocomplete=\"off\"/>' +\r\n                                                        '<span><a href=\"###\" onclick=\"vcodeimg' + vcodeimgid + '.src=\\'");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=\\' + Math.random();return false;\" style=\"margin-left: 7px;\">看不清</a></span>' + '<p style=\"margin:6px 0\">输入下图中的字符</p>' +\r\n	                                                    '<div  style=\"cursor: pointer;width: 124px; height: 44px;top:256px;z-index:10009;padding:0;\" id=\"vcodetext' + vcodeimgid + '_menu\" onmouseout=\"seccodefocus = 0\" onmouseover=\"seccodefocus = 1\"><img src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?time=");
	templateBuilder.Append(Processtime.ToString());
	templateBuilder.Append("\" class=\"cursor\" id=\"vcodeimg' + vcodeimgid + '\" onclick=\"this.src=\\'");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=\\' + Math.random();\"/></div>';\r\n	                        optionVcode();\r\n                            }\r\n                        }\r\n                                            \r\n	                 function changevcode(form, value){\r\n		                if (!$('vcode')){\r\n			                var vcode = document.createElement('input');\r\n			                vcode.id = 'vcode';\r\n			                vcode.name = 'vcode';\r\n			                vcode.type = 'hidden';\r\n			                vcode.value = value;\r\n			                form.appendChild(vcode);\r\n		                }else{\r\n			                $('vcode').value = value;\r\n		                }\r\n	                }\r\n                </");
	templateBuilder.Append("script>\r\n                <script type=\"text/javascript\">\r\n                    var secclick = new Array();\r\n                    var seccodefocus = 0;\r\n                    var optionVcode = function (id, type) {\r\n                        id = vcodeimgid;\r\n                        if ($('vcode')) {\r\n                            $('vcode').parentNode.removeChild($('vcode'));\r\n                        }\r\n\r\n                        if (!secclick['vcodetext' + id]) {\r\n                            if ($('vcodetext' + id) != null)\r\n                                $('vcodetext' + id).value = '';\r\n                            secclick['vcodetext' + id] = 1;\r\n                            if (type)\r\n                                $('vcodetext' + id + '_menu').style.top = parseInt($('vcodetext' + id + '_menu').style.top) - parseInt($('vcodetext' + id + '_menu').style.height) + 'px';\r\n                        }\r\n                        $('vcodetext' + id + '_menu').style.display = '';\r\n                        $('vcodetext' + id).unselectable = 'off';\r\n                        $('vcodeimg' + id).src = '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=' + Math.random();\r\n                    }\r\n                </");
	templateBuilder.Append("script>\r\n                ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <script type=\"text/javascript\">\r\n                        function innerVcode() {\r\n                        }\r\n                        function optionVcode() {\r\n                        }\r\n                    </");
	templateBuilder.Append("script>\r\n                ");
	}	//end if


	if (config.Secques==1)
	{

	templateBuilder.Append("\r\n			    <div id=\"floatlayout_login\" class=\"pbm\">\r\n					<select style=\"width:156px;margin-bottom:8px;\" id=\"question\" name=\"question\" selecti=\"5\" name=\"question\" onchange=\"displayAnswer();\" tabindex=\"904\">\r\n						<option id=\"question\" value=\"0\" selected=\"selected\">安全提问(未设置请忽略)</option>\r\n						<option id=\"question\" value=\"1\">母亲的名字</option>\r\n						<option id=\"question\" value=\"2\">爷爷的名字</option>\r\n						<option id=\"question\" value=\"3\">父亲出生的城市</option>\r\n						<option id=\"question\" value=\"4\">您其中一位老师的名字</option>\r\n						<option id=\"question\" value=\"5\">您个人计算机的型号</option>\r\n						<option id=\"question\" value=\"6\">您最喜欢的餐馆名称</option>\r\n						<option id=\"question\" value=\"7\">驾驶执照的最后四位数字</option>\r\n					</select>\r\n					<input type=\"text\" tabindex=\"905\" class=\"txt\" size=\"20\" autocomplete=\"off\" style=\"width:140px;display:none;\"  id=\"answer\" name=\"answer\"/>\r\n		        </div>\r\n                ");
	}	//end if

	templateBuilder.Append("\r\n                <script type=\"text/javascript\">\r\n                    function closeIsMore() {\r\n                        $('ls_more').style.display = 'none';\r\n                    }\r\n                    function displayAnswer() {\r\n                        $('answer').style.display = '';\r\n						$('answer').focus();\r\n                    }\r\n                </");
	templateBuilder.Append("script>\r\n				<div class=\"ptm cl\" style=\"border-top:1px dashed #CDCDCD;\">\r\n					<a class=\"y xg2\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("getpassword.aspx\" onclick=\"hideWindow('register');hideWindow('login');showWindow('getpassword', this.href);\">找回密码</a>\r\n					<label class=\"z\" for=\"ls_cookietime\"><input type=\"checkbox\" tabindex=\"906\" value=\"2592000\" id=\"ls_cookietime\" name=\"expires\" checked=\"checked\" tabindex=\"906\">记住密码</label>\r\n				</div>\r\n            </div>\r\n			</form>\r\n            ");
	}	//end if


	}
	else
	{

	templateBuilder.Append("\r\n			<div id=\"um\">\r\n				<div class=\"avt y\"><a alt=\"用户名称\" target=\"_blank\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercp.aspx\"><img src=\"");
	templateBuilder.Append(useravatar.ToString());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/noavatar_small.gif';\" /></a></div>\r\n				<p>\r\n					<strong><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("userinfo.aspx?userid=");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("\" class=\"vwmy\">");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("</a></strong><span class=\"xg1\">在线</span><span class=\"pipe\">|</span>\r\n					<a id=\"pm_ntc\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpinbox.aspx\" title=\"");
	if (oluserinfo.Newpms>0)
	{

	templateBuilder.Append("您有");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	templateBuilder.Append("条新短消息");
	}
	else
	{

	templateBuilder.Append("您没有新短消息");
	}	//end if

	templateBuilder.Append("\">短消息</a><span class=\"pipe\">|</span>\r\n					<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpnotice.aspx?filter=all\" title=\"");
	if (oluserinfo.Newnotices>0)
	{

	templateBuilder.Append("您有");
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	templateBuilder.Append("条新通知");
	}
	else
	{

	templateBuilder.Append("您没有新通知");
	}	//end if

	templateBuilder.Append("\">通知");
	if (oluserinfo.Newnotices>0)
	{

	templateBuilder.Append("(");
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	templateBuilder.Append(")");
	}	//end if

	templateBuilder.Append("</a><span class=\"pipe\">|</span>\r\n					<a id=\"usercenter\" class=\"drop\" onmouseover=\"showMenu(this.id);\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercp.aspx\">用户中心</a>\r\n				");
	if (config.Regstatus==2||config.Regstatus==3)
	{


	if (userid>0)
	{

	templateBuilder.Append("\r\n					<span class=\"pipe\">|</span><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("invite.aspx\">邀请</a>\r\n					");
	}	//end if


	}	//end if


	if (useradminid==1)
	{

	templateBuilder.Append("\r\n					<span class=\"pipe\">|</span><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("admin/index.aspx\" target=\"_blank\">系统设置</a>\r\n					");
	}	//end if

	templateBuilder.Append("\r\n					<span class=\"pipe\">|</span><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("logout.aspx?userkey=");
	templateBuilder.Append(userkey.ToString());
	templateBuilder.Append("\">退出</a>\r\n				</p>\r\n				");
	templateBuilder.Append(userinfotips.ToString());
	templateBuilder.Append("\r\n			</div> \r\n			");
	if (oluserinfo.Newpms>0)
	{

	templateBuilder.Append("\r\n            <div id=\"pm_ntc_menu\" class=\"g_up\">\r\n				<div class=\"mncr\"></div>\r\n				<div class=\"crly\">\r\n					<div style=\"clear:both;font-size:0;\"></div>\r\n					<span class=\"y\"><a onclick=\"javascript:$('pm_ntc_menu').style.display='none';\" href=\"javascript:;\"><img src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/delete.gif\" alt=\"关闭\"/></a></span>\r\n					<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpinbox.aspx\">您有");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	templateBuilder.Append("条新消息</a>\r\n				</div>\r\n            </div>\r\n            <script type=\"text/javascript\">setMenuPosition('pm_ntc', 'pm_ntc_menu', '43');</");
	templateBuilder.Append("script>\r\n            ");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n		</div>\r\n		<div id=\"menubar\">\r\n		");
	if (userid!=-1)
	{

	templateBuilder.Append("\r\n			<a onMouseOver=\"showMenu(this.id, false);\" href=\"javascript:void(0);\" id=\"mymenu\">我的中心</a>\r\n            <div class=\"popupmenu_popup headermenu_popup\" id=\"mymenu_menu\" style=\"display: none\">\r\n			<ul class=\"sel_my\">\r\n				<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("mytopics.aspx\">我的主题</a></li>\r\n				<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("myposts.aspx\">我的帖子</a></li>\r\n				<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx?posterid=current&type=digest&searchsubmit=1\">我的精华</a></li>\r\n				<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("myattachment.aspx\">我的附件</a></li>\r\n				<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpsubscribe.aspx\">我的收藏</a></li>\r\n			");
	if (config.Enablespace==1)
	{

	templateBuilder.Append("\r\n				<li class=\"myspace\"><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("space/\">我的空间</a></li>\r\n			");
	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("\r\n				<li class=\"myalbum\"><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("showalbumlist.aspx?uid=");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("\">我的相册</a></li>\r\n			");
	}	//end if

	templateBuilder.Append("\r\n            </ul>\r\n            </div>\r\n		");
	}	//end if

	templateBuilder.Append("\r\n			<ul id=\"menu\" class=\"cl\">\r\n				");
	templateBuilder.Append(mainnavigation.ToString());
	templateBuilder.Append("\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>");

	templateBuilder.Append("\r\n<div class=\"wrap cl pageinfo\">\r\n	<div id=\"nav\">\r\n		");
	if (usergroupinfo.Allowsearch>0)
	{


	templateBuilder.Append("<form method=\"post\" action=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx\" target=\"_blank\" onsubmit=\"bind_keyword(this);\" class=\"y\">\r\n	<input type=\"hidden\" name=\"poster\" />\r\n	<input type=\"hidden\" name=\"keyword\" />\r\n	<input type=\"hidden\" name=\"type\" value=\"\" />\r\n	<input id=\"keywordtype\" type=\"hidden\" name=\"keywordtype\" value=\"0\" />\r\n	<a href=\"javascript:void(0);\" class=\"drop s_type\" id=\"quicksearch\" onclick=\"showMenu(this.id, false);\" onmouseover=\"MouseCursor(this);\">快速搜索</a>\r\n	<input type=\"text\" name=\"keywordf\" value=\"输入搜索关键字\" onblur=\"if(this.value=='')this.value=defaultValue\" onclick=\"if(this.value==this.defaultValue)this.value = ''\" onkeydown=\"if(this.value==this.defaultValue)this.value = ''\" class=\"txt\"/>\r\n	<input name=\"searchsubmit\" type=\"submit\" value=\"\" class=\"btnsearch\"/>\r\n</form>\r\n<ul id=\"quicksearch_menu\" class=\"p_pop\" style=\"display: none;\">\r\n	<li><a href=\"###\" onclick=\"$('keywordtype').value='0';$('quicksearch').innerHTML='帖子标题';$('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">帖子标题</a></li>\r\n	");
	if (config.Enablespace==1)
	{

	templateBuilder.Append("\r\n	<li><a href=\"###\" onclick=\"$('keywordtype').value='2';$('quicksearch').innerHTML='空间日志';$('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">空间日志</a></li>\r\n	");
	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("\r\n	<li><a href=\"###\" onclick=\"$('keywordtype').value='3';$('quicksearch').innerHTML='相册标题';$('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">相册标题</a></li>\r\n	");
	}	//end if

	templateBuilder.Append("\r\n	<li><a href=\"###\" onclick=\"$('keywordtype').value='8';$('quicksearch').innerHTML='作者';$('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">作者</a></li>\r\n	<li><a href=\"###\" onclick=\"$('keywordtype').value='9';$('quicksearch').innerHTML='版块';$('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">版块</a></li>\r\n</ul>\r\n<script type=\"text/javascript\">\r\n    function bind_keyword(form) {\r\n        if (form.keywordtype.value == '9') {\r\n            form.action = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("forumsearch.aspx?q=' + escape(form.keywordf.value);\r\n        } else if (form.keywordtype.value == '8') {\r\n            form.keyword.value = '';\r\n            form.poster.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value : '';\r\n        } else {\r\n            form.poster.value = '';\r\n            form.keyword.value = form.keywordf.value != form.keywordf.defaultValue ? form.keywordf.value : '';\r\n            if (form.keywordtype.value == '2')\r\n                form.type.value = 'spacepost';\r\n            if (form.keywordtype.value == '3')\r\n                form.type.value = 'album';\r\n        }\r\n    }\r\n</");
	templateBuilder.Append("script>");


	}	//end if

	templateBuilder.Append("\r\n        <a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <strong>个人空间</strong>\r\n	</div>\r\n</div>\r\n");
	if (page_err==0)
	{

	templateBuilder.Append("\r\n<div class=\"wrap\">\r\n<div class=\"left space_main cl\">\r\n	<div class=\"modulebox\">\r\n		");
	int __postinfo__loop__id=0;
	foreach(DataRow __postinfo in postslist.Rows)
	{
		__postinfo__loop__id++;

	templateBuilder.Append(" 					\r\n		<div class=\"ntblog cl\">\r\n			<h3><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=" + __postinfo["postid"].ToString().Trim() + "\">" + __postinfo["title"].ToString().Trim() + "</a></h3>\r\n			<h4>\r\n				");	 aspxrewriteurl = this.ShowTopicAspxRewrite(__postinfo["uid"].ToString().Trim(),0);
	
	templateBuilder.Append("\r\n				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">" + __postinfo["author"].ToString().Trim() + "</a>   " + __postinfo["postdatetime"].ToString().Trim() + " 【评论:" + __postinfo["commentcount"].ToString().Trim() + "】【阅读:" + __postinfo["views"].ToString().Trim() + "】 </h4>\r\n			<P>");	templateBuilder.Append(Utils.GetUnicodeSubString(__postinfo["content"].ToString().Trim(),350,"..."));
	templateBuilder.Append("</p>\r\n			<h4><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=" + __postinfo["postid"].ToString().Trim() + "\">阅读全文</a> >></h4>\r\n		</div>\r\n		");
	}	//end loop

	templateBuilder.Append("\r\n		<div class=\"ntforumpage\">");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("</div>\r\n	</div>\r\n</div>\r\n<div class=\"right space_side cl\">\r\n	");
	templateBuilder.Append("<div class=\"sidebox\" style=\"padding:1px;\">\r\n<script type='text/javascript'>\r\nvar imgwidth = 246;\r\nvar imgheight = 180;\r\n</");
	templateBuilder.Append("script>			\r\n<!--图片轮换代码开始-->\r\n<script type='text/javascript' src='javascript/template_rotatepic.js'></");
	templateBuilder.Append("script>\r\n<script type='text/javascript'>\r\n    var data = { };\r\n    ");
	templateBuilder.Append(rotatepicdata.ToString());
	templateBuilder.Append("\r\n    var ri = new MzRotateImage();\r\n    ri.dataSource = data;\r\n    ri.width = 246;\r\n    ri.height = 180;\r\n    ri.interval = 3000;\r\n    ri.duration = 2000;\r\n    document.write(ri.render());\r\n</");
	templateBuilder.Append("script>\r\n<!--图片轮换代码结束-->	   	\r\n</div>");

	templateBuilder.Append("			\r\n	<div class=\"sidebox\">\r\n		<h2>推荐日志</h2>\r\n		<ul class=\"newslist\">\r\n		");
	int __spacepostrecommend__loop__id=0;
	foreach(SpaceShortPostInfo __spacepostrecommend in spacepostlist)
	{
		__spacepostrecommend__loop__id++;

	templateBuilder.Append(" \r\n			<li><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=");
	templateBuilder.Append(__spacepostrecommend.Postid.ToString().Trim());
	templateBuilder.Append("\">");	templateBuilder.Append(Utils.GetUnicodeSubString(__spacepostrecommend.Title,30,"..."));
	templateBuilder.Append("</a> </li>	\r\n		");
	}	//end loop

	templateBuilder.Append("\r\n		</ul>\r\n	</div>\r\n	<div class=\"sidebox\">\r\n		<h4>最新空间评论</h4>\r\n		<ul class=\"newslist\">\r\n		");
	int comment__loop__id=0;
	foreach(DataRow comment in topspacecomments.Rows)
	{
		comment__loop__id++;

	templateBuilder.Append("\r\n			<li><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=" + comment["postid"].ToString().Trim() + "\">" + comment["content"].ToString().Trim() + "</a> [" + comment["author"].ToString().Trim() + "]</li>	\r\n		");
	}	//end loop

	templateBuilder.Append("\r\n		</ul>\r\n	</div>            \r\n	");
	if (config.Enablealbum==1)
	{

	templateBuilder.Append("\r\n	<div class=\"sidebox\">\r\n		<h4>推荐相册</h4>\r\n		<ul class=\"newslist\">\r\n			");
	int album__loop__id=0;
	foreach(AlbumInfo album in recommendalbumlist)
	{
		album__loop__id++;

	templateBuilder.Append("\r\n				<li><a href=\"showalbum.aspx?albumid=");
	templateBuilder.Append(album.Albumid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(album.Title.ToString().Trim());
	templateBuilder.Append("</a> (");
	templateBuilder.Append(album.Imgcount.ToString().Trim());
	templateBuilder.Append(") [<a href=\"showalbumlist.aspx?uid=");
	templateBuilder.Append(album.Userid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(album.Username.ToString().Trim());
	templateBuilder.Append("</a>]</li>	\r\n			");
	}	//end loop

	templateBuilder.Append("\r\n		</ul>\r\n	</div>\r\n	");
	}	//end if

	templateBuilder.Append("\r\n	<div class=\"sidebox\">\r\n		<h4>最近更新的空间</h4>\r\n		<ul class=\"newslist\">\r\n		");
	int __space__loop__id=0;
	foreach(DataRow __space in recentupdatespacelist.Rows)
	{
		__space__loop__id++;

	templateBuilder.Append(" 						\r\n			<li><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/?uid=" + __space["userid"].ToString().Trim() + "\">");	templateBuilder.Append(Utils.GetUnicodeSubString(__space["spacetitle"].ToString().Trim(),28,"..."));
	templateBuilder.Append("</a></li>\r\n		");
	}	//end loop

	templateBuilder.Append("\r\n		</ul>\r\n	</div>\r\n	<div class=\"sidebox\">\r\n		<h2>新帖</h2>\r\n		<ul class=\"newslist\">\r\n		");
	int __newtopicinfo__loop__id=0;
	foreach(DataRow __newtopicinfo in newtopiclist.Rows)
	{
		__newtopicinfo__loop__id++;

	templateBuilder.Append(" \r\n			<li>\r\n			");	 aspxrewriteurl = this.ShowTopicAspxRewrite(__newtopicinfo["tid"].ToString().Trim(),0);
	
	templateBuilder.Append("\r\n			<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");	templateBuilder.Append(Utils.GetUnicodeSubString(__newtopicinfo["title"].ToString().Trim(),30,"..."));
	templateBuilder.Append("</a></li>\r\n		");
	}	//end loop

	templateBuilder.Append("\r\n		</ul>\r\n		<h2>热帖</h2>\r\n		<ul class=\"newslist\">\r\n		");
	int __hottopicinfo__loop__id=0;
	foreach(DataRow __hottopicinfo in hottopiclist.Rows)
	{
		__hottopicinfo__loop__id++;

	templateBuilder.Append(" \r\n		<li>\r\n			");	 aspxrewriteurl = this.ShowTopicAspxRewrite(__hottopicinfo["tid"].ToString().Trim(),0);
	
	templateBuilder.Append("\r\n			<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");	templateBuilder.Append(Utils.GetUnicodeSubString(__hottopicinfo["title"].ToString().Trim(),30,"..."));
	templateBuilder.Append("</a></li>\r\n		");
	}	//end loop

	templateBuilder.Append("\r\n		</ul>\r\n	</div>\r\n</div>\r\n</div>\r\n");
	}
	else
	{


	templateBuilder.Append("<div class=\"wrap cl\">\r\n<div class=\"main\">\r\n	<div class=\"msgbox\">\r\n		<h1>出现了");
	templateBuilder.Append(page_err.ToString());
	templateBuilder.Append("个错误</h1>\r\n		<hr class=\"solidline\"/>\r\n		<div class=\"msg_inner error_msg\">\r\n			<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n			<p class=\"errorback\">\r\n				<script type=\"text/javascript\">\r\n					if(");
	templateBuilder.Append(msgbox_showbacklink.ToString());
	templateBuilder.Append(")\r\n					{\r\n						document.write(\"<a href=\\\"");
	templateBuilder.Append(msgbox_backlink.ToString());
	templateBuilder.Append("\\\">返回上一步</a> &nbsp; &nbsp;|&nbsp; &nbsp  \");\r\n					}\r\n				</");
	templateBuilder.Append("script>\r\n				<a href=\"forumindex.aspx\">论坛首页</a>\r\n				");
	if (usergroupid==7)
	{

	templateBuilder.Append("\r\n				 &nbsp; &nbsp;|&nbsp; &nbsp; <a href=\"login.aspx\">登录</a>&nbsp; &nbsp;|&nbsp; &nbsp; <a href=\"register.aspx\">注册</a>\r\n				");
	}	//end if

	templateBuilder.Append("\r\n			</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n</div>");


	}	//end if



	if (infloat!=1)
	{


	if (pagename=="website.aspx")
	{

	templateBuilder.Append("    \r\n       <div id=\"websitebottomad\"></div>\r\n");
	}
	else if (footerad!="")
	{

	templateBuilder.Append(" \r\n     <div id=\"ad_footerbanner\">");
	templateBuilder.Append(footerad.ToString());
	templateBuilder.Append("</div>   \r\n");
	}	//end if

	templateBuilder.Append("\r\n<div id=\"footer\">\r\n	<div class=\"wrap\"  id=\"wp\">\r\n		<div id=\"footlinks\">\r\n			<p><a href=\"");
	templateBuilder.Append(config.Weburl.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(config.Webtitle.ToString().Trim());
	templateBuilder.Append("</a> - ");
	templateBuilder.Append(config.Linktext.ToString().Trim());
	templateBuilder.Append(" - <a target=\"_blank\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("stats.aspx\">统计</a> - ");
	if (config.Sitemapstatus==1)
	{

	templateBuilder.Append("&nbsp;<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("tools/sitemap.aspx\" target=\"_blank\" title=\"百度论坛收录协议\">Sitemap</a>");
	}	//end if

	templateBuilder.Append("\r\n			");
	templateBuilder.Append(config.Statcode.ToString().Trim());
	templateBuilder.Append(config.Icp.ToString().Trim());
	templateBuilder.Append("\r\n			</p>\r\n			<div>\r\n				<a href=\"http://www.comsenz.com/\" target=\"_blank\">Comsenz Technology Ltd</a>\r\n				- <a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("archiver/index.aspx\" target=\"_blank\">简洁版本</a>\r\n			");
	if (config.Stylejump==1)
	{


	if (userid!=-1 || config.Guestcachepagetimeout<=0)
	{

	templateBuilder.Append("\r\n				- <span id=\"styleswitcher\" class=\"drop\" onmouseover=\"showMenu({'ctrlid':this.id, 'pos':'21'})\" onclick=\"window.location.href='");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("showtemplate.aspx'\">界面风格</span>\r\n				");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n			</div>\r\n		</div>\r\n		<a title=\"Powered by Discuz!NT\" target=\"_blank\" href=\"http://nt.discuz.net\"><img border=\"0\" alt=\"Discuz!NT\" src=\"");
	templateBuilder.Append(imagedir.ToString());
	templateBuilder.Append("/discuznt_logo.gif\"/></a>\r\n		<p id=\"copyright\">\r\n			Powered by <strong><a href=\"http://nt.discuz.net\" target=\"_blank\" title=\"Discuz!NT\">Discuz!NT</a></strong> <em class=\"f_bold\">3.6.711</em>\r\n			");
	if (config.Licensed==1)
	{

	templateBuilder.Append("\r\n				(<a href=\"\" onclick=\"this.href='http://nt.discuz.net/certificate/?host='+location.href.substring(0, location.href.lastIndexOf('/'))\" target=\"_blank\">Licensed</a>)\r\n			");
	}	//end if

	templateBuilder.Append("\r\n				");
	templateBuilder.Append(config.Forumcopyright.ToString().Trim());
	templateBuilder.Append("\r\n		</p>\r\n		<p id=\"debuginfo\" class=\"grayfont\">\r\n		");
	if (config.Debug!=0)
	{

	templateBuilder.Append("\r\n			Processed in ");
	templateBuilder.Append(this.Processtime.ToString().Trim());
	templateBuilder.Append(" second(s)\r\n			");
	if (isguestcachepage==1)
	{

	templateBuilder.Append("\r\n				(Cached).\r\n			");
	}
	else if (querycount>1)
	{

	templateBuilder.Append("\r\n				 , ");
	templateBuilder.Append(querycount.ToString());
	templateBuilder.Append(" queries.\r\n			");
	}
	else
	{

	templateBuilder.Append("\r\n				 , ");
	templateBuilder.Append(querycount.ToString());
	templateBuilder.Append(" query.\r\n			");
	}	//end if


	}	//end if

	templateBuilder.Append("\r\n		</p>\r\n	</div>\r\n</div>\r\n<a id=\"scrolltop\" href=\"javascript:;\" style=\"display:none;\" class=\"scrolltop\" onclick=\"setScrollToTop(this.id);\">TOP</a>\r\n<ul id=\"usercenter_menu\" class=\"p_pop\" style=\"display:none;\">\r\n    <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpprofile.aspx?action=avatar\">设置头像</a></li>\r\n    <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpprofile.aspx\">个人资料</a></li>\r\n    <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpnewpassword.aspx\">更改密码</a></li>\r\n    <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercp.aspx\">用户组</a></li>\r\n    <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpsubscribe.aspx\">收藏夹</a></li>\r\n    <li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpcreditspay.aspx\">积分</a></li>\r\n</ul>\r\n\r\n");
	int prentid__loop__id=0;
	foreach(string prentid in mainnavigationhassub)
	{
		prentid__loop__id++;

	templateBuilder.Append("\r\n<ul class=\"p_pop\" id=\"menu_");
	templateBuilder.Append(prentid.ToString());
	templateBuilder.Append("_menu\" style=\"display: none\">\r\n");
	int subnav__loop__id=0;
	foreach(DataRow subnav in subnavigation.Rows)
	{
		subnav__loop__id++;

	bool isoutput = false;
	

	if (subnav["parentid"].ToString().Trim()==prentid)
	{


	if (subnav["level"].ToString().Trim()=="0")
	{

	 isoutput = true;
	

	}
	else
	{


	if (subnav["level"].ToString().Trim()=="1" && userid!=-1)
	{

	 isoutput = true;
	

	}
	else
	{

	bool leveluseradmindi = true;
	
	 leveluseradmindi = (useradminid==3 || useradminid==1 || useradminid==2);
	

	if (subnav["level"].ToString().Trim()=="2" &&  leveluseradmindi)
	{

	 isoutput = true;
	

	}	//end if


	if (subnav["level"].ToString().Trim()=="3" && useradminid==1)
	{

	 isoutput = true;
	

	}	//end if


	}	//end if


	}	//end if


	}	//end if


	if (isoutput)
	{


	if (subnav["id"].ToString().Trim()=="11" || subnav["id"].ToString().Trim()=="12")
	{


	if (config.Statstatus==1)
	{

	templateBuilder.Append("\r\n	" + subnav["nav"].ToString().Trim() + "\r\n        ");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="18")
	{


	if (config.Oltimespan>0)
	{

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n	");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="24")
	{


	if (config.Enablespace==1)
	{

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n 	");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="25")
	{


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n 	");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="26")
	{


	if (config.Enablemall>=1)
	{

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n   	");	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if

	templateBuilder.Append("\r\n    " + subnav["nav"].ToString().Trim() + "\r\n");
	}	//end if


	}	//end loop

	templateBuilder.Append("\r\n</ul>\r\n");
	}	//end loop


	if (config.Stylejump==1)
	{


	if (userid!=-1 || config.Guestcachepagetimeout<=0)
	{

	templateBuilder.Append("\r\n	<ul id=\"styleswitcher_menu\" class=\"popupmenu_popup s_clear\" style=\"display: none;\">\r\n	");
	templateBuilder.Append(templatelistboxoptions.ToString());
	templateBuilder.Append("\r\n	</ul>\r\n	");
	}	//end if


	}	//end if




	templateBuilder.Append("</body>\r\n</html>\r\n");
	}
	else
	{

	templateBuilder.Append("\r\n]]></root>\r\n");
	}	//end if




	Response.Write(templateBuilder.ToString());
}
</script>