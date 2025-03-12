<template>
<div class="home-preview" :style='{"margin":"0px auto","flexWrap":"wrap","flexDirection":"column","background":"none","display":"flex","width":"100%","justifyContent":"center"}'>



		<!-- 关于我们 -->
		<div id="about" class="animate__animated" :style='{"padding":"30px 7%","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"0 0 0px","background":"url(http://codegen.caihongy.cn/20230920/092c7d955a9546ed9c0e247c8b684684.jpg) no-repeat center top / 100% 100%,#fff","width":"100%","position":"relative","height":"auto","order":"2"}'>
		  <div :style='{"margin":"10px 0 0","color":"#1abc9e","textAlign":"left","background":"none","width":"100%","lineHeight":"56px","fontSize":"28px","fontWeight":"600"}'>{{aboutUsDetail.title}}</div>
		  <div :style='{"width":"100%","margin":"0 0 30px","lineHeight":"1.5","fontSize":"16px","color":"#888","textAlign":"left"}'>{{aboutUsDetail.subtitle}}</div>
		  <div :style='{"padding":"0 0px","top":"0","flexWrap":"wrap","display":"flex","width":"48%","position":"absolute","right":"0","height":"100%"}'>
		    <img :style='{"width":"100%","margin":"0 0px","objectFit":"cover","display":"block","height":"100%"}' :src="baseUrl + aboutUsDetail.picture1">
		    <img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseUrl + aboutUsDetail.picture2">
		    <img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseUrl + aboutUsDetail.picture3">
		  </div>
		  <div :style='{"padding":"0px","margin":"0 0 10px 0","overflow":"hidden","color":"rgb(102, 102, 102)","background":"none","width":"48%","fontSize":"16px","textIndent":"2em","height":"320px"}' v-html="aboutUsDetail.content"></div>
		  <div :style='{"top":"0","left":"52%","background":"url(http://codegen.caihongy.cn/20230920/8a35b5134ee644b8a9a87ea99a0f1490.png) no-repeat","display":"block","width":"200px","position":"absolute","height":"100%"}' />
		  <div :style='{"width":"285px","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
		  <div :style='{"width":"285px","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
		  <div :style='{"width":"285px","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
		  <div :style='{"border":"0","cursor":"pointer","margin":"30px 0 0","textAlign":"center","background":"#1abc9e","display":"block","width":"150px","lineHeight":"40px"}' @click="toDetail('aboutusDetail',aboutUsDetail)">
		    <span :style='{"color":"#f5f5f5","fontSize":"14px"}'>了解更多</span>
		    <span class="icon iconfont icon-gengduo1" :style='{"color":"#f5f5f5","fontSize":"12px"}'></span>
		  </div>
		</div>
		<!-- 关于我们 -->

		<!-- 系统简介 -->
		<div id="system" class="animate__animated" :style='{"padding":"30px 7% 20px","margin":"0 auto","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230921/fb83626e10da44a58186d9678cf61522.jpg) no-repeat center top / 100% 100%,#fff","flexDirection":"row-reverse","display":"flex","width":"100%","position":"relative","height":"auto","order":"4"}'>
		  <div :style='{"margin":"10px 0 0","color":"#1abc9e","textAlign":"right","background":"none","width":"100%","lineHeight":"56px","fontSize":"28px","fontWeight":"600"}'>{{systemIntroductionDetail.title}}</div>
		  <div :style='{"width":"100%","margin":"0 0 30px","lineHeight":"1.5","fontSize":"16px","color":"#888","textAlign":"right"}'>{{systemIntroductionDetail.subtitle}}</div>
		  <div :style='{"padding":"0 0px","top":"0","flexWrap":"wrap","left":"0","display":"block","width":"48%","position":"absolute","height":"100%","order":"2"}'>
		    <img :style='{"width":"100%","margin":"0 0px","objectFit":"cover","display":"block","height":"100%"}' :src="baseUrl + systemIntroductionDetail.picture1">
		    <img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseUrl + systemIntroductionDetail.picture2">
		    <img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseUrl + systemIntroductionDetail.picture3">
		  </div>
		  <div :style='{"padding":"0px","margin":"0 0 10px 0","overflow":"hidden","color":"rgb(102, 102, 102)","background":"none","width":"48%","lineHeight":"24px","fontSize":"16px","textIndent":"2em","height":"320px"}' v-html="systemIntroductionDetail.content"></div>
		  <div :style='{"transform":"rotate(180deg)","top":"0","background":"url(http://codegen.caihongy.cn/20230920/8a35b5134ee644b8a9a87ea99a0f1490.png) no-repeat","display":"block","width":"200px","position":"absolute","right":"52%","height":"100%"}' />
		  <div :style='{"width":"285px","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
		  <div :style='{"width":"285px","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
		  <div :style='{"width":"285px","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"100px"}' />
		  <div :style='{"border":"0","cursor":"pointer","margin":"20px auto","textAlign":"right","background":"none","display":"flex","width":"100%","lineHeight":"40px","justifyContent":"flex-end","order":"8","height":"40px"}' @click="toDetail('systemintroDetail',systemIntroductionDetail)">
		    <span :style='{"padding":"0 0 0 36px","margin":"0","color":"#f5f5f5","background":"#1abc9e","display":"inline-block","width":"auto","fontSize":"14px","lineHeight":"40px","height":"40px"}'>点击查看</span>
		    <span class="icon iconfont icon-gengduo1" :style='{"padding":"0 36px 0 6px","margin":"0","color":"#f5f5f5","background":"#1abc9e","display":"inline-block","fontSize":"14px","lineHeight":"40px","height":"40px"}'></span>
		  </div>
		</div>
		<!-- 系统简介 -->
		
	<!-- 新闻资讯 -->
	<div id="animate_newsnews" class="news animate__animated" :style='{"padding":"0","margin":"0 0 10px","background":"url(),#fff","order":"5"}'>
		<div v-if="false" class="idea newsIdea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
			<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
			<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
			<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
			<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
			<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
			<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
			<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
			<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
			<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
			<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		</div>
		
		<div class="title" :style='{"width":"100%","margin":"40px auto 10px","lineHeight":"50px","textAlign":"center","background":"none"}'>
			<span :style='{"color":"#333","fontSize":"32px","lineHeight":"40px"}'>公告信息</span>
		</div>
		
			
			
			
			
			
			
			
			
			
			
		

		<div v-if="newsList.length" class="list list12 index-pv1" :style='{"padding":"0px 7%","color":"#fff","background":"none","display":"flex","width":"100%","fontSize":"14px","justifyContent":"space-between","height":"auto"}'>
		  <div class="left" :style='{"width":"49%","padding":"20px","position":"relative","background":"#fff","height":"auto"}'>
		    <div class="top" :style='{"width":"100%","justifyContent":"space-between","display":"flex","height":"auto"}'>
			  <template v-for="(item,index) in newsList">
		      <div v-if="index < 2" class="list-item animation-box" :style='{"cursor":"pointer","width":"49%","position":"relative","height":"340px"}' @click="toDetail('newsDetail', item)">
		        <img :style='{"width":"100%","objectFit":"cover","display":"block","height":"100%"}' :src="baseUrl + item.picture">
		        <div :style='{"width":"100%","padding":"0 0 6px","position":"absolute","left":"0","bottom":"0","background":"rgba(0,0,0,.3)"}'>
		          <div :style='{"padding":"0 10px","overflow":"hidden","whiteSpace":"nowrap","color":"#fff","width":"100%","lineHeight":"44px","fontSize":"16px","textOverflow":"ellipsis"}' class="title">{{item.title}}</div>
		          <div :style='{"padding":"0 10px"}'>
		            <span class="icon iconfont icon-shijian21" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"inherit","color":"inherit"}'></span>
		            <span :style='{"color":"inherit","lineHeight":"1.5","fontSize":"inherit"}'>{{item.addtime}}</span>
		          </div>
		          <div :style='{"padding":"0 10px","display":"inline-block"}'>
		            <span class="icon iconfont icon-geren16" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"inherit","color":"inherit"}'></span>
		            <span :style='{"color":"inherit","lineHeight":"1.5","fontSize":"inherit"}'>{{item.name}}</span>
		          </div>
		          <div :style='{"padding":"0 10px","display":"inline-block"}'>
		            <span class="icon iconfont icon-zan10" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"inherit","color":"inherit"}'></span>
		            <span :style='{"color":"inherit","lineHeight":"1.5","fontSize":"inherit"}'>{{item.thumbsupnum}}</span>
		          </div>
		          <div :style='{"padding":"0 10px","display":"inline-block"}'>
		            <span class="icon iconfont icon-shoucang10" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"inherit","color":"inherit"}'></span>
		            <span :style='{"color":"inherit","lineHeight":"1.5","fontSize":"inherit"}'>{{item.storeupnum}}</span>
		          </div>
		          <div :style='{"padding":"0 10px","display":"inline-block"}'>
		            <span class="icon iconfont icon-chakan9" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"inherit","color":"inherit"}'></span>
		            <span :style='{"color":"inherit","lineHeight":"1.5","fontSize":"inherit"}'>{{item.clicknum}}</span>
		          </div>
		        </div>
		      </div>
			  </template>
		    </div>
		    <div v-if="newsList.length > 2" class="list" :style='{"width":"100%","padding":"5px 10px","background":"none","height":"auto"}'>
		      <template v-for="(item,index) in newsList">
			  <div class="item" v-if="index > 1 && index < 6" @click="toDetail('newsDetail', item)">
		        <div :style='{"margin":"-2px 0 0","top":"50%","borderRadius":"100%","left":"0","background":"red","width":"4px","position":"absolute","height":"4px"}'></div>
		        <div :style='{"overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"40px","fontSize":"14px","textOverflow":"ellipsis"}'>{{item.title}}</div>
		      </div>
			  </template>
		    </div>
		  </div>
		  <div v-if="newsList.length > 6" class="right" :style='{"alignContent":"start","padding":"20px 20px 0","flexWrap":"wrap","background":"#fff","display":"flex","width":"49%","justifyContent":"space-between","height":"auto"}'>
			<template v-for="(item,index) in newsList">
		    <div v-if="index > 5" class="list-item animation-box" :style='{"cursor":"pointer","width":"49%","margin":"0 0 20px","position":"relative","height":"auto"}' @click="toDetail('newsDetail', item)">
		      <img :style='{"width":"100%","objectFit":"cover","display":"block","height":"240px"}' :src="baseUrl + item.picture">
		      <div :style='{"width":"100%","padding":"0 0 6px","position":"absolute","left":"0","bottom":"0","background":"rgba(0,0,0,.3)"}'>
		        <div :style='{"padding":"0 10px","overflow":"hidden","whiteSpace":"nowrap","color":"#fff","width":"100%","lineHeight":"44px","fontSize":"16px","textOverflow":"ellipsis"}' class="title">{{item.title}}</div>
		        <div :style='{"padding":"0 10px"}'>
		          <span class="icon iconfont icon-shijian21" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"inherit","color":"inherit"}'></span>
		          <span :style='{"color":"inherit","lineHeight":"1.5","fontSize":"inherit"}'>{{item.addtime}}</span>
		        </div>
		        <div :style='{"padding":"0 10px","display":"inline-block"}'>
		          <span class="icon iconfont icon-geren16" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"inherit","color":"inherit"}'></span>
		          <span :style='{"color":"inherit","lineHeight":"1.5","fontSize":"inherit"}'>{{item.name}}</span>
		        </div>
		        <div :style='{"padding":"0 10px","display":"inline-block"}'>
		          <span class="icon iconfont icon-zan10" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"inherit","color":"inherit"}'></span>
		          <span :style='{"color":"inherit","lineHeight":"1.5","fontSize":"inherit"}'>{{item.thumbsupnum}}</span>
		        </div>
		        <div :style='{"padding":"0 10px","display":"inline-block"}'>
		          <span class="icon iconfont icon-shoucang10" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"inherit","color":"inherit"}'></span>
		          <span :style='{"color":"inherit","lineHeight":"1.5","fontSize":"inherit"}'>{{item.storeupnum}}</span>
		        </div>
		        <div :style='{"padding":"0 10px","display":"inline-block"}'>
		          <span class="icon iconfont icon-chakan9" :style='{"margin":"0 2px 0 0","lineHeight":"1.5","fontSize":"inherit","color":"inherit"}'></span>
		          <span :style='{"color":"inherit","lineHeight":"1.5","fontSize":"inherit"}'>{{item.clicknum}}</span>
		        </div>
		      </div>
		    </div>
			</template>
		  </div>
		</div>










		<div @click="moreBtn('news')" :style='{"border":"1px solid #ddd","cursor":"pointer","margin":"40px auto","textAlign":"center","background":"#fff","display":"block","width":"120px","lineHeight":"36px"}'>
			<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
			<i :style='{"color":"#333","fontSize":"12px"}' class="icon iconfont icon-gengduo1"></i>
		</div>
		
		</div>
	<!-- 新闻资讯 -->


<!-- 商品推荐 -->
<div id="animate_recommendlvyouluxian" class="recommend animate__animated" :style='{"padding":"20px 0","margin":"0 auto","borderColor":"#ddd","background":"url(http://codegen.caihongy.cn/20230921/12de1b225a744f6a8b34b9e1979637b7.jpg),#fff","borderWidth":"1px 0","width":"100%","borderStyle":"solid","order":"3"}'>
	<div v-if="false" class="idea recommendIdea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
    <div class="title" :style='{"width":"100%","margin":"30px auto","lineHeight":"50px","textAlign":"center","background":"none"}'>
		<span :style='{"color":"#333","fontSize":"32px","lineHeight":"40px"}'>旅游路线推荐</span>
	</div>
	
	
	
	
	
	
	
	
	
	




	<div v-if="lvyouluxianRecommend.length" class="list list13 index-pv1" :style='{"width":"100%","padding":"0 7%","background":"none","height":"auto"}'>
	  <div :style='{"cursor":"pointer","width":"100%","padding":"12px 10px","justifyContent":"center","display":"flex","height":"auto"}' class="top">
		<template v-for="item,index in lvyouluxianRecommend">
		<template v-if="index < 5">
		<img @click="toDetail('lvyouluxianDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.luxiantupian)" :src="item.luxiantupian.split(',')[0]" alt="" />
		<img @click="toDetail('lvyouluxianDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.luxiantupian?item.luxiantupian.split(',')[0]:'')" alt="" />
		</template>
		</template>
	  </div>
	  <div v-if="lvyouluxianRecommend.length > 5" :style='{"cursor":"pointer","width":"100%","padding":"12px 10px","justifyContent":"center","display":"flex","height":"auto"}' class="center">
		<template v-for="item,index in lvyouluxianRecommend">
		<template v-if="index > 4 && index < 8">
		<img @click="toDetail('lvyouluxianDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.luxiantupian)" :src="item.luxiantupian.split(',')[0]" alt="" />
		<img @click="toDetail('lvyouluxianDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.luxiantupian?item.luxiantupian.split(',')[0]:'')" alt="" />
		</template>
		</template>
	  </div>
	  <div v-if="lvyouluxianRecommend.length > 8" :style='{"cursor":"pointer","width":"100%","padding":"12px 10px","justifyContent":"center","display":"flex","height":"auto"}' class="bottom">
		<template v-for="item,index in lvyouluxianRecommend">
		<template v-if="index == 8">
		<img @click="toDetail('lvyouluxianDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.luxiantupian)" :src="item.luxiantupian.split(',')[0]" alt="" />
		<img @click="toDetail('lvyouluxianDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.luxiantupian?item.luxiantupian.split(',')[0]:'')" alt="" />
		</template>
		</template>
	  </div>
	</div>



	
	<div @click="moreBtn('lvyouluxian')" :style='{"border":"1px solid #ddd","cursor":"pointer","margin":"20px auto","textAlign":"center","background":"#fff","display":"block","width":"120px","lineHeight":"36px"}'>
		<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
		<i :style='{"color":"#333","fontSize":"14px"}' class="icon iconfont icon-gengduo1"></i>
	</div>
	
</div>
<!-- 商品推荐 -->

<!-- 商品推荐 -->
<div id="animate_recommendjingdianxinxi" class="recommend animate__animated" :style='{"padding":"20px 0","margin":"0 auto","borderColor":"#ddd","background":"url(http://codegen.caihongy.cn/20230921/12de1b225a744f6a8b34b9e1979637b7.jpg),#fff","borderWidth":"1px 0","width":"100%","borderStyle":"solid","order":"3"}'>
	<div v-if="false" class="idea recommendIdea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
    <div class="title" :style='{"width":"100%","margin":"30px auto","lineHeight":"50px","textAlign":"center","background":"none"}'>
		<span :style='{"color":"#333","fontSize":"32px","lineHeight":"40px"}'>景点信息推荐</span>
	</div>
	
	
	
	
	
	
	
	
	
	




	<div v-if="jingdianxinxiRecommend.length" class="list list13 index-pv1" :style='{"width":"100%","padding":"0 7%","background":"none","height":"auto"}'>
	  <div :style='{"cursor":"pointer","width":"100%","padding":"12px 10px","justifyContent":"center","display":"flex","height":"auto"}' class="top">
		<template v-for="item,index in jingdianxinxiRecommend">
		<template v-if="index < 5">
		<img @click="toDetail('jingdianxinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.jingdiantupian)" :src="item.jingdiantupian.split(',')[0]" alt="" />
		<img @click="toDetail('jingdianxinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.jingdiantupian?item.jingdiantupian.split(',')[0]:'')" alt="" />
		</template>
		</template>
	  </div>
	  <div v-if="jingdianxinxiRecommend.length > 5" :style='{"cursor":"pointer","width":"100%","padding":"12px 10px","justifyContent":"center","display":"flex","height":"auto"}' class="center">
		<template v-for="item,index in jingdianxinxiRecommend">
		<template v-if="index > 4 && index < 8">
		<img @click="toDetail('jingdianxinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.jingdiantupian)" :src="item.jingdiantupian.split(',')[0]" alt="" />
		<img @click="toDetail('jingdianxinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.jingdiantupian?item.jingdiantupian.split(',')[0]:'')" alt="" />
		</template>
		</template>
	  </div>
	  <div v-if="jingdianxinxiRecommend.length > 8" :style='{"cursor":"pointer","width":"100%","padding":"12px 10px","justifyContent":"center","display":"flex","height":"auto"}' class="bottom">
		<template v-for="item,index in jingdianxinxiRecommend">
		<template v-if="index == 8">
		<img @click="toDetail('jingdianxinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.jingdiantupian)" :src="item.jingdiantupian.split(',')[0]" alt="" />
		<img @click="toDetail('jingdianxinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.jingdiantupian?item.jingdiantupian.split(',')[0]:'')" alt="" />
		</template>
		</template>
	  </div>
	</div>



	
	<div @click="moreBtn('jingdianxinxi')" :style='{"border":"1px solid #ddd","cursor":"pointer","margin":"20px auto","textAlign":"center","background":"#fff","display":"block","width":"120px","lineHeight":"36px"}'>
		<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
		<i :style='{"color":"#333","fontSize":"14px"}' class="icon iconfont icon-gengduo1"></i>
	</div>
	
</div>
<!-- 商品推荐 -->

<!-- 商品推荐 -->
<div id="animate_recommendjiudianxinxi" class="recommend animate__animated" :style='{"padding":"20px 0","margin":"0 auto","borderColor":"#ddd","background":"url(http://codegen.caihongy.cn/20230921/12de1b225a744f6a8b34b9e1979637b7.jpg),#fff","borderWidth":"1px 0","width":"100%","borderStyle":"solid","order":"3"}'>
	<div v-if="false" class="idea recommendIdea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
    <div class="title" :style='{"width":"100%","margin":"30px auto","lineHeight":"50px","textAlign":"center","background":"none"}'>
		<span :style='{"color":"#333","fontSize":"32px","lineHeight":"40px"}'>酒店信息推荐</span>
	</div>
	
	
	
	
	
	
	
	
	
	




	<div v-if="jiudianxinxiRecommend.length" class="list list13 index-pv1" :style='{"width":"100%","padding":"0 7%","background":"none","height":"auto"}'>
	  <div :style='{"cursor":"pointer","width":"100%","padding":"12px 10px","justifyContent":"center","display":"flex","height":"auto"}' class="top">
		<template v-for="item,index in jiudianxinxiRecommend">
		<template v-if="index < 5">
		<img @click="toDetail('jiudianxinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.jiudiantupian)" :src="item.jiudiantupian.split(',')[0]" alt="" />
		<img @click="toDetail('jiudianxinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.jiudiantupian?item.jiudiantupian.split(',')[0]:'')" alt="" />
		</template>
		</template>
	  </div>
	  <div v-if="jiudianxinxiRecommend.length > 5" :style='{"cursor":"pointer","width":"100%","padding":"12px 10px","justifyContent":"center","display":"flex","height":"auto"}' class="center">
		<template v-for="item,index in jiudianxinxiRecommend">
		<template v-if="index > 4 && index < 8">
		<img @click="toDetail('jiudianxinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.jiudiantupian)" :src="item.jiudiantupian.split(',')[0]" alt="" />
		<img @click="toDetail('jiudianxinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.jiudiantupian?item.jiudiantupian.split(',')[0]:'')" alt="" />
		</template>
		</template>
	  </div>
	  <div v-if="jiudianxinxiRecommend.length > 8" :style='{"cursor":"pointer","width":"100%","padding":"12px 10px","justifyContent":"center","display":"flex","height":"auto"}' class="bottom">
		<template v-for="item,index in jiudianxinxiRecommend">
		<template v-if="index == 8">
		<img @click="toDetail('jiudianxinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.jiudiantupian)" :src="item.jiudiantupian.split(',')[0]" alt="" />
		<img @click="toDetail('jiudianxinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.jiudiantupian?item.jiudiantupian.split(',')[0]:'')" alt="" />
		</template>
		</template>
	  </div>
	</div>



	
	<div @click="moreBtn('jiudianxinxi')" :style='{"border":"1px solid #ddd","cursor":"pointer","margin":"20px auto","textAlign":"center","background":"#fff","display":"block","width":"120px","lineHeight":"36px"}'>
		<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
		<i :style='{"color":"#333","fontSize":"14px"}' class="icon iconfont icon-gengduo1"></i>
	</div>
	
</div>
<!-- 商品推荐 -->

<!-- 商品推荐 -->
<div id="animate_recommendmeishixinxi" class="recommend animate__animated" :style='{"padding":"20px 0","margin":"0 auto","borderColor":"#ddd","background":"url(http://codegen.caihongy.cn/20230921/12de1b225a744f6a8b34b9e1979637b7.jpg),#fff","borderWidth":"1px 0","width":"100%","borderStyle":"solid","order":"3"}'>
	<div v-if="false" class="idea recommendIdea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
    <div class="title" :style='{"width":"100%","margin":"30px auto","lineHeight":"50px","textAlign":"center","background":"none"}'>
		<span :style='{"color":"#333","fontSize":"32px","lineHeight":"40px"}'>美食信息推荐</span>
	</div>
	
	
	
	
	
	
	
	
	
	




	<div v-if="meishixinxiRecommend.length" class="list list13 index-pv1" :style='{"width":"100%","padding":"0 7%","background":"none","height":"auto"}'>
	  <div :style='{"cursor":"pointer","width":"100%","padding":"12px 10px","justifyContent":"center","display":"flex","height":"auto"}' class="top">
		<template v-for="item,index in meishixinxiRecommend">
		<template v-if="index < 5">
		<img @click="toDetail('meishixinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.fengmian)" :src="item.fengmian.split(',')[0]" alt="" />
		<img @click="toDetail('meishixinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.fengmian?item.fengmian.split(',')[0]:'')" alt="" />
		</template>
		</template>
	  </div>
	  <div v-if="meishixinxiRecommend.length > 5" :style='{"cursor":"pointer","width":"100%","padding":"12px 10px","justifyContent":"center","display":"flex","height":"auto"}' class="center">
		<template v-for="item,index in meishixinxiRecommend">
		<template v-if="index > 4 && index < 8">
		<img @click="toDetail('meishixinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.fengmian)" :src="item.fengmian.split(',')[0]" alt="" />
		<img @click="toDetail('meishixinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.fengmian?item.fengmian.split(',')[0]:'')" alt="" />
		</template>
		</template>
	  </div>
	  <div v-if="meishixinxiRecommend.length > 8" :style='{"cursor":"pointer","width":"100%","padding":"12px 10px","justifyContent":"center","display":"flex","height":"auto"}' class="bottom">
		<template v-for="item,index in meishixinxiRecommend">
		<template v-if="index == 8">
		<img @click="toDetail('meishixinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.fengmian)" :src="item.fengmian.split(',')[0]" alt="" />
		<img @click="toDetail('meishixinxiDetail', item)" :name="item.id" :style='{"width":"18%","margin":"0 1%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.fengmian?item.fengmian.split(',')[0]:'')" alt="" />
		</template>
		</template>
	  </div>
	</div>



	
	<div @click="moreBtn('meishixinxi')" :style='{"border":"1px solid #ddd","cursor":"pointer","margin":"20px auto","textAlign":"center","background":"#fff","display":"block","width":"120px","lineHeight":"36px"}'>
		<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
		<i :style='{"color":"#333","fontSize":"14px"}' class="icon iconfont icon-gengduo1"></i>
	</div>
	
</div>
<!-- 商品推荐 -->


<!-- 特价商品 -->
<div id="animate_listchepiaoxinxi" class="lists animate__animated" :style='{"margin":"30px 0 20px","background":"#fff","order":"1"}'>
	<div v-if="false" class="idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
	<div class="title" :style='{"width":"100%","margin":"10px auto","lineHeight":"40px","textAlign":"center","background":"none"}'>
	  <span :style='{"fontSize":"32px","lineHeight":"40px","color":"#333","font":"\"宋体\""}'>车票信息展示</span>
	</div>
	
	
	
	
	
	
	
	
	
	



	<div v-if="chepiaoxinxiList.length" class="list list12 index-pv1 list12chepiaoxinxi" :style='{"width":"100%","padding":"10px 7%","background":"#fff","height":"auto"}'>
	  <div class="list" :style='{"margin":"40px 0 0","overflow":"hidden","flexWrap":"wrap","flex":"1","background":"#fff","display":"flex","justifyContent":"space-between","height":"auto"}'>
	    <div :style='{"cursor":"pointer","width":"23%","margin":"0 0 30px","position":"relative","height":"auto"}' class="item list-item animation-box" v-for="item,index in chepiaoxinxiList" :key="index" @click="toDetail('chepiaoxinxiDetail', item)">
			<img :name="item.id" :style='{"width":"100%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.tupian)" :src="item.tupian.split(',')[0]" alt="" />
			<img :name="item.id" :style='{"width":"100%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.tupian?item.tupian.split(',')[0]:'')" alt="" />
			<div class="line1" :style='{"padding":"0 10px","overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"32px","fontSize":"16px","textOverflow":"ellipsis"}'>{{item.cheliangmingcheng}}</div>
	    </div>
	  </div>
	</div>



	
	
	<div @click="moreBtn('chepiaoxinxi')" :style='{"border":"1px solid #ddd","cursor":"pointer","margin":"30px auto 10px","textAlign":"center","background":"#fff","display":"block","width":"120px","lineHeight":"36px"}'>
		<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
		<i :style='{"color":"#333","fontSize":"14px"}' class="icon iconfont icon-jinru"></i>
	</div>
	

</div>
<!-- 特价商品 -->

<!-- 特价商品 -->
<div id="animate_listjiudianxinxi" class="lists animate__animated" :style='{"margin":"30px 0 20px","background":"#fff","order":"1"}'>
	<div v-if="false" class="idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
	<div class="title" :style='{"width":"100%","margin":"10px auto","lineHeight":"40px","textAlign":"center","background":"none"}'>
	  <span :style='{"fontSize":"32px","lineHeight":"40px","color":"#333","font":"\"宋体\""}'>酒店信息展示</span>
	</div>
	
	
	
	
	
	
	
	
	
	



	<div v-if="jiudianxinxiList.length" class="list list12 index-pv1 list12jiudianxinxi" :style='{"width":"100%","padding":"10px 7%","background":"#fff","height":"auto"}'>
	  <div class="tab" :style='{"width":"100%","margin":"0 0 20px","alignItems":"center","justifyContent":"center","display":"flex","height":"auto"}'>
		<template v-for="item,index in listList12jiudianxinxi">
	    <div v-if="index < 6" @click="listIndexClick12(index + 1, 'jiudianxinxi')" class="item"  :class="index + 1 == listIndex12jiudianxinxi ? 'active' : ''">
			<img v-if="item.image" :style='{"width":"34px","margin":"5px 5px 0 0","objectFit":"cover","display":"block","height":"34px"}' :src="baseUrl + (item.image?item.image.split(',')[0]:'')">
			<div :style='{"color":"inherit","fontSize":"14px"}'>{{item[listColumn12jiudianxinxi]}}</div>
		</div>
		</template>
		<div class="more" @click="moreBtn('jiudianxinxi')">
		  <div :style='{"color":"#999","fontSize":"14px","fontWeight":"500"}'>更多</div>
		  <span class="icon iconfont icon-jiantou25" :style='{"color":"#999","margin":"0 0 0 2px","fontSize":"14px"}'></span>
		</div>
	  </div>
	  <div class="list" :style='{"margin":"40px 0 0","overflow":"hidden","flexWrap":"wrap","flex":"1","background":"#fff","display":"flex","justifyContent":"space-between","height":"auto"}'>
	    <div :style='{"cursor":"pointer","width":"23%","margin":"0 0 30px","position":"relative","height":"auto"}' class="item list-item animation-box" v-for="item,index in jiudianxinxiList" :key="index" @click="toDetail('jiudianxinxiDetail', item)">
			<img :name="item.id" :style='{"width":"100%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.jiudiantupian)" :src="item.jiudiantupian.split(',')[0]" alt="" />
			<img :name="item.id" :style='{"width":"100%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.jiudiantupian?item.jiudiantupian.split(',')[0]:'')" alt="" />
			<div class="line1" :style='{"padding":"0 10px","overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"32px","fontSize":"16px","textOverflow":"ellipsis"}'>{{item.jiudianmingcheng}}</div>
			<div class="line1" :style='{"padding":"0 10px","overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"32px","fontSize":"16px","textOverflow":"ellipsis"}'>{{item.jiudianleixing}}</div>
	    </div>
	  </div>
	</div>



	
	
	<div @click="moreBtn('jiudianxinxi')" :style='{"border":"1px solid #ddd","cursor":"pointer","margin":"30px auto 10px","textAlign":"center","background":"#fff","display":"block","width":"120px","lineHeight":"36px"}'>
		<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
		<i :style='{"color":"#333","fontSize":"14px"}' class="icon iconfont icon-jinru"></i>
	</div>
	

</div>
<!-- 特价商品 -->

<!-- 特价商品 -->
<div id="animate_listmeishixinxi" class="lists animate__animated" :style='{"margin":"30px 0 20px","background":"#fff","order":"1"}'>
	<div v-if="false" class="idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
	<div class="title" :style='{"width":"100%","margin":"10px auto","lineHeight":"40px","textAlign":"center","background":"none"}'>
	  <span :style='{"fontSize":"32px","lineHeight":"40px","color":"#333","font":"\"宋体\""}'>美食信息展示</span>
	</div>
	
	
	
	
	
	
	
	
	
	



	<div v-if="meishixinxiList.length" class="list list12 index-pv1 list12meishixinxi" :style='{"width":"100%","padding":"10px 7%","background":"#fff","height":"auto"}'>
	  <div class="tab" :style='{"width":"100%","margin":"0 0 20px","alignItems":"center","justifyContent":"center","display":"flex","height":"auto"}'>
		<template v-for="item,index in listList12meishixinxi">
	    <div v-if="index < 6" @click="listIndexClick12(index + 1, 'meishixinxi')" class="item"  :class="index + 1 == listIndex12meishixinxi ? 'active' : ''">
			<img v-if="item.image" :style='{"width":"34px","margin":"5px 5px 0 0","objectFit":"cover","display":"block","height":"34px"}' :src="baseUrl + (item.image?item.image.split(',')[0]:'')">
			<div :style='{"color":"inherit","fontSize":"14px"}'>{{item[listColumn12meishixinxi]}}</div>
		</div>
		</template>
		<div class="more" @click="moreBtn('meishixinxi')">
		  <div :style='{"color":"#999","fontSize":"14px","fontWeight":"500"}'>更多</div>
		  <span class="icon iconfont icon-jiantou25" :style='{"color":"#999","margin":"0 0 0 2px","fontSize":"14px"}'></span>
		</div>
	  </div>
	  <div class="list" :style='{"margin":"40px 0 0","overflow":"hidden","flexWrap":"wrap","flex":"1","background":"#fff","display":"flex","justifyContent":"space-between","height":"auto"}'>
	    <div :style='{"cursor":"pointer","width":"23%","margin":"0 0 30px","position":"relative","height":"auto"}' class="item list-item animation-box" v-for="item,index in meishixinxiList" :key="index" @click="toDetail('meishixinxiDetail', item)">
			<img :name="item.id" :style='{"width":"100%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.fengmian)" :src="item.fengmian.split(',')[0]" alt="" />
			<img :name="item.id" :style='{"width":"100%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.fengmian?item.fengmian.split(',')[0]:'')" alt="" />
			<div class="line1" :style='{"padding":"0 10px","overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"32px","fontSize":"16px","textOverflow":"ellipsis"}'>{{item.meishimingcheng}}</div>
	    </div>
	  </div>
	</div>



	
	
	<div @click="moreBtn('meishixinxi')" :style='{"border":"1px solid #ddd","cursor":"pointer","margin":"30px auto 10px","textAlign":"center","background":"#fff","display":"block","width":"120px","lineHeight":"36px"}'>
		<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
		<i :style='{"color":"#333","fontSize":"14px"}' class="icon iconfont icon-jinru"></i>
	</div>
	

</div>
<!-- 特价商品 -->

<!-- 特价商品 -->
<div id="animate_listlvyougonglve" class="lists animate__animated" :style='{"margin":"30px 0 20px","background":"#fff","order":"1"}'>
	<div v-if="false" class="idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
	<div class="title" :style='{"width":"100%","margin":"10px auto","lineHeight":"40px","textAlign":"center","background":"none"}'>
	  <span :style='{"fontSize":"32px","lineHeight":"40px","color":"#333","font":"\"宋体\""}'>旅游攻略展示</span>
	</div>
	
	
	
	
	
	
	
	
	
	



	<div v-if="lvyougonglveList.length" class="list list12 index-pv1 list12lvyougonglve" :style='{"width":"100%","padding":"10px 7%","background":"#fff","height":"auto"}'>
	  <div class="list" :style='{"margin":"40px 0 0","overflow":"hidden","flexWrap":"wrap","flex":"1","background":"#fff","display":"flex","justifyContent":"space-between","height":"auto"}'>
	    <div :style='{"cursor":"pointer","width":"23%","margin":"0 0 30px","position":"relative","height":"auto"}' class="item list-item animation-box" v-for="item,index in lvyougonglveList" :key="index" @click="toDetail('lvyougonglveDetail', item)">
			<img :name="item.id" :style='{"width":"100%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-if="preHttp(item.jingqutupian)" :src="item.jingqutupian.split(',')[0]" alt="" />
			<img :name="item.id" :style='{"width":"100%","objectFit":"cover","display":"block","clipPath":"polygon(100% 88%, 88% 100%, 0% 100%, 0% 0%, 100% 0%)","height":"200px"}' v-else :src="baseUrl + (item.jingqutupian?item.jingqutupian.split(',')[0]:'')" alt="" />
			<div class="line1" :style='{"padding":"0 10px","overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"32px","fontSize":"16px","textOverflow":"ellipsis"}'>{{item.jingqumingcheng}}</div>
			<div class="line1" :style='{"padding":"0 10px","overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"32px","fontSize":"16px","textOverflow":"ellipsis"}'>{{item.jingqudizhi}}</div>
	    </div>
	  </div>
	</div>



	
	
	<div @click="moreBtn('lvyougonglve')" :style='{"border":"1px solid #ddd","cursor":"pointer","margin":"30px auto 10px","textAlign":"center","background":"#fff","display":"block","width":"120px","lineHeight":"36px"}'>
		<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
		<i :style='{"color":"#333","fontSize":"14px"}' class="icon iconfont icon-jinru"></i>
	</div>
	

</div>
<!-- 特价商品 -->
	
</div>
</template>

<script>
import 'animate.css'
import Swiper from "swiper";

  export default {
    //数据集合
    data() {
      return {
        baseUrl: '',
        aboutUsDetail: {},
        systemIntroductionDetail: {},
        newsList: [],
        lvyouluxianRecommend: [],
        jingdianxinxiRecommend: [],
        jiudianxinxiRecommend: [],
        meishixinxiRecommend: [],

        chepiaoxinxiList: [],
        jiudianxinxiList: [],
        meishixinxiList: [],
        lvyougonglveList: [],



		listIndex12jiudianxinxi: 0,
		listList12jiudianxinxi: [],
		listColumn12jiudianxinxi: '',
		listIndex12meishixinxi: 0,
		listList12meishixinxi: [],
		listColumn12meishixinxi: '',

      }
    },
    created() {
		this.baseUrl = this.$config.baseUrl;
		this.getNewsList();
		this.getAboutUs();
		this.getSystemIntroduction();
		this.getList();
		this.jiudianxinxiListCate()
		this.meishixinxiListCate()
    },
	mounted() {
		window.addEventListener('scroll', this.handleScroll)
		setTimeout(()=>{
			this.handleScroll()
		},100)
		
		this.swiperChanges()
	},
	beforeDestroy() {
	  window.removeEventListener('scroll', this.handleScroll)
	},
    //方法集合
    methods: {
		swiperChanges() {
			setTimeout(()=>{
			},750)
		},

		jiudianxinxiListCate(){
			this.$http.get('jiudianleixing/list',{}).then(res => {
			  if (res.data.code == 0) {
				this.listList12jiudianxinxi = res.data.data.list
			  }
			});
			this.listColumn12jiudianxinxi = 'jiudianleixing'
		},
		meishixinxiListCate(){
			this.$http.get('meishifenlei/list',{}).then(res => {
			  if (res.data.code == 0) {
				this.listList12meishixinxi = res.data.data.list
			  }
			});
			this.listColumn12meishixinxi = 'meishifenlei'
		},
		listIndexClick12(index, name) {
			this['listIndex12' + name] = index
			this.getList()
			
			document.querySelectorAll('.lists .list12' + name + ' .list .item').forEach(el => {
			  el.classList.remove("active")
			})
			setTimeout(() => {
			  document.querySelectorAll('.lists .list12' + name + ' .list .item').forEach(el => {
			    el.classList.add("active")
			  })
			}, 1);
		},

		handleScroll() {
			let arr = [
				{id:'search',css:'animate__fadeInDown'},
				{id:'about',css:'animate__fadeInRight'},
				{id:'system',css:'animate__fadeInRight'},
				{id:'animate_recommendlvyouluxian',css:'animate__fadeInLeft'},
				{id:'animate_listchepiaoxinxi',css:'animate__fadeInLeft'},
				{id:'animate_recommendjingdianxinxi',css:'animate__fadeInLeft'},
				{id:'animate_recommendjiudianxinxi',css:'animate__fadeInLeft'},
				{id:'animate_listjiudianxinxi',css:'animate__fadeInLeft'},
				{id:'animate_recommendmeishixinxi',css:'animate__fadeInLeft'},
				{id:'animate_listmeishixinxi',css:'animate__fadeInLeft'},
				{id:'animate_listlvyougonglve',css:'animate__fadeInLeft'},
				{id:'animate_newsnews',css:'animate__fadeInLeft'},
				{id:'msgs',css:'animate__fadeInDown'},
				{id:'friendly',css:'animate__fadeInUp'}
			]
			
			for (let i in arr) {
				let doc = document.getElementById(arr[i].id)
				if (doc) {
					let top = doc.offsetTop
					let win_top = window.innerHeight + window.pageYOffset
					// console.log(top,win_top)
					if (win_top > top && doc.classList.value.indexOf(arr[i].css) < 0) {
						// console.log(doc)
						doc.classList.add(arr[i].css)
					}
				}
			}
		},
      preHttp(str) {
          return str && str.substr(0,4)=='http';
      },
      getAboutUs() {
          this.$http.get('aboutus/detail/1', {}).then(res => {
            if(res.data.code == 0) {
              this.aboutUsDetail = res.data.data;
            }
          })
      },
      getSystemIntroduction() {
          this.$http.get('systemintro/detail/1', {}).then(res => {
            if(res.data.code == 0) {
              this.systemIntroductionDetail = res.data.data;
            }
          })
      },
		getNewsList() {
			let data = {
				page: 1,
				limit: 10,
                sort: 'addtime',
				order: 'desc'
			}
			this.$http.get('news/list', {params: data}).then(res => {
				if (res.data.code == 0) {
					this.newsList = res.data.data.list;
					
					
				}
			});
		},
		getList() {
			let autoSortUrl = "";
			let data = {}
          autoSortUrl = "lvyouluxian/autoSort";
			data = {
				page: 1,
				limit: 9,
			}
			this.$http.get(autoSortUrl, {params: data}).then(res => {
				if (res.data.code == 0) {
					this.lvyouluxianRecommend = res.data.data.list;
					
					
					// 商品列表样式五
					
				}
			});
          autoSortUrl = "jingdianxinxi/autoSort";
          if(localStorage.getItem('frontToken')) {
              autoSortUrl = "jingdianxinxi/autoSort2";
          }
			data = {
				page: 1,
				limit: 9,
			}
			this.$http.get(autoSortUrl, {params: data}).then(res => {
				if (res.data.code == 0) {
					this.jingdianxinxiRecommend = res.data.data.list;
					
					
					// 商品列表样式五
					
				}
			});
          autoSortUrl = "jiudianxinxi/autoSort";
          if(localStorage.getItem('frontToken')) {
              autoSortUrl = "jiudianxinxi/autoSort2";
          }
			data = {
				page: 1,
				limit: 9,
			}
			this.$http.get(autoSortUrl, {params: data}).then(res => {
				if (res.data.code == 0) {
					this.jiudianxinxiRecommend = res.data.data.list;
					
					
					// 商品列表样式五
					
				}
			});
          autoSortUrl = "meishixinxi/autoSort";
			data = {
				page: 1,
				limit: 9,
			}
			this.$http.get(autoSortUrl, {params: data}).then(res => {
				if (res.data.code == 0) {
					this.meishixinxiRecommend = res.data.data.list;
					
					
					// 商品列表样式五
					
				}
			});
			
			data = {
				page: 1,
				limit: 8,
			}
			this.$http.get('chepiaoxinxi/list', {params: data}).then(res => {
				if (res.data.code == 0) {
					this.chepiaoxinxiList = res.data.data.list;
					
					// 商品列表样式五
					
				}
			});
			data = {
				page: 1,
				limit: 8,
			}
			if(this.listIndex12jiudianxinxi != 0){
				data.jiudianleixing = this.listList12jiudianxinxi[this.listIndex12jiudianxinxi - 1].jiudianleixing
			}
			this.$http.get('jiudianxinxi/list', {params: data}).then(res => {
				if (res.data.code == 0) {
					this.jiudianxinxiList = res.data.data.list;
					
					// 商品列表样式五
					
				}
			});
			data = {
				page: 1,
				limit: 8,
			}
			if(this.listIndex12meishixinxi != 0){
				data.meishifenlei = this.listList12meishixinxi[this.listIndex12meishixinxi - 1].meishifenlei
			}
			this.$http.get('meishixinxi/list', {params: data}).then(res => {
				if (res.data.code == 0) {
					this.meishixinxiList = res.data.data.list;
					
					// 商品列表样式五
					
				}
			});
			data = {
				page: 1,
				limit: 8,
			}
			this.$http.get('lvyougonglve/list', {params: data}).then(res => {
				if (res.data.code == 0) {
					this.lvyougonglveList = res.data.data.list;
					
					// 商品列表样式五
					
				}
			});
		},
		toDetail(path, item) {
			this.$router.push({path: '/index/' + path, query: {id: item.id}});
		},
		moreBtn(path) {
			this.$router.push({path: '/index/' + path});
		}
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.home-preview {
		// -------- search --------
		.search .select /deep/ .el-input__inner {
			border: 1px solid #ddd;
			border-radius: 4px;
			padding: 0 30px 0 10px;
			box-shadow: 0 0 0px rgba(64, 158, 255, .3);
			outline: none;
			color: rgba(64, 158, 255, 1);
			width: 180px;
			font-size: 14px;
			height: 36px;
		}
		
		.search .input /deep/ .el-input__inner {
			border: 1px solid #ddd;
			border-radius: 4px;
			padding: 0 10px;
			box-shadow: 0 0 0px rgba(64, 158, 255, .3);
			outline: none;
			color: rgba(64, 158, 255, 1);
			width: 480px;
			font-size: 14px;
			height: 36px;
		}
		// -------- search --------
		.recommend {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
        }
        
        .list5 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				transform: rotate(0deg) scale(1.02) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
		
		.news {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list6 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list6 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list6 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list6 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
	
		.lists {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
        }
        
        .list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-next {
            left: auto;
            right: 10px;
			}
			
			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
	}
	
	.home-preview .news .list12 .left .list .item {
				cursor: pointer;
				padding: 0 0 0 10px;
				width: 100%;
				border-color: #ddd;
				border-width: 0 0 1px;
				position: relative;
				border-style: dashed;
				transition: 0.3s;
				height: auto;
			}
	.home-preview .news .list12 .left .list .item:hover {
				transform: translate3d(10px, 0px, 0px);
			}










	.home-preview .lists .list12 .tab .item {
				cursor: pointer;
				border: 1px solid #eee;
				padding: 0 20px;
				margin: 0 10px;
				color: #333;
				background: #fff;
				width: auto;
				font-size: 16px;
				line-height: 36px;
				height: auto;
			}
	
	.home-preview .lists .list12 .tab .item:hover {
				color: #fff;
				background: #1abc9e;
				border-color: #1abc9e;
				border-width: 1px;
				border-style: solid;
			}
	
	.home-preview .lists .list12 .tab .item.active {
				color: #fff;
				background: #1abc9e;
				border-color: #1abc9e;
				border-width: 1px;
				border-style: solid;
			}
	
	.home-preview .lists .list12 .tab .more {
				cursor: pointer;
				padding: 5px 10px;
				margin: 0 10px;
				color: #666;
				background: #fff;
				display: flex;
				line-height: 36px;
				align-items: center;
				height: 36px;
			}
	
	.home-preview .lists .list12 .tab .more:hover {
				color: red;
			}
	
	.home-preview .lists .list12 .item.active {
	  animation-name: mymove;
	
	  &:nth-of-type(1) {
	    animation-duration: 1s;
	  }
	  &:nth-of-type(2) {
	    animation-duration: 1.2s;
	  }
	  &:nth-of-type(3) {
	    animation-duration: 1.4s;
	  }
	  &:nth-of-type(4) {
	    animation-duration: 1.6s;
	  }
	  &:nth-of-type(5) {
	    animation-duration: 1.8s;
	  }
	  &:nth-of-type(6) {
	    animation-duration: 2s;
	  }
	}
	
	@keyframes mymove
	{
		from {top: 320px;}
		to {top: 0;}
	}
</style>
