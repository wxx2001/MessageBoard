<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <link rel="stylesheet" href=css/login.css>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-wideh,initial-scale">
    <link rel="stylesheet" href=css/login.css>
  
    <title>登录</title>
</head>

<body>
<!-- 留言的表单 -->
    <form class="layui-form"  method="post" style="width:80%;">
        <input name="lw_name" value="" hidden="hidden"/>
        <input name="lw_date" value="" hidden="hidden"/>
        <input name="lw_for_article_id" value="" hidden="hidden"/>
        <div class="layui-input-block" style="margin-left: 0;">
            <textarea id="lw_content" name="lw_content" placeholder="请输入你的留言" class="layui-textarea" style="height: 150px;"></textarea>
        </div>
        <br/>
        <div class="layui-input-block" style="text-align: left;margin-left: 0;">
            <input type="submit" class="layui-btn" value="留言">
        </div>
    </form>
    <br/>
    <!-- 留言信息列表展示 -->
    <div>
        <ul>
            <!-- 先遍历留言信息（一条留言信息，下面的全是回复信息） -->
            <c:forEach items="" var="words">
                <!-- 如果留言信息是在本文章下的才显示 -->
                <c:if test="">
                    <li style="border-top: 1px dotted #01AAED">
                        <br/>
                        <div style="text-align: left;color:#444">
                            <div>
                                <span style="color:#01AAED"></span>
                            </div>
                            <div></div>
                        </div>
                        <div>
                            <div class="comment-parent" style="text-align:left;margin-top:7px;color:#444">
                                <span></span>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <p>
                                    <a href="javascript:;" style="text-decoration: none;" onclick="btnReplyClick(this)">回复</a>
                                </p>
                                <hr style="margin-top: 7px;"/>
                            </div>
                            <!-- 回复表单默认隐藏 -->
                            <div class="replycontainer layui-hide" style="margin-left: 61px;">
                                <form  method="post" class="layui-form">
                                    <input name="lr_for_article_id" id="lr_for_article_id" value="" hidden="hidden"/>
                                    <input name="lr_name" id="lr_name" value="" hidden="hidden"/>
                                    <input name="lr_date" id="lr_date" value="" hidden="hidden"/>
                                    <input name="lr_for_name" id="lr_for_name" value="" hidden="hidden"/>
                                    <input name="lr_for_words" id="lr_for_words" value="" hidden="hidden"/>
                                    <input name="lr_for_reply" id="lr_for_reply" value="" hidden="hidden"/>
                                    <div class="layui-form-item">
                                        <textarea name="lr_content" id="lr_content" lay-verify="replyContent" placeholder="请输入回复内容" class="layui-textarea" style="min-height:80px;"></textarea>
                                    </div>
                                    <div class="layui-form-item">
                                        <button id="replyBtn" class="layui-btn layui-btn-mini" lay-submit="formReply" lay-filter="formReply">提交</button>
                                    </div>
                                </form>
                            </div>
                        </div>
​
                        <!-- 以下是回复信息 -->
                        <c:forEach items="" var="reply">
                            <!-- 每次遍历出来的留言下存在回复信息才展示（本条回复信息是本条留言下的就显示在当前留言下） -->
                            <c:if test="">
                                <div style="text-align: left;margin-left:61px;color: #444">
                                    <div>
                                        <span style="color:#5FB878">&nbsp;&nbsp;</span>
                                    </div>
                                    <div></div>
                                </div>
                                <div>
                                    <div class="comment-parent" style="text-align:left;margin-top:7px;margin-left:61px;color:#444">
                                        <span></span>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <p>
                                            <a href="javascript:;" style="text-decoration: none;" onclick="btnReplyClick(this)">回复</a>
                                        </p>
                                        <hr style="margin-top: 7px;"/>
                                    </div>
                                    <!-- 回复表单默认隐藏 -->
                                    <div class="replycontainer layui-hide" style="margin-left: 61px;">
                                        <form  method="post" class="layui-form">
                                            <input name="lr_for_article_id" id="lr_for_article_id" value="" hidden="hidden"/>
                                            <input name="lr_name" id="lr_name" value="" hidden="hidden"/>
                                            <input name="lr_date" id="lr_date" value="" hidden="hidden"/>
                                            <input name="lr_for_name" id="lr_for_name" value="" hidden="hidden"/>
                                            <input name="lr_for_words" id="lr_for_words" value="" hidden="hidden"/>
                                            <input name="lr_for_reply" id="lr_for_reply" value="" hidden="hidden"/>
                                            <div class="layui-form-item">
                                                <textarea name="lr_content" id="lr_content" lay-verify="replyContent" placeholder="请输入回复内容" class="layui-textarea" style="min-height:80px;"></textarea>
                                            </div>
                                            <div class="layui-form-item">
                                                <button id="replyBtn" class="layui-btn layui-btn-mini" lay-submit="formReply" lay-filter="formReply">提交</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                    </li>
                </c:if>
            </c:forEach>
        </ul>
    </div>
</body>

</html>