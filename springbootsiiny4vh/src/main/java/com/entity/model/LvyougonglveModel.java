package com.entity.model;

import com.entity.LvyougonglveEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 旅游攻略
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2024-02-04 22:02:01
 */
public class LvyougonglveModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 景区地址
	 */
	
	private String jingqudizhi;
		
	/**
	 * 最佳季节
	 */
	
	private String zuijiajijie;
		
	/**
	 * 住宿推荐
	 */
	
	private String zhusutuijian;
		
	/**
	 * 美食推荐
	 */
	
	private String meishituijian;
		
	/**
	 * 预算天数
	 */
	
	private String yusuantianshu;
		
	/**
	 * 预算花费
	 */
	
	private String yusuanhuafei;
		
	/**
	 * 游玩路线
	 */
	
	private String youwanluxian;
		
	/**
	 * 周边介绍
	 */
	
	private String zhoubianjieshao;
		
	/**
	 * 景区图片
	 */
	
	private String jingqutupian;
		
	/**
	 * 发布时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date fabushijian;
				
	
	/**
	 * 设置：景区地址
	 */
	 
	public void setJingqudizhi(String jingqudizhi) {
		this.jingqudizhi = jingqudizhi;
	}
	
	/**
	 * 获取：景区地址
	 */
	public String getJingqudizhi() {
		return jingqudizhi;
	}
				
	
	/**
	 * 设置：最佳季节
	 */
	 
	public void setZuijiajijie(String zuijiajijie) {
		this.zuijiajijie = zuijiajijie;
	}
	
	/**
	 * 获取：最佳季节
	 */
	public String getZuijiajijie() {
		return zuijiajijie;
	}
				
	
	/**
	 * 设置：住宿推荐
	 */
	 
	public void setZhusutuijian(String zhusutuijian) {
		this.zhusutuijian = zhusutuijian;
	}
	
	/**
	 * 获取：住宿推荐
	 */
	public String getZhusutuijian() {
		return zhusutuijian;
	}
				
	
	/**
	 * 设置：美食推荐
	 */
	 
	public void setMeishituijian(String meishituijian) {
		this.meishituijian = meishituijian;
	}
	
	/**
	 * 获取：美食推荐
	 */
	public String getMeishituijian() {
		return meishituijian;
	}
				
	
	/**
	 * 设置：预算天数
	 */
	 
	public void setYusuantianshu(String yusuantianshu) {
		this.yusuantianshu = yusuantianshu;
	}
	
	/**
	 * 获取：预算天数
	 */
	public String getYusuantianshu() {
		return yusuantianshu;
	}
				
	
	/**
	 * 设置：预算花费
	 */
	 
	public void setYusuanhuafei(String yusuanhuafei) {
		this.yusuanhuafei = yusuanhuafei;
	}
	
	/**
	 * 获取：预算花费
	 */
	public String getYusuanhuafei() {
		return yusuanhuafei;
	}
				
	
	/**
	 * 设置：游玩路线
	 */
	 
	public void setYouwanluxian(String youwanluxian) {
		this.youwanluxian = youwanluxian;
	}
	
	/**
	 * 获取：游玩路线
	 */
	public String getYouwanluxian() {
		return youwanluxian;
	}
				
	
	/**
	 * 设置：周边介绍
	 */
	 
	public void setZhoubianjieshao(String zhoubianjieshao) {
		this.zhoubianjieshao = zhoubianjieshao;
	}
	
	/**
	 * 获取：周边介绍
	 */
	public String getZhoubianjieshao() {
		return zhoubianjieshao;
	}
				
	
	/**
	 * 设置：景区图片
	 */
	 
	public void setJingqutupian(String jingqutupian) {
		this.jingqutupian = jingqutupian;
	}
	
	/**
	 * 获取：景区图片
	 */
	public String getJingqutupian() {
		return jingqutupian;
	}
				
	
	/**
	 * 设置：发布时间
	 */
	 
	public void setFabushijian(Date fabushijian) {
		this.fabushijian = fabushijian;
	}
	
	/**
	 * 获取：发布时间
	 */
	public Date getFabushijian() {
		return fabushijian;
	}
			
}
