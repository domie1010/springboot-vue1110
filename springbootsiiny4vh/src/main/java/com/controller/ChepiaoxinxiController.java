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

import com.entity.ChepiaoxinxiEntity;
import com.entity.view.ChepiaoxinxiView;

import com.service.ChepiaoxinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 车票信息
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-04 22:02:00
 */
@RestController
@RequestMapping("/chepiaoxinxi")
public class ChepiaoxinxiController {
    @Autowired
    private ChepiaoxinxiService chepiaoxinxiService;

    @Autowired
    private StoreupService storeupService;



    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ChepiaoxinxiEntity chepiaoxinxi,
		HttpServletRequest request){
        EntityWrapper<ChepiaoxinxiEntity> ew = new EntityWrapper<ChepiaoxinxiEntity>();

		PageUtils page = chepiaoxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chepiaoxinxi), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ChepiaoxinxiEntity chepiaoxinxi, 
		HttpServletRequest request){
        EntityWrapper<ChepiaoxinxiEntity> ew = new EntityWrapper<ChepiaoxinxiEntity>();

		PageUtils page = chepiaoxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chepiaoxinxi), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ChepiaoxinxiEntity chepiaoxinxi){
       	EntityWrapper<ChepiaoxinxiEntity> ew = new EntityWrapper<ChepiaoxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( chepiaoxinxi, "chepiaoxinxi")); 
        return R.ok().put("data", chepiaoxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ChepiaoxinxiEntity chepiaoxinxi){
        EntityWrapper< ChepiaoxinxiEntity> ew = new EntityWrapper< ChepiaoxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( chepiaoxinxi, "chepiaoxinxi")); 
		ChepiaoxinxiView chepiaoxinxiView =  chepiaoxinxiService.selectView(ew);
		return R.ok("查询车票信息成功").put("data", chepiaoxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ChepiaoxinxiEntity chepiaoxinxi = chepiaoxinxiService.selectById(id);
        return R.ok().put("data", chepiaoxinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ChepiaoxinxiEntity chepiaoxinxi = chepiaoxinxiService.selectById(id);
        return R.ok().put("data", chepiaoxinxi);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R vote(@PathVariable("id") String id,String type){
        ChepiaoxinxiEntity chepiaoxinxi = chepiaoxinxiService.selectById(id);
        if(type.equals("1")) {
        	chepiaoxinxi.setThumbsupnum(chepiaoxinxi.getThumbsupnum()+1);
        } else {
        	chepiaoxinxi.setCrazilynum(chepiaoxinxi.getCrazilynum()+1);
        }
        chepiaoxinxiService.updateById(chepiaoxinxi);
        return R.ok("投票成功");
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ChepiaoxinxiEntity chepiaoxinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(chepiaoxinxi);
        chepiaoxinxiService.insert(chepiaoxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ChepiaoxinxiEntity chepiaoxinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(chepiaoxinxi);
        chepiaoxinxiService.insert(chepiaoxinxi);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ChepiaoxinxiEntity chepiaoxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(chepiaoxinxi);
        chepiaoxinxiService.updateById(chepiaoxinxi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        chepiaoxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
