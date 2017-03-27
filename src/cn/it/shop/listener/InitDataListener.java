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
	
		
		// ͨ�����������
		context = WebApplicationContextUtils.getWebApplicationContext(event.getServletContext());				
		productTimerTask = (ProductTimerTask) context.getBean("productTimerTask");//
		//�����ö��󽻸�productTimerTask
		productTimerTask.setApplication(event.getServletContext());
		//ͨ�����ö�ʱ��������ҳ������ÿ��һСʱͬ��һ�Σ�����Ϊ�ػ��̣߳�
		new Timer(true).schedule(productTimerTask, 0, 1000*60*60);//ÿ��һСʱִ��һ��productTimerTask
		
		//���洢����ͼƬ������ŵ�application�У���Ŀ������ʱ�����
		fileUpload = (FileUpload) context.getBean("fileUpload");
		event.getServletContext().setAttribute("bankImageList", fileUpload.getBankImage());
	}

}
