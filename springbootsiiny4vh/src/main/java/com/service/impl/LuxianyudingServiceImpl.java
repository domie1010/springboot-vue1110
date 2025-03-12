package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.LuxianyudingDao;
import com.entity.LuxianyudingEntity;
import com.service.LuxianyudingService;
import com.entity.vo.LuxianyudingVO;
import com.entity.view.LuxianyudingView;

@Service("luxianyudingService")
public class LuxianyudingServiceImpl extends ServiceImpl<LuxianyudingDao, LuxianyudingEntity> implements LuxianyudingService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LuxianyudingEntity> page = this.selectPage(
                new Query<LuxianyudingEntity>(params).getPage(),
                new EntityWrapper<LuxianyudingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<LuxianyudingEntity> wrapper) {
		  Page<LuxianyudingView> page =new Query<LuxianyudingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<LuxianyudingVO> selectListVO(Wrapper<LuxianyudingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public LuxianyudingVO selectVO(Wrapper<LuxianyudingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<LuxianyudingView> selectListView(Wrapper<LuxianyudingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public LuxianyudingView selectView(Wrapper<LuxianyudingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
