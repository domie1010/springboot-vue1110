package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.MeishiyudingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.MeishiyudingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.MeishiyudingView;


/**
 * 美食预定
 *
 * @author 
 * @email 
 * @date 2024-02-04 22:02:01
 */
public interface MeishiyudingService extends IService<MeishiyudingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<MeishiyudingVO> selectListVO(Wrapper<MeishiyudingEntity> wrapper);
   	
   	MeishiyudingVO selectVO(@Param("ew") Wrapper<MeishiyudingEntity> wrapper);
   	
   	List<MeishiyudingView> selectListView(Wrapper<MeishiyudingEntity> wrapper);
   	
   	MeishiyudingView selectView(@Param("ew") Wrapper<MeishiyudingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<MeishiyudingEntity> wrapper);

   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<MeishiyudingEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<MeishiyudingEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<MeishiyudingEntity> wrapper);



}

