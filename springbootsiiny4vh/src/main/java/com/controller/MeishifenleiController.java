package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.MeishifenleiEntity;
import com.entity.view.MeishifenleiView;

import com.service.MeishifenleiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 美食分类
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-04 22:02:00
 */
@RestController
@RequestMapping("/meishifenlei")
public class MeishifenleiController {
    @Autowired
    private MeishifenleiService meishifenleiService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,MeishifenleiEntity meishifenlei,
		HttpServletRequest request){
        EntityWrapper<MeishifenleiEntity> ew = new EntityWrapper<MeishifenleiEntity>();

		PageUtils page = meishifenleiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, meishifenlei), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,MeishifenleiEntity meishifenlei, 
		HttpServletRequest request){
        EntityWrapper<MeishifenleiEntity> ew = new EntityWrapper<MeishifenleiEntity>();

		PageUtils page = meishifenleiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, meishifenlei), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( MeishifenleiEntity meishifenlei){
       	EntityWrapper<MeishifenleiEntity> ew = new EntityWrapper<MeishifenleiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( meishifenlei, "meishifenlei")); 
        return R.ok().put("data", meishifenleiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(MeishifenleiEntity meishifenlei){
        EntityWrapper< MeishifenleiEntity> ew = new EntityWrapper< MeishifenleiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( meishifenlei, "meishifenlei")); 
		MeishifenleiView meishifenleiView =  meishifenleiService.selectView(ew);
		return R.ok("查询美食分类成功").put("data", meishifenleiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        MeishifenleiEntity meishifenlei = meishifenleiService.selectById(id);
        return R.ok().put("data", meishifenlei);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        MeishifenleiEntity meishifenlei = meishifenleiService.selectById(id);
        return R.ok().put("data", meishifenlei);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody MeishifenleiEntity meishifenlei, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(meishifenlei);
        meishifenleiService.insert(meishifenlei);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody MeishifenleiEntity meishifenlei, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(meishifenlei);
        meishifenleiService.insert(meishifenlei);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody MeishifenleiEntity meishifenlei, HttpServletRequest request){
        //ValidatorUtils.validateEntity(meishifenlei);
        meishifenleiService.updateById(meishifenlei);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        meishifenleiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
