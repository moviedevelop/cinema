<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/14
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/cinema/js/jquery-3.4.1.min.js"></script>
    <script src="layui/layui.js"></script>
    <script src="layui/layui.all.js"></script>
    <link href="layui/css/layui.css" type="text/css" rel="stylesheet"/>

</head>
<body>
<button id="parentIframe">点我</button>
<span id="region_id"></span>
<script>

    $('#parentIframe').on('click', function(){
        layer.open({
            type: 2,
            title: '选择城市',
            maxmin: true,
            shadeClose: true, //点击遮罩关闭层
            area : ['800px' , '520px'],
            content: '/cinema/region/all'
        });
    });
</script>
</body>
</html>
