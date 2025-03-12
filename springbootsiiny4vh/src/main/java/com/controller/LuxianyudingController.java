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

import com.entity.LuxianyudingEntity;
import com.entity.view.LuxianyudingView;

import com.service.LuxianyudingService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 路线预定
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-04 22:02:00
 */
@RestController
@RequestMapping("/luxianyuding")
public class LuxianyudingController {
    @Autowired
    private LuxianyudingService luxianyudingService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,LuxianyudingEntity luxianyuding,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			luxianyuding.setYonghuzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<LuxianyudingEntity> ew = new EntityWrapper<LuxianyudingEntity>();

		PageUtils page = luxianyudingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, luxianyuding), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,LuxianyudingEntity luxianyuding, 
		HttpServletRequest request){
        EntityWrapper<LuxianyudingEntity> ew = new EntityWrapper<LuxianyudingEntity>();

		PageUtils page = luxianyudingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, luxianyuding), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( LuxianyudingEntity luxianyuding){
       	EntityWrapper<LuxianyudingEntity> ew = new EntityWrapper<LuxianyudingEntity>();
      	ew.allEq(MPUtil.allEQMapPre( luxianyuding, "luxianyuding")); 
        return R.ok().put("data", luxianyudingService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(LuxianyudingEntity luxianyuding){
        EntityWrapper< LuxianyudingEntity> ew = new EntityWrapper< LuxianyudingEntity>();
 		ew.allEq(MPUtil.allEQMapPre( luxianyuding, "luxianyuding")); 
		LuxianyudingView luxianyudingView =  luxianyudingService.selectView(ew);
		return R.ok("查询路线预定成功").put("data", luxianyudingView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        LuxianyudingEntity luxianyuding = luxianyudingService.selectById(id);
        return R.ok().put("data", luxianyuding);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        LuxianyudingEntity luxianyuding = luxianyudingService.selectById(id);
        return R.ok().put("data", luxianyuding);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody LuxianyudingEntity luxianyuding, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(luxianyuding);
        luxianyudingService.insert(luxianyuding);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody LuxianyudingEntity luxianyuding, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(luxianyuding);
        luxianyudingService.insert(luxianyuding);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody LuxianyudingEntity luxianyuding, HttpServletRequest request){
        //ValidatorUtils.validateEntity(luxianyuding);
        luxianyudingService.updateById(luxianyuding);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        luxianyudingService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
