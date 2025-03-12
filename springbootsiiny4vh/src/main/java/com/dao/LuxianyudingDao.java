package com.dao;

import com.entity.LuxianyudingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.LuxianyudingVO;
import com.entity.view.LuxianyudingView;


/**
 * 路线预定
 * 
 * @author 
 * @email 
 * @date 2024-02-04 22:02:00
 */
public interface LuxianyudingDao extends BaseMapper<LuxianyudingEntity> {
	
	List<LuxianyudingVO> selectListVO(@Param("ew") Wrapper<LuxianyudingEntity> wrapper);
	
	LuxianyudingVO selectVO(@Param("ew") Wrapper<LuxianyudingEntity> wrapper);
	
	List<LuxianyudingView> selectListView(@Param("ew") Wrapper<LuxianyudingEntity> wrapper);

	List<LuxianyudingView> selectListView(Pagination page,@Param("ew") Wrapper<LuxianyudingEntity> wrapper);

	
	LuxianyudingView selectView(@Param("ew") Wrapper<LuxianyudingEntity> wrapper);
	

}
