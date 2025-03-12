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


import com.dao.MeishiyudingDao;
import com.entity.MeishiyudingEntity;
import com.service.MeishiyudingService;
import com.entity.vo.MeishiyudingVO;
import com.entity.view.MeishiyudingView;

@Service("meishiyudingService")
public class MeishiyudingServiceImpl extends ServiceImpl<MeishiyudingDao, MeishiyudingEntity> implements MeishiyudingService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<MeishiyudingEntity> page = this.selectPage(
                new Query<MeishiyudingEntity>(params).getPage(),
                new EntityWrapper<MeishiyudingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<MeishiyudingEntity> wrapper) {
		  Page<MeishiyudingView> page =new Query<MeishiyudingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<MeishiyudingVO> selectListVO(Wrapper<MeishiyudingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public MeishiyudingVO selectVO(Wrapper<MeishiyudingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<MeishiyudingView> selectListView(Wrapper<MeishiyudingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public MeishiyudingView selectView(Wrapper<MeishiyudingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<MeishiyudingEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<MeishiyudingEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<MeishiyudingEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }




}
