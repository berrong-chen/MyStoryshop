<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<%@ include file="/public/head.jspf" %>
  </head>
  
  <body>
  	<div class="wrapper">
        <div class="header">
            <div class="header_container">
                <!--头部开始-->
                        <div class="top_bar clear">
                            <!--头部小导航-->
                            <div class="welcom fl">好的生活，没那么贵 </div>
                            <ul class="top_links fr">
                                <li class="highlight"><a href="${shop}/index.jsp">首页</a></li>
                                <li><a href="#">我的账户</a></li>
                                <li><a href="${shop}/user/showCart.jsp">购物车</a></li>
                                <li><a href="#">注册</a></li>
                                <li ><a href="${shop}/ulogin.jsp ">登录</a></li>
                            </ul>
                            <!--头部小导航结束-->
                            <!-- logo -->
                            <h1 class="logo clear fl"> <a href="index.jsp"><img src="${shop}/images/logo.png" /></a> </h1>
                            <!-- 购物车 -->
                            <div class="minicart">
                                <a class="minicart_link" href="#">
                                    <span class="item">
                                        <b>0</b> 件/
                                    </span>
                                    <span class="price">
                                        <b>￥0</b>
                                    </span>
                                </a>
                            </div>
                            <!-- 购物车结束 -->
                            <!-- 搜索框 -->
                            <div class="header_search">
                                <div class="form-search ">
                                    <input  value="请输入商品名称" class="input-text"  type="text"/>
                                    <button type="submit" title="Search"></button>
                                </div>
                            </div>
                   
                        </div>
                    
            </div>
        </div>
        <!-- 头部结束 -->

        <!-- 导航栏 -->
        <div class="navigation_container">
        <!---->
         <div class="nav">
            <ul class="primary_nav">
                <li class="active highlight"><a href="#">生活</a>
                    <!--二级菜单-->
                    <ul class="sub_menu">
                        <li > <a href="#">裙装</a>
                            <ul>
                                
                            </ul>
                        </li>
                        <li> <a href="#">居家 </a>
                            <ul>
                              
                            </ul>
                        </li>
                    </ul>
                </li>
                    <!--二级菜单结束-->
                
                <li><a href="#">杂货</a>
                    <!--二级菜单-->
                    <ul class="sub_menu">
                        <li> <a href="#">男士夏装</a>
                            <ul>
                              
                            </ul>
                        </li>
                         <li> <a href="#">电子 </a>
                            <ul>
                                
                            </ul>
                        </li>
                    </ul>
                    <!--二级菜单结束-->
                </li>
                <li><a href="#">居家</a></li>
                <li><a href="#">电子</a></li>
                <li><a href="#">其他 </a></li>
            </ul>
        </div>
        </div>
        <!--导航栏结束-->

        
        <div class="section_container">
            <!--左侧导航-->
            <div id="side_nav">
                <div class="sideNavCategories">
                   <!--   <h1>女装</h1>
                    <ul class="category departments">
                       
                    </ul> -->
                </div>
                
            </div>
            <!-- 右侧焦点图区域 -->
            <div id="main_content ">
                <div > <img src="images/lm_banner_1.png" /> </div>
            </div>
        </div>


            <!-- 产品列表 -->
            <c:forEach items="${applicationScope.bigList}" var="list">
	            <div class="products_list products_slider clear">
	            	<!-- 显示类别名称 -->
	                <h2 class="sub_title">${list[0].category.type}</h2>
	                <ul id="first-carousel" class="first-and-second-carousel jcarousel-skin-tango">
	                    <c:forEach items="${list }" var="product">
		                    <li> 
		                    	<a href="${shop}/product_get.action?id=${product.id}" class="product_image"><img src="${shop}/images/${product.pic}" /></a>
		                        <div class="product_info">
		                            <h3><a href="#">商品名称：${product.name }</a></h3>
		                            <small>简单描述：${product.remark}</small> </div>
		                        <div class="price_info"> 
		                            <a href="${shop}/sorder_addSorder.action?product.id=${product.id}"><button><span class="pr_add">添加购物车</span></button></a>
		                            <button class="price_add" title="" type="button">
		                            	<span class="pr_price">￥${product.price}</span>
		                            </button>
		                        </div>
		                    </li>
	                    </c:forEach>
	                </ul>
	            </div>
            </c:forEach>
            
            
        <!--产品列表结束  -->

         
        <!-- 导航栏结束 -->
        <div class="footer_container">


        <div class="footer">
            <ul class="footer_links">
                <li> <span>收藏本店</span>
                    <ul>
                        <li><a href="#">服装</a></li>
                        <li><a href="#">鞋子</a></li>
                        <li><a href="#">包包</a></li>
                        <li><a href="#">装饰品</a></li>
                        <li><a href="#">channel</a></li>
                        <li><a href="#">prada</a></li>
                        <li><a href="#">LV</a></li>
                    </ul>
                </li>
                <li class="seperator"> <span>出售的品牌</span>
                    <ul>
                        <li><a href="#">Elle</a></li>
                        <li><a href="#">Reallxe</a></li>
                        <li><a href="#">Fabric</a></li>
                        <li><a href="#">Mayflower</a></li>
                        <li><a href="#">Levis Strauss</a></li>
                        <li><a href="#">Anzonica</a></li>
                        <li><a href="#">Reallxe</a></li>
                        <li><a href="#">Fabric</a></li>
                    </ul>
                </li>
                <li> <span>客户服务</span>
                    <ul>
                        <li><a href="#">帮助</a></li>
                        <li><a href="#">速递</a></li>
                        <li><a href="#">退换货</a></li>
                        <li><a href="#">付款方式</a></li>
                        <li><a href="#">订单跟踪</a></li>
                        <li><a href="#">礼物包选项</a></li>
                        <li><a href="#">国际服务</a></li>
                        <li><a href="#">退运险</a></li>
                    </ul>
                </li>
                <li> <span>个人账户</span>
                    <ul>
                        <li><a href="#">个人账户信息</a></li>
                        <li><a href="#">用户密码</a></li>
                        <li><a href="#">订单历史</a></li>
                        <li><a href="#">付款方式</a></li>
                        <li><a href="#">我的收货地址</a></li>
                        <li><a href="#">我的通知</a></li>
                    </ul>
                </li>
            </ul>
           </div> 
       </div>
    </div>
  </body>
</html>
