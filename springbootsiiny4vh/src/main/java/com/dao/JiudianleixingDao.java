package com.dao;

import com.entity.JiudianleixingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiudianleixingVO;
import com.entity.view.JiudianleixingView;


/**
 * 酒店类型
 * 
 * @author 
 * @email 
 * @date 2024-02-04 22:02:00
 */
public interface JiudianleixingDao extends BaseMapper<JiudianleixingEntity> {
	
	List<JiudianleixingVO> selectListVO(@Param("ew") Wrapper<JiudianleixingEntity> wrapper);
	
	JiudianleixingVO selectVO(@Param("ew") Wrapper<JiudianleixingEntity> wrapper);
	
	List<JiudianleixingView> selectListView(@Param("ew") Wrapper<JiudianleixingEntity> wrapper);

	List<JiudianleixingView> selectListView(Pagination page,@Param("ew") Wrapper<JiudianleixingEntity> wrapper);

	
	JiudianleixingView selectView(@Param("ew") Wrapper<JiudianleixingEntity> wrapper);
	

}
