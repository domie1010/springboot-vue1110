package com.dao;

import com.entity.LvyouluxianEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.LvyouluxianVO;
import com.entity.view.LvyouluxianView;


/**
 * 旅游路线
 * 
 * @author 
 * @email 
 * @date 2024-02-04 22:02:00
 */
public interface LvyouluxianDao extends BaseMapper<LvyouluxianEntity> {
	
	List<LvyouluxianVO> selectListVO(@Param("ew") Wrapper<LvyouluxianEntity> wrapper);
	
	LvyouluxianVO selectVO(@Param("ew") Wrapper<LvyouluxianEntity> wrapper);
	
	List<LvyouluxianView> selectListView(@Param("ew") Wrapper<LvyouluxianEntity> wrapper);

	List<LvyouluxianView> selectListView(Pagination page,@Param("ew") Wrapper<LvyouluxianEntity> wrapper);

	
	LvyouluxianView selectView(@Param("ew") Wrapper<LvyouluxianEntity> wrapper);
	

}
