package com.dao;

import com.entity.MeishiyudingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.MeishiyudingVO;
import com.entity.view.MeishiyudingView;


/**
 * 美食预定
 * 
 * @author 
 * @email 
 * @date 2024-02-04 22:02:01
 */
public interface MeishiyudingDao extends BaseMapper<MeishiyudingEntity> {
	
	List<MeishiyudingVO> selectListVO(@Param("ew") Wrapper<MeishiyudingEntity> wrapper);
	
	MeishiyudingVO selectVO(@Param("ew") Wrapper<MeishiyudingEntity> wrapper);
	
	List<MeishiyudingView> selectListView(@Param("ew") Wrapper<MeishiyudingEntity> wrapper);

	List<MeishiyudingView> selectListView(Pagination page,@Param("ew") Wrapper<MeishiyudingEntity> wrapper);

	
	MeishiyudingView selectView(@Param("ew") Wrapper<MeishiyudingEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<MeishiyudingEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<MeishiyudingEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<MeishiyudingEntity> wrapper);



}
