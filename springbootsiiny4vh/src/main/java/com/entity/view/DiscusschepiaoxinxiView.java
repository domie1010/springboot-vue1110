package com.entity.view;

import com.entity.DiscusschepiaoxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 车票信息评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-02-04 22:02:01
 */
@TableName("discusschepiaoxinxi")
public class DiscusschepiaoxinxiView  extends DiscusschepiaoxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscusschepiaoxinxiView(){
	}
 
 	public DiscusschepiaoxinxiView(DiscusschepiaoxinxiEntity discusschepiaoxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, discusschepiaoxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
