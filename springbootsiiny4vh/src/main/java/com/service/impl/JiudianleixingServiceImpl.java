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


import com.dao.JiudianleixingDao;
import com.entity.JiudianleixingEntity;
import com.service.JiudianleixingService;
import com.entity.vo.JiudianleixingVO;
import com.entity.view.JiudianleixingView;

@Service("jiudianleixingService")
public class JiudianleixingServiceImpl extends ServiceImpl<JiudianleixingDao, JiudianleixingEntity> implements JiudianleixingService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiudianleixingEntity> page = this.selectPage(
                new Query<JiudianleixingEntity>(params).getPage(),
                new EntityWrapper<JiudianleixingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiudianleixingEntity> wrapper) {
		  Page<JiudianleixingView> page =new Query<JiudianleixingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<JiudianleixingVO> selectListVO(Wrapper<JiudianleixingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiudianleixingVO selectVO(Wrapper<JiudianleixingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiudianleixingView> selectListView(Wrapper<JiudianleixingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiudianleixingView selectView(Wrapper<JiudianleixingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
