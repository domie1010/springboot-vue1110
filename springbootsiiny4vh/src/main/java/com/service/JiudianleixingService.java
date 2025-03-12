package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiudianleixingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiudianleixingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiudianleixingView;


/**
 * 酒店类型
 *
 * @author 
 * @email 
 * @date 2024-02-04 22:02:00
 */
public interface JiudianleixingService extends IService<JiudianleixingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiudianleixingVO> selectListVO(Wrapper<JiudianleixingEntity> wrapper);
   	
   	JiudianleixingVO selectVO(@Param("ew") Wrapper<JiudianleixingEntity> wrapper);
   	
   	List<JiudianleixingView> selectListView(Wrapper<JiudianleixingEntity> wrapper);
   	
   	JiudianleixingView selectView(@Param("ew") Wrapper<JiudianleixingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiudianleixingEntity> wrapper);

   	

}

