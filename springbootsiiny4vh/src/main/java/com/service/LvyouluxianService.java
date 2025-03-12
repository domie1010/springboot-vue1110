package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.LvyouluxianEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.LvyouluxianVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.LvyouluxianView;


/**
 * 旅游路线
 *
 * @author 
 * @email 
 * @date 2024-02-04 22:02:00
 */
public interface LvyouluxianService extends IService<LvyouluxianEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<LvyouluxianVO> selectListVO(Wrapper<LvyouluxianEntity> wrapper);
   	
   	LvyouluxianVO selectVO(@Param("ew") Wrapper<LvyouluxianEntity> wrapper);
   	
   	List<LvyouluxianView> selectListView(Wrapper<LvyouluxianEntity> wrapper);
   	
   	LvyouluxianView selectView(@Param("ew") Wrapper<LvyouluxianEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<LvyouluxianEntity> wrapper);

   	

}

