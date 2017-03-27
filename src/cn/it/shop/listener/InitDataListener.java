package cn.it.shop.listener;

import java.util.List;
import java.util.Timer;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import cn.it.shop.utils.FileUpload;
import cn.it.shop.utils.impl.ProductTimerTask;

public class InitDataListener implements ServletContextListener {
	
	private ApplicationContext context = null;
	private ProductTimerTask productTimerTask = null;
	private FileUpload fileUpload = null;
	
	@Override
	public void contextDestroyed(ServletContextEvent event) {
		// TODO Auto-generated method stub

	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
	
		
		// 通过工具类加载
		context = WebApplicationContextUtils.getWebApplicationContext(event.getServletContext());				
		productTimerTask = (ProductTimerTask) context.getBean("productTimerTask");//
		//把内置对象交给productTimerTask
		productTimerTask.setApplication(event.getServletContext());
		//通过设置定时器，让首页的数据每个一小时同步一次（配置为守护线程）
		new Timer(true).schedule(productTimerTask, 0, 1000*60*60);//每个一小时执行一次productTimerTask
		
		//将存储银行图片的数组放到application中，项目启动的时候加载
		fileUpload = (FileUpload) context.getBean("fileUpload");
		event.getServletContext().setAttribute("bankImageList", fileUpload.getBankImage());
	}

}
