package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 美食信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-02-04 22:02:00
 */
@TableName("meishixinxi")
public class MeishixinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public MeishixinxiEntity() {
		
	}
	
	public MeishixinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
    @TableId(type = IdType.AUTO)
    private Long id;
	/**
	 * 美食名称
	 */
					
	private String meishimingcheng;
	
	/**
	 * 美食分类
	 */
					
	private String meishifenlei;
	
	/**
	 * 封面
	 */
					
	private String fengmian;
	
	/**
	 * 价格
	 */
					
	private Double jiage;
	
	/**
	 * 美食地点
	 */
					
	private String meishididian;
	
	/**
	 * 美食评分
	 */
					
	private String meishipingfen;
	
	/**
	 * 视频介绍
	 */
					
	private String shipinjieshao;
	
	/**
	 * 美食主料
	 */
					
	private String meishizhuliao;
	
	/**
	 * 美食口味
	 */
					
	private String meishikouwei;
	
	/**
	 * 美食特色
	 */
					
	private String meishitese;
	
	/**
	 * 烹饪方法
	 */
					
	private String pengrenfangfa;
	
	/**
	 * 美食详情
	 */
					
	private String meishixiangqing;
	
	/**
	 * 发布时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date fabushijian;
	
	/**
	 * 最近点击时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date clicktime;
	
	/**
	 * 点击次数
	 */
					
	private Integer clicknum;
	
	/**
	 * 评论数
	 */
					
	private Integer discussnum;
	
	/**
	 * 收藏数
	 */
					
	private Integer storeupnum;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：美食名称
	 */
	public void setMeishimingcheng(String meishimingcheng) {
		this.meishimingcheng = meishimingcheng;
	}
	/**
	 * 获取：美食名称
	 */
	public String getMeishimingcheng() {
		return meishimingcheng;
	}
	/**
	 * 设置：美食分类
	 */
	public void setMeishifenlei(String meishifenlei) {
		this.meishifenlei = meishifenlei;
	}
	/**
	 * 获取：美食分类
	 */
	public String getMeishifenlei() {
		return meishifenlei;
	}
	/**
	 * 设置：封面
	 */
	public void setFengmian(String fengmian) {
		this.fengmian = fengmian;
	}
	/**
	 * 获取：封面
	 */
	public String getFengmian() {
		return fengmian;
	}
	/**
	 * 设置：价格
	 */
	public void setJiage(Double jiage) {
		this.jiage = jiage;
	}
	/**
	 * 获取：价格
	 */
	public Double getJiage() {
		return jiage;
	}
	/**
	 * 设置：美食地点
	 */
	public void setMeishididian(String meishididian) {
		this.meishididian = meishididian;
	}
	/**
	 * 获取：美食地点
	 */
	public String getMeishididian() {
		return meishididian;
	}
	/**
	 * 设置：美食评分
	 */
	public void setMeishipingfen(String meishipingfen) {
		this.meishipingfen = meishipingfen;
	}
	/**
	 * 获取：美食评分
	 */
	public String getMeishipingfen() {
		return meishipingfen;
	}
	/**
	 * 设置：视频介绍
	 */
	public void setShipinjieshao(String shipinjieshao) {
		this.shipinjieshao = shipinjieshao;
	}
	/**
	 * 获取：视频介绍
	 */
	public String getShipinjieshao() {
		return shipinjieshao;
	}
	/**
	 * 设置：美食主料
	 */
	public void setMeishizhuliao(String meishizhuliao) {
		this.meishizhuliao = meishizhuliao;
	}
	/**
	 * 获取：美食主料
	 */
	public String getMeishizhuliao() {
		return meishizhuliao;
	}
	/**
	 * 设置：美食口味
	 */
	public void setMeishikouwei(String meishikouwei) {
		this.meishikouwei = meishikouwei;
	}
	/**
	 * 获取：美食口味
	 */
	public String getMeishikouwei() {
		return meishikouwei;
	}
	/**
	 * 设置：美食特色
	 */
	public void setMeishitese(String meishitese) {
		this.meishitese = meishitese;
	}
	/**
	 * 获取：美食特色
	 */
	public String getMeishitese() {
		return meishitese;
	}
	/**
	 * 设置：烹饪方法
	 */
	public void setPengrenfangfa(String pengrenfangfa) {
		this.pengrenfangfa = pengrenfangfa;
	}
	/**
	 * 获取：烹饪方法
	 */
	public String getPengrenfangfa() {
		return pengrenfangfa;
	}
	/**
	 * 设置：美食详情
	 */
	public void setMeishixiangqing(String meishixiangqing) {
		this.meishixiangqing = meishixiangqing;
	}
	/**
	 * 获取：美食详情
	 */
	public String getMeishixiangqing() {
		return meishixiangqing;
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
	/**
	 * 设置：最近点击时间
	 */
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
	/**
	 * 设置：点击次数
	 */
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
	/**
	 * 设置：评论数
	 */
	public void setDiscussnum(Integer discussnum) {
		this.discussnum = discussnum;
	}
	/**
	 * 获取：评论数
	 */
	public Integer getDiscussnum() {
		return discussnum;
	}
	/**
	 * 设置：收藏数
	 */
	public void setStoreupnum(Integer storeupnum) {
		this.storeupnum = storeupnum;
	}
	/**
	 * 获取：收藏数
	 */
	public Integer getStoreupnum() {
		return storeupnum;
	}

}
