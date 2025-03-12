package com.entity.view;

import com.entity.DiscussmeishixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 美食信息评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-02-04 22:02:02
 */
@TableName("discussmeishixinxi")
public class DiscussmeishixinxiView  extends DiscussmeishixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussmeishixinxiView(){
	}
 
 	public DiscussmeishixinxiView(DiscussmeishixinxiEntity discussmeishixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, discussmeishixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
