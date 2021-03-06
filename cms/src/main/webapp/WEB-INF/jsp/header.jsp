<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!-- 导航条 -->
<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#qh_navbar">
                <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a href="${pageContext.request.contextPath}/index" class="navbar-brand"><span
                    class="iconfont icon-chuanxiang "></span>在线课堂</a>
        </div>
        <div id="qh_navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/index">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/allCourse">全部课程</a></li>
                <c:if test="${user.roleId.id>=2}">
                    <li><a href="${pageContext.request.contextPath}/addCourse">发布课程</a></li>
                    <c:if test="${user.roleId.id>=3}">
                        <li><a href="${pageContext.request.contextPath}/admin">后台管理</a></li>
                    </c:if>
                </c:if>
                <li><a href="${pageContext.request.contextPath}/projectCount">项目统计</a></li>
                <li><a href="https://gitee.com/software_16_group_12/starting_online_classroom/blob/master/README.md">关于我们</a></li>
            </ul>
            <div class="navbar-form navbar-left">
                <form action="${pageContext.request.contextPath}/searchCourse" method="post">
                    <div class="input-group">
                        <input type="text" name="courseInfo" class="form-control"
                               placeholder="课程名称"> <span class="input-group-btn">
								<button type="submit" class="btn btn-primary">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</span>
                    </div>
                </form>
            </div>
            <ul class="nav navbar-nav navbar-right" id="reglog">
                <c:if test="${user==null}">
                    <li><a href="${pageContext.request.contextPath}/login"><span
                            class="glyphicon glyphicon-user"></span> 登录 | <span
                            class="glyphicon glyphicon-log-in"></span> 注册</a></li>
                </c:if>
                <c:if test="${user!=null}">
                    <li><a href="${pageContext.request.contextPath}/localUser" id="username">${user.username}</a></li>
                    <li><a href="${pageContext.request.contextPath}/logout"
                           alt="logout"><i class="iconfont icon-tuichu"></i></a></li>

                </c:if>
            </ul>
        </div>
    </div>
</nav>