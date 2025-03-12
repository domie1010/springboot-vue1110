import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import menpiaoyuding from '@/views/modules/menpiaoyuding/list'
    import lvyouluxian from '@/views/modules/lvyouluxian/list'
    import discussjiudianxinxi from '@/views/modules/discussjiudianxinxi/list'
    import jiudianxinxi from '@/views/modules/jiudianxinxi/list'
    import luxianyuding from '@/views/modules/luxianyuding/list'
    import jiudianleixing from '@/views/modules/jiudianleixing/list'
    import meishifenlei from '@/views/modules/meishifenlei/list'
    import systemintro from '@/views/modules/systemintro/list'
    import yonghu from '@/views/modules/yonghu/list'
    import lvyougonglve from '@/views/modules/lvyougonglve/list'
    import jiudianyuding from '@/views/modules/jiudianyuding/list'
    import meishiyuding from '@/views/modules/meishiyuding/list'
    import news from '@/views/modules/news/list'
    import aboutus from '@/views/modules/aboutus/list'
    import chepiaoyuding from '@/views/modules/chepiaoyuding/list'
    import jingdianleixing from '@/views/modules/jingdianleixing/list'
    import jingdianxinxi from '@/views/modules/jingdianxinxi/list'
    import discussmeishixinxi from '@/views/modules/discussmeishixinxi/list'
    import forum from '@/views/modules/forum/list'
    import discusschepiaoxinxi from '@/views/modules/discusschepiaoxinxi/list'
    import chepiaoxinxi from '@/views/modules/chepiaoxinxi/list'
    import discussjingdianxinxi from '@/views/modules/discussjingdianxinxi/list'
    import meishixinxi from '@/views/modules/meishixinxi/list'
    import config from '@/views/modules/config/list'
    import newstype from '@/views/modules/newstype/list'


//2.配置路由   注意：名字
export const routes = [{
    path: '/',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center', affix: true}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/menpiaoyuding',
        name: '门票预定',
        component: menpiaoyuding
      }
      ,{
	path: '/lvyouluxian',
        name: '旅游路线',
        component: lvyouluxian
      }
      ,{
	path: '/discussjiudianxinxi',
        name: '酒店信息评论',
        component: discussjiudianxinxi
      }
      ,{
	path: '/jiudianxinxi',
        name: '酒店信息',
        component: jiudianxinxi
      }
      ,{
	path: '/luxianyuding',
        name: '路线预定',
        component: luxianyuding
      }
      ,{
	path: '/jiudianleixing',
        name: '酒店类型',
        component: jiudianleixing
      }
      ,{
	path: '/meishifenlei',
        name: '美食分类',
        component: meishifenlei
      }
      ,{
	path: '/systemintro',
        name: '系统简介',
        component: systemintro
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/lvyougonglve',
        name: '旅游攻略',
        component: lvyougonglve
      }
      ,{
	path: '/jiudianyuding',
        name: '酒店预定',
        component: jiudianyuding
      }
      ,{
	path: '/meishiyuding',
        name: '美食预定',
        component: meishiyuding
      }
      ,{
	path: '/news',
        name: '公告信息',
        component: news
      }
      ,{
	path: '/aboutus',
        name: '关于我们',
        component: aboutus
      }
      ,{
	path: '/chepiaoyuding',
        name: '车票预定',
        component: chepiaoyuding
      }
      ,{
	path: '/jingdianleixing',
        name: '景点类型',
        component: jingdianleixing
      }
      ,{
	path: '/jingdianxinxi',
        name: '景点信息',
        component: jingdianxinxi
      }
      ,{
	path: '/discussmeishixinxi',
        name: '美食信息评论',
        component: discussmeishixinxi
      }
      ,{
	path: '/forum',
        name: '论坛管理',
        component: forum
      }
      ,{
	path: '/discusschepiaoxinxi',
        name: '车票信息评论',
        component: discusschepiaoxinxi
      }
      ,{
	path: '/chepiaoxinxi',
        name: '车票信息',
        component: chepiaoxinxi
      }
      ,{
	path: '/discussjingdianxinxi',
        name: '景点信息评论',
        component: discussjingdianxinxi
      }
      ,{
	path: '/meishixinxi',
        name: '美食信息',
        component: meishixinxi
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/newstype',
        name: '公告信息分类',
        component: newstype
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
