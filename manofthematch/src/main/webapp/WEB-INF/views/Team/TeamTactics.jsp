<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-gb" lang="en-gb">
<head>
    <title>Football Formation Creator - footballuser.com</title>
    <meta property="fb:app_id" content="237422662954369" />
    <link href="http://static.footballuser.com/stylesheets/footballuser.min.css?v2.09" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
    <script type="text/javascript" src="http://static.footballuser.com/javascripts/jquery.json-2.3.min.js"></script>
    <script type="text/javascript" src="http://static.footballuser.com/javascripts/footballuser.min.js?v2.09"></script>
    <script type="text/javascript" src="http://static.footballuser.com/javascripts/jquery.ui.touch-punch-1.7.2.js"></script>
    <script type="text/javascript" src="http://static.footballuser.com/javascripts/chosen.jquery.min.js"></script>

    <meta name="description" content="Create and share your own football formations."/>
    <meta name="keywords" content="squad builder, squad creator, football formations, soccer formations"/>
    <meta property="og:title" content="Football Formations"/>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="http://www.footballuser.com/post"/>
    <meta property="og:image" content="http://www.footballuser.com/assets/images/logo.jpg"/>
    <meta property="og:site_name" content="footballuser.com"/>
    <meta property="og:description" content="Create and share your own football formations."/>
   

    <script type="text/javascript">
      _ = { __: 1, $_$: 2, _: 4, _$: 5, $$: 6, $$_: "A", $__: 8, _$_: "U" };
      var _b = _._$_ + _.$$_ + "-" + _.__ + _._$ + _.__ + _.$$ + _._$ + _._ + _.$__ + _.$_$ + "-" + _.$_$;
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', _b]);
      _gaq.push(['_trackPageview']);
      (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);
      })();
    </script>
    <style type="text/css">
        body 
        {
            background-color: #F9FAFB;
            /*background: url("/assets/images/bg2.png") repeat-y scroll 50% 0 #EAEBEF;*/
        }
        input, select, textarea 
        {
            border: 1px solid #909090;
        }
        #subnav ul, #subnav li a { background-color: #3F3F3F; }
        h1.logo_type { font-size: 33.4px; }
        #header a:link, #header a:active, #header a:visited { color: #323232; }
        #header a:hover { background-color: #323232; color: #FFFFFF; }
        .boxheader li p { background-color: #323232; }
        .boxheader { border-bottom: 2px solid #323232; }
    </style>
</head>
<body>
	
	<div class="container">
		&nbsp;<h1 class="text-muted;"><img src="${pageContext.request.contextPath}/resources/image/logo2.png" width=50 height=50 align=left">Man Of The Match 전술현황판&nbsp;<input style="margin-left:10px; height: 20px" class="button" value="뒤로가기" type="submit" onClick="location.href='Home'"/></h1>
	 <br><br><br>
	 <div class="left_padded topspaced">
	 
	 <h3>포메이션을 설정합니다 <em class="grey small"></em></h3>
			      
			        <select class="edit_field" id="Type" name="Type">
			            <option value=""></option><option>5-4-1</option><option>5-3-2</option><option>4-5-1</option><option>4-4-2</option><option>4-4-1-1</option>
			            <option>4-3-3</option><option>4-3-2-1</option><option>4-3-1-2</option><option>4-2-4</option><option>4-2-3-1</option><option>4-2-2-2</option>
			            <option>4-2-1-3</option><option>4-1-4-1</option><option>4-1-3-2</option><option>4-1-2-3</option>
			            <option>3-5-2</option><option>3-5-1-1</option><option>3-4-3</option><option>3-4-2-1</option><option>3-4-1-2</option>
			        </select>
			        
			        <input class="button" type="submit" value="저장하기" id="submit" name="submit" />
			        <span id="ajaxloader3" class="left_padded" style="display:none"><img alt="" src="http://static.footballuser.com/images/ajax-loader.gif" /> </span>
			    
			    </div>
		
			<br class="clear" />
		<div class="content">
			<script type="text/javascript">
				    var config = {
				        '.edit_field': {}
				    }
				    for (var selector in config) {
				        $(selector).chosen(config[selector]);
				    }
			</script>
			<div class="left super_leftspaced">
			    <div class="left">
			    <h3>유니폼 색상을 선택하세요 <em class="grey small"></em></h3>
			    <div id="shirts" class="left_padded more_topspaced" style="height:400px;width:250px; overflow:auto">
			        <img id="_1.png" class="active_shirt shirt" src="http://static.footballuser.com/images/shirts/_1.png" alt="" />
			        <img id="_2.png" class="shirt" src="http://static.footballuser.com/images/shirts/_2.png" alt="" />
			        <img id="_3.png" class="shirt" src="http://static.footballuser.com/images/shirts/_3.png" alt="" />
			        <img id="_4.png" class="shirt" src="http://static.footballuser.com/images/shirts/_4.png" alt="" />
			        <img id="_5.png" class="shirt" src="http://static.footballuser.com/images/shirts/_5.png" alt="" />
			        <img id="_6.png" class="shirt" src="http://static.footballuser.com/images/shirts/_6.png" alt="" />
			        <img id="_7.png" class="shirt" src="http://static.footballuser.com/images/shirts/_7.png" alt="" />
			        <img id="_8.png" class="shirt" src="http://static.footballuser.com/images/shirts/_8.png" alt="" />
			        <img id="_9.png" class="shirt" src="http://static.footballuser.com/images/shirts/_9.png" alt="" />
			        <img id="_10.png" class="shirt" src="http://static.footballuser.com/images/shirts/_10.png" alt="" />
			        <img id="_11.png" class="shirt" src="http://static.footballuser.com/images/shirts/_11.png" alt="" />
			        <img id="_12.png" class="shirt" src="http://static.footballuser.com/images/shirts/_12.png" alt="" />
			        <img id="_13.png" class="shirt" src="http://static.footballuser.com/images/shirts/_13.png" alt="" />
			        <img id="_14.png" class="shirt" src="http://static.footballuser.com/images/shirts/_14.png" alt="" />
			        <img id="_15.png" class="shirt" src="http://static.footballuser.com/images/shirts/_15.png" alt="" />
			        <img id="_16.png" class="shirt" src="http://static.footballuser.com/images/shirts/_16.png" alt="" />
			        <img id="_17.png" class="shirt" src="http://static.footballuser.com/images/shirts/_17.png" alt="" />
			        <img id="_18.png" class="shirt" src="http://static.footballuser.com/images/shirts/_18.png" alt="" />
			        <img id="_19.png" class="shirt" src="http://static.footballuser.com/images/shirts/_19.png" alt="" />
			        <img id="_20.png" class="shirt" src="http://static.footballuser.com/images/shirts/_20.png" alt="" />
			        <img id="_21.png" class="shirt" src="http://static.footballuser.com/images/shirts/_21.png" alt="" />
			        <img id="_22.png" class="shirt" src="http://static.footballuser.com/images/shirts/_22.png" alt="" />
			        <img id="_23.png" class="shirt" src="http://static.footballuser.com/images/shirts/_23.png" alt="" />
			        <img id="_24.png" class="shirt" src="http://static.footballuser.com/images/shirts/_24.png" alt="" />
			        <img id="_25.png" class="shirt" src="http://static.footballuser.com/images/shirts/_25.png" alt="" />
			        <img id="_26.png" class="shirt" src="http://static.footballuser.com/images/shirts/_26.png" alt="" />
			    </div>
			    </div>
			    
			    <div class="left super_leftspaced">
			        <h3>선수명단을 확인합니다 <em class="grey small"></em></h3>
			        <div class="topspaced">
			            <input id="playername" class="less_topspaced" type="text" value="" size="9" name="playername" />
			            <input style="margin-left:15px; height: 20px" class="button" value="선수입력" type="submit" id="addplayer" />
			        </div>        
			        <div id="player_list" class="player_list">
			            <table id="player_table" cellspacing="0" cellpadding="0" border="0" width="200">
			                <tbody>
			                    <tr>
			                        <td height="10" align="left" class="member_name">
			                            <strong>선수이름</strong>&nbsp;&nbsp;
			                        </td>
			                        
			                        <td height="10" align="left" class="player_position">
			                            <strong>선수포지션</strong>
			                        </td>
			                        
			                        <td height="10" align="right" class="player_header">
			                            <a href="#" class="delete_players no_underline"><strong> « 모두삭제하기</strong></a>
			                        </td>
			                     </tr>
			                     
			                </tbody>
			            </table>
			        </div>
			 	</div>
			    
			

			
			    <div class="left">
			        <h3>선택된 선수를 필드의 원하는 위치로 드래그해주세요</h3>
			        <div class="left_padded">
			            <div id="field" class="more_topspaced">
			                <img id="field_image" height="513" width="316" src="http://static.footballuser.com/images/field.jpg" alt="" />
			            </div>
			        </div>
			    </div>
			    
			    <br class="clear" />
	
</div>

</div>
 </div>  
</body>
</html>
