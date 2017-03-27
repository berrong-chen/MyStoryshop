<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<%@include file="/public/head.jspf"%>
	<link rel="stylesheet" href="${shop}/css/detail.css" />
</head>
<body>
    <div class="wrapper">
        <div class="header">
            <div class="header_container">
                <!--头部开始-->
                <div class="top_bar clear">
                    <!--头部小导航-->
                    <div class="welcom fl">好的生活，没那么贵</div>
                    <ul class="top_links fr">
                        <li><a href="${shop}/index.jsp">首页</a></li>
                        <li><a href="#">我的账户</a></li>
                        <li><a href="${shop}/user/showCart.jsp">购物车</a></li>
                        <li><a href="#">注册</a></li>
                        <li ><a href="${shop}/ulogin.jsp">登录</a></li>
                    </ul>
                    <!--头部小导航结束-->
                    <!-- logo -->
                    <h1 class="logo clear fl">
                        <a href="${shop}/index.jsp">
                            <img src="${shop}/images/logo.png" />
                        </a>
                    </h1>
                    <!-- 购物车 -->
                    <div class="minicart">
                        <a class="minicart_link" href="#">
                            <span class="item"> <b>0</b>
                                件/
                            </span>
                            <span class="price"> <b>￥0</b>
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
                    <li class="active highlight">
                        <a href="#">生活</a>
                        <!--二级菜单-->
                        <ul class="sub_menu">
                            <li >
                               
                            </li>
                            <li>
                                <a href="#">装饰品</a>
                                <ul>
                                  
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <!--二级菜单结束-->
                    <li>
                        <a href="#">杂货</a>
                        <!--二级菜单-->
                        <ul class="sub_menu">
                            <li>
                                <a href="#">男士夏装</a>
                                <ul>
                                  
                                </ul>
                            </li>
                            <li>
                                <a href="#">装饰品</a>
                                <ul>
                                   
                                </ul>
                            </li>
                        </ul>
                        <!--二级菜单结束--> </li>
                    <li>
                        <a href="#">居家</a>
                    </li>
                    <li>
                        <a href="#">电子</a>
                    </li>
                    <li>
                        <a href="#">其他</a>
                    </li>
                </ul>
            </div>
        </div>
        <!--导航栏结束-->
        <div class="section_container">
            <!-- 面包屑-->
            <ul class="breadcrumb">
                <li>
                    <a href="#">首页</a>
                </li>
               <!--   
                <li>
                    <a href="#">女装</a>
                </li>
                <li class="active">
                    <a href="#">长裙</a>
                </li> -->
            </ul>
            <!-- 产品详情 -->
            <div id="product_detail">
                <!--详情左侧-->
                <div class="product_leftcol fl">
                    <div id="jingdong">
                        <div class="datu">
                            <img src="${shop}/images/${product.pic}" />
                            <div id="fangdajing"></div>
                        </div>
                        <div class="xiaotu">
                            <div class="leftbut"></div>
                            <div class="tu">
                                <ul>
                                    <li>
                                        <img src="${shop}/images/${product.pic}" />
                                    </li>
                                    <li>
                                        <img src="${shop}/images/${product.pic}" />
                                    </li>
                                    <li>
                                        <img src="${shop}/images/${product.pic}" />
                                    </li>
                                    <li>
                                        <img src="${shop}/images/${product.pic}" />
                                    </li>
                                    <li>
                                        <img src="${shop}/images/${product.pic}" />
                                    </li>
                                    
                                    <!--  
                                    <li>
                                        <img src="images/5.png" />
                                    </li>
                                    <li>
                                        <img src="images/6.png" />
                                    </li>
                                    <li>
                                        <img src="images/7.png" />
                                    </li>
                                    <li>
                                        <img src="images/8.png" />
                                    </li>
                                    -->
                                    
                                </ul>
                            </div>
                            <div class="rightbut"></div>
                        </div>
                    </div>
                </div>
                <!--详情左侧结束-->
                <!--详情右侧-->
                <div class="product_rightcol fr">
                    <div id="name">
                        <h1>${product.name}</h1>
                        <strong>${product.xremark} </strong>
                    </div>
                    <ul id="summary">
                        <li id="summary-market">
                            <div class="dt">参&nbsp;考&nbsp;价：</div>
                            <div class="dd"> <del id="page_maprice">￥219.00</del>
                            </div>
                        </li>
                        <li id="summary-price">
                            <div class="dt">折&nbsp;后&nbsp;价：</div>
                            <div class="dd"> <strong class="p-price" id="jd-price">￥${product.price}</strong>
                            </div>
                        </li>
                    </ul>
                    <ul id="choose" >
                        <li id="choose-color" class="choose-color-shouji">
                            <div class="dt">选择颜色：</div>
                            <div class="dd">
                                <div class="item">
                                    <b></b>
                                    <a href="#none" title="白色">
                                        <img data-img="1" src="${shop}/images/white.png" width="25" height="25" alt="白色 "> <i>白色</i>
                                    </a>
                                </div>
                                <div class="item  selected">
                                    <b></b>
                                    <a href="#none" title="黑色">
                                        <img data-img="1" src="${shop}/images/black.png" width="25" height="25" alt="黑色 "> <i>黑色</i>
                                    </a>
                                </div>
                            </div>
                        </li>
                       <!--   <li id="choose-version">
                            <div class="dt">选择尺码：</div>
                            <div class="dd">
                                <div class="item">
                                    <b></b>
                                    <a href="#none" title="S" style="cursor: pointer;">S</a>
                                </div>
                                <div class="item  selected">
                                    <b></b>
                                    <a href="#none" title="M" style="cursor: pointer;">M</a>
                                </div>
                                <div class="item">
                                    <b></b>
                                    <a href="#none" title="L" style="cursor: pointer;">L</a>
                                </div>
                                <div class="item">
                                    <b></b>
                                    <a href="#none" title="XL" style="cursor: pointer;">XL</a>
                                </div>
                                <div class="item">
                                    <b></b>
                                    <a href="#none" title="XXL" style="cursor: pointer;">XXL</a>
                                </div>
                            </div>
                        </li>   -->
                        
                        
                        
                        <li id="choose-amount">
                            <div class="dt">购买数量：</div>
                            <div class="dd">
								 <input value="1" size="2" >
                            </div>
                        </li>
                        
                        <li id="kucun">
                            <div class="dt">库存数：</div>
                            <div class="dt">
							
							<div class="dd">100</del>
                            </div>
                        </li>
                    </ul>
                    <div class="add_to_buttons">                   
                        <a href="${shop}/sorder_addSorder.action?product.id=${product.id}">
                        	<button class="add_cart">加入购物车</button>
                        </a>
                        
                    </div>
                </div>
                <!--详情右侧结束--> </div>
            <!--产品详情结束-->
            
            <
	           
	            	<!-- 显示类别名称 -->
	              
	              
            
            
            
            <!-- 产品列表 -->
            <div class="products_list products_slider clear">
                <h2 class="sub_title">新品发售</h2>
                <ul id="first-carousel" class="first-and-second-carousel jcarousel-skin-tango">
                    <li>
                        <a  href="${shop}/product_get.action?id=3" class="product_image">
                            <img src="${shop}/images/xifu3.png" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">商品名称：${product.name}</a>
                            </h3>
                            <small>简单描述：${product.remark}</small>
                        </div>
                        <div class="price_info">
                          <a href="${shop}/sorder_addSorder.action?product.id=${product.id}"><button><span class="pr_add">添加购物车</span></button></a>
		                            <button class="price_add" title="" type="button">
		                            	<span class="pr_price">￥${product.price}</span>
		                            </button>
                        </div>
                    </li>
                      
                   <li>
                        <a  href="${shop}/product_get.action?id=5" class="product_image">
                            <img src="${shop}/images/nz1.png" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">商品名称：${product.name}</a>
                            </h3>
                            <small>简单描述：${product.remark}</small>
                        </div>
                        <div class="price_info">
                          <a href="${shop}/sorder_addSorder.action?product.id=${product.id}"><button><span class="pr_add">添加购物车</span></button></a>
		                            <button class="price_add" title="" type="button">
		                            	<span class="pr_price">￥${product.price}</span>
		                            </button>
                        </div>
                    </li>
                    
                    
                    <li>
                        <a  href="${shop}/product_get.action?id=1" class="product_image">
                            <img src="${shop}/images/xifu1.png" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">商品名称：${product.name}</a>
                            </h3>
                            <small>简单描述：${product.remark}</small>
                        </div>
                        <div class="price_info">
                          <a href="${shop}/sorder_addSorder.action?product.id=${product.id}"><button><span class="pr_add">添加购物车</span></button></a>
		                            <button class="price_add" title="" type="button">
		                            	<span class="pr_price">￥${product.price}</span>
		                            </button>
                        </div>
                    </li>
                   
                    <li>
                        <a  href="${shop}/product_get.action?id=8" class="product_image">
                            <img src="${shop}/images/st1.png" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">商品名称：${product.name}</a>
                            </h3>
                            <small>简单描述：${product.remark}</small>
                        </div>
                        <div class="price_info">
                          <a href="${shop}/sorder_addSorder.action?product.id=${product.id}"><button><span class="pr_add">添加购物车</span></button></a>
		                            <button class="price_add" title="" type="button">
		                            	<span class="pr_price">￥${product.price}</span>
		                            </button>
                        </div>
                    </li>
                   
                      <li>
                        <a  href="${shop}/product_get.action?id=9" class="product_image">
                            <img src="${shop}/images/xj1.png" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">商品名称：${product.name}</a>
                            </h3>
                            <small>简单描述：${product.remark}</small>
                        </div>
                        <div class="price_info">
                          <a href="${shop}/sorder_addSorder.action?product.id=${product.id}"><button><span class="pr_add">添加购物车</span></button></a>
		                            <button class="price_add" title="" type="button">
		                            	<span class="pr_price">￥${product.price}</span>
		                            </button>
                        </div>
                    </li>
                     
                     <li>
                        <a  href="${shop}/product_get.action?id=11" class="product_image">
                            <img src="${shop}/images/yp1.png" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">商品名称：${product.name}</a>
                            </h3>
                            <small>简单描述：${product.remark}</small>
                        </div>
                        <div class="price_info">
                          <a href="${shop}/sorder_addSorder.action?product.id=${product.id}"><button><span class="pr_add">添加购物车</span></button></a>
		                            <button class="price_add" title="" type="button">
		                            	<span class="pr_price">￥${product.price}</span>
		                            </button>
                        </div>
                    </li>
                    
                    <li>
                        <a  href="${shop}/product_get.action?id=13" class="product_image">
                            <img src="${shop}/images/dnz1.png" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">商品名称：${product.name}</a>
                            </h3>
                            <small>简单描述：${product.remark}</small>
                        </div>
                        <div class="price_info">
                          <a href="${shop}/sorder_addSorder.action?product.id=${product.id}"><button><span class="pr_add">添加购物车</span></button></a>
		                            <button class="price_add" title="" type="button">
		                            	<span class="pr_price">￥${product.price}</span>
		                            </button>
                        </div>
                    </li>
                    
                     <li>
                        <a  href="${shop}/product_get.action?id=16" class="product_image">
                            <img src="${shop}/images/ds1.png" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">商品名称：${product.name}</a>
                            </h3>
                            <small>简单描述：${product.remark}</small>
                        </div>
                        <div class="price_info">
                          <a href="${shop}/sorder_addSorder.action?product.id=${product.id}"><button><span class="pr_add">添加购物车</span></button></a>
		                            <button class="price_add" title="" type="button">
		                            	<span class="pr_price">￥${product.price}</span>
		                            </button>
                        </div>
                    </li>
                   
                </ul>
            </div>
            <!--产品列表结束  -->
            <!-- 产品列表 -->
            <!--  
            <div class="products_list products_slider clear">
                <h2 class="sub_title">新品发售</h2>
                <ul id="first-carousel" class="first-and-second-carousel jcarousel-skin-tango">
                    <li>
                        <a  href="#" class="product_image">
                            <img src="images/pr_l_1.jpg" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">夏季新品长裙</a>
                            </h3>
                            <small>印花 纯棉</small>
                        </div>
                        <div class="price_info">
                        <button>
                            <span class="pr_add">添加购物车</span>
                        </button>
                        <button class="price_add" title="" type="button">
                            <span class="pr_price">￥76.00</span></button>
                        </div>
                    </li>
                    <li>
                        <a  href="#" class="product_image">
                            <img src="images/pr_l_2.jpg" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">夏季新品长裙</a>
                            </h3>
                            <small>印花 纯棉</small>
                        </div>
                        <div class="price_info">
                            <button>
                                <span class="pr_add">添加购物车</span>
                            </button>
                            <button class="price_add" title="" type="button">
                                <span class="pr_price">￥76.00</span>
                            </button>
                        </div>
                    </li>
                    <li>
                        <a  href="#" class="product_image">
                            <img src="images/pr_l_3.jpg" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">夏季新品长裙</a>
                            </h3>
                            <small>印花 纯棉</small>
                        </div>
                        <div class="price_info">
                            <button>
                                <span class="pr_add">添加购物车</span>
                            </button>
                            <button class="price_add" title="" type="button">
                                <span class="pr_price">￥76.00</span>
                            </button>
                        </div>
                    </li>
                    <li>
                        <a  href="#" class="product_image">
                            <img src="images/pr_l_5.jpg" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">夏季新品长裙</a>
                            </h3>
                            <small>印花 纯棉</small>
                        </div>
                        <div class="price_info">
                            <button>
                                <span class="pr_add">添加购物车</span>
                            </button>
                            <button class="price_add" title="" type="button">
                                <span class="pr_price">￥76.00</span>
                            </button>
                        </div>
                    </li>
                    <li>
                        <a  href="#" class="product_image">
                            <img src="images/pr_l_1.jpg" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">夏季新品长裙</a>
                            </h3>
                            <small>印花 纯棉</small>
                        </div>
                        <div class="price_info">
                            <button>
                                <span class="pr_add">添加购物车</span>
                            </button>
                            <button class="price_add" title="" type="button">
                                <span class="pr_price">￥76.00</span>
                            </button>
                        </div>
                    </li>
                    <li>
                        <a  href="#" class="product_image">
                            <img src="images/pr_l_2.jpg" />
                        </a>
                        <div class="product_info">
                            <h3>
                                <a href="#">夏季新品长裙</a>
                            </h3>
                            <small>印花 纯棉</small>
                        </div>
                        <div class="price_info">
                            <button>
                                <span class="pr_add">添加购物车</span>
                            </button>
                            <button class="price_add" title="" type="button">
                                <span class="pr_price">￥76.00</span>
                            </button>
                        </div>
                    </li>
                </ul>
            </div> -->
            <!--产品列表结束  -->
            <!-- 导航栏结束 -->
            <div class="footer_container">
                <div class="footer">
                    <ul class="footer_links">
                        <li>
                            <span>收藏本店</span>
                            <ul>
                                <li>
                                    <a href="#">服装</a>
                                </li>
                                <li>
                                    <a href="#">鞋子</a>
                                </li>
                                <li>
                                    <a href="#">包包</a>
                                </li>
                                <li>
                                    <a href="#">装饰品</a>
                                </li>
                                <li>
                                    <a href="#">channel</a>
                                </li>
                                <li>
                                    <a href="#">prada</a>
                                </li>
                                <li>
                                    <a href="#">LV</a>
                                </li>
                            </ul>
                        </li>
                        <li class="seperator">
                            <span>出售的品牌</span>
                            <ul>
                                <li>
                                    <a href="#">Elle</a>
                                </li>
                                <li>
                                    <a href="#">Reallxe</a>
                                </li>
                                <li>
                                    <a href="#">Fabric</a>
                                </li>
                                <li>
                                    <a href="#">Mayflower</a>
                                </li>
                                <li>
                                    <a href="#">Levis Strauss</a>
                                </li>
                                <li>
                                    <a href="#">Anzonica</a>
                                </li>
                                <li>
                                    <a href="#">Reallxe</a>
                                </li>
                                <li>
                                    <a href="#">Fabric</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <span>客户服务</span>
                            <ul>
                                <li>
                                    <a href="#">帮助</a>
                                </li>
                                <li>
                                    <a href="#">速递</a>
                                </li>
                                <li>
                                    <a href="#">退换货</a>
                                </li>
                                <li>
                                    <a href="#">付款方式</a>
                                </li>
                                <li>
                                    <a href="#">订单跟踪</a>
                                </li>
                                <li>
                                    <a href="#">礼物包选项</a>
                                </li>
                                <li>
                                    <a href="#">国际服务</a>
                                </li>
                                <li>
                                    <a href="#">退运险</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <span>个人账户</span>
                            <ul>
                                <li>
                                    <a href="#">个人账户信息</a>
                                </li>
                                <li>
                                    <a href="#">用户密码</a>
                                </li>
                                <li>
                                    <a href="#">订单历史</a>
                                </li>
                                <li>
                                    <a href="#">付款方式</a>
                                </li>
                                <li>
                                    <a href="#">我的收货地址</a>
                                </li>
                                <li>
                                    <a href="#">我的通知</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
         </div>
      </div>
	</body>
</html>
