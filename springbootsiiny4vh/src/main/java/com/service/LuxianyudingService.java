package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.LuxianyudingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.LuxianyudingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.LuxianyudingView;


/**
 * 路线预定
 *
 * @author 
 * @email 
 * @date 2024-02-04 22:02:00
 */
public interface LuxianyudingService extends IService<LuxianyudingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<LuxianyudingVO> selectListVO(Wrapper<LuxianyudingEntity> wrapper);
   	
   	LuxianyudingVO selectVO(@Param("ew") Wrapper<LuxianyudingEntity> wrapper);
   	
   	List<LuxianyudingView> selectListView(Wrapper<LuxianyudingEntity> wrapper);
   	
   	LuxianyudingView selectView(@Param("ew") Wrapper<LuxianyudingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<LuxianyudingEntity> wrapper);

   	

}

