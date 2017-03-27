package cn.it.shop.action;

import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

import cn.it.shop.model.Forder;
import cn.it.shop.model.Product;
import cn.it.shop.model.Sorder;

@Controller
@Scope("prototype")
public class SorderAction extends BaseAction<Sorder> {
	public String addSorder() {
		
		//1. ����product.id��ȡ��Ӧ����Ʒ����
		Product product = productService.get(model.getProduct().getId());
		
		//2. �жϵ�ǰsession�Ƿ��й��ﳵ�����û���򴴽�
		if(session.get("forder") == null) {
			//�����µĹ��ﳵ���洢��session��
			session.put("forder", new Forder(new ArrayList<Sorder>()));
		} 

		//3. ����Ʒ��Ϣת��Ϊsorder,������ӵ����ﳵ�У��жϹ������Ƿ��ظ���
		Forder forder = (Forder) session.get("forder");
		forder = sorderService.addSorder(forder, product);
		
		//4. ���㹺����ܼ۸�
		forder.setTotal(forderService.cluTotal(forder));
		//5. ���µĹ��ﳵ�洢��session��
		session.put("forder", forder);
		return "showCart";
	}
	
	//������Ʒ��Ÿ�����Ʒ����
	public String updateSorder() {
		Forder forder = (Forder) session.get("forder");
		forder = sorderService.updateSorder(model, forder);
		//�����µ��ܼ۸�
		forder.setTotal(forderService.cluTotal(forder));
		session.put("forder", forder);
		//��������ʽ�����µ��ܼ۸�
		inputStream = new ByteArrayInputStream(forder.getTotal().toString().getBytes());
		return "stream";
	}
	
	//
	public String querySale() {
		List<Object> jsonList = sorderService.querySale(model.getNumber());
		
	
		ActionContext.getContext().getValueStack().push(jsonList);
		return "jsonList";
	}
}
