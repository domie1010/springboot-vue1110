import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Forum from '../pages/forum/list'
import ForumAdd from '../pages/forum/add'
import ForumDetail from '../pages/forum/detail'
import MyForumList from '../pages/forum/myForumList'
import Storeup from '../pages/storeup/list'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import payList from '../pages/pay'

import yonghuList from '../pages/yonghu/list'
import yonghuDetail from '../pages/yonghu/detail'
import yonghuAdd from '../pages/yonghu/add'
import lvyouluxianList from '../pages/lvyouluxian/list'
import lvyouluxianDetail from '../pages/lvyouluxian/detail'
import lvyouluxianAdd from '../pages/lvyouluxian/add'
import luxianyudingList from '../pages/luxianyuding/list'
import luxianyudingDetail from '../pages/luxianyuding/detail'
import luxianyudingAdd from '../pages/luxianyuding/add'
import chepiaoxinxiList from '../pages/chepiaoxinxi/list'
import chepiaoxinxiDetail from '../pages/chepiaoxinxi/detail'
import chepiaoxinxiAdd from '../pages/chepiaoxinxi/add'
import chepiaoyudingList from '../pages/chepiaoyuding/list'
import chepiaoyudingDetail from '../pages/chepiaoyuding/detail'
import chepiaoyudingAdd from '../pages/chepiaoyuding/add'
import jingdianleixingList from '../pages/jingdianleixing/list'
import jingdianleixingDetail from '../pages/jingdianleixing/detail'
import jingdianleixingAdd from '../pages/jingdianleixing/add'
import jingdianxinxiList from '../pages/jingdianxinxi/list'
import jingdianxinxiDetail from '../pages/jingdianxinxi/detail'
import jingdianxinxiAdd from '../pages/jingdianxinxi/add'
import menpiaoyudingList from '../pages/menpiaoyuding/list'
import menpiaoyudingDetail from '../pages/menpiaoyuding/detail'
import menpiaoyudingAdd from '../pages/menpiaoyuding/add'
import jiudianleixingList from '../pages/jiudianleixing/list'
import jiudianleixingDetail from '../pages/jiudianleixing/detail'
import jiudianleixingAdd from '../pages/jiudianleixing/add'
import jiudianxinxiList from '../pages/jiudianxinxi/list'
import jiudianxinxiDetail from '../pages/jiudianxinxi/detail'
import jiudianxinxiAdd from '../pages/jiudianxinxi/add'
import jiudianyudingList from '../pages/jiudianyuding/list'
import jiudianyudingDetail from '../pages/jiudianyuding/detail'
import jiudianyudingAdd from '../pages/jiudianyuding/add'
import meishifenleiList from '../pages/meishifenlei/list'
import meishifenleiDetail from '../pages/meishifenlei/detail'
import meishifenleiAdd from '../pages/meishifenlei/add'
import meishixinxiList from '../pages/meishixinxi/list'
import meishixinxiDetail from '../pages/meishixinxi/detail'
import meishixinxiAdd from '../pages/meishixinxi/add'
import meishiyudingList from '../pages/meishiyuding/list'
import meishiyudingDetail from '../pages/meishiyuding/detail'
import meishiyudingAdd from '../pages/meishiyuding/add'
import lvyougonglveList from '../pages/lvyougonglve/list'
import lvyougonglveDetail from '../pages/lvyougonglve/detail'
import lvyougonglveAdd from '../pages/lvyougonglve/add'
import newstypeList from '../pages/newstype/list'
import newstypeDetail from '../pages/newstype/detail'
import newstypeAdd from '../pages/newstype/add'
import aboutusList from '../pages/aboutus/list'
import aboutusDetail from '../pages/aboutus/detail'
import aboutusAdd from '../pages/aboutus/add'
import systemintroList from '../pages/systemintro/list'
import systemintroDetail from '../pages/systemintro/detail'
import systemintroAdd from '../pages/systemintro/add'
import discusschepiaoxinxiList from '../pages/discusschepiaoxinxi/list'
import discusschepiaoxinxiDetail from '../pages/discusschepiaoxinxi/detail'
import discusschepiaoxinxiAdd from '../pages/discusschepiaoxinxi/add'
import discussjingdianxinxiList from '../pages/discussjingdianxinxi/list'
import discussjingdianxinxiDetail from '../pages/discussjingdianxinxi/detail'
import discussjingdianxinxiAdd from '../pages/discussjingdianxinxi/add'
import discussjiudianxinxiList from '../pages/discussjiudianxinxi/list'
import discussjiudianxinxiDetail from '../pages/discussjiudianxinxi/detail'
import discussjiudianxinxiAdd from '../pages/discussjiudianxinxi/add'
import discussmeishixinxiList from '../pages/discussmeishixinxi/list'
import discussmeishixinxiDetail from '../pages/discussmeishixinxi/detail'
import discussmeishixinxiAdd from '../pages/discussmeishixinxi/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'pay',
					component: payList,
				},
				{
					path: 'forum',
					component: Forum
				},
				{
					path: 'forumAdd',
					component: ForumAdd
				},
				{
					path: 'forumDetail',
					component: ForumDetail
				},
				{
					path: 'myForumList',
					component: MyForumList
				},
				{
					path: 'storeup',
					component: Storeup
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'yonghu',
					component: yonghuList
				},
				{
					path: 'yonghuDetail',
					component: yonghuDetail
				},
				{
					path: 'yonghuAdd',
					component: yonghuAdd
				},
				{
					path: 'lvyouluxian',
					component: lvyouluxianList
				},
				{
					path: 'lvyouluxianDetail',
					component: lvyouluxianDetail
				},
				{
					path: 'lvyouluxianAdd',
					component: lvyouluxianAdd
				},
				{
					path: 'luxianyuding',
					component: luxianyudingList
				},
				{
					path: 'luxianyudingDetail',
					component: luxianyudingDetail
				},
				{
					path: 'luxianyudingAdd',
					component: luxianyudingAdd
				},
				{
					path: 'chepiaoxinxi',
					component: chepiaoxinxiList
				},
				{
					path: 'chepiaoxinxiDetail',
					component: chepiaoxinxiDetail
				},
				{
					path: 'chepiaoxinxiAdd',
					component: chepiaoxinxiAdd
				},
				{
					path: 'chepiaoyuding',
					component: chepiaoyudingList
				},
				{
					path: 'chepiaoyudingDetail',
					component: chepiaoyudingDetail
				},
				{
					path: 'chepiaoyudingAdd',
					component: chepiaoyudingAdd
				},
				{
					path: 'jingdianleixing',
					component: jingdianleixingList
				},
				{
					path: 'jingdianleixingDetail',
					component: jingdianleixingDetail
				},
				{
					path: 'jingdianleixingAdd',
					component: jingdianleixingAdd
				},
				{
					path: 'jingdianxinxi',
					component: jingdianxinxiList
				},
				{
					path: 'jingdianxinxiDetail',
					component: jingdianxinxiDetail
				},
				{
					path: 'jingdianxinxiAdd',
					component: jingdianxinxiAdd
				},
				{
					path: 'menpiaoyuding',
					component: menpiaoyudingList
				},
				{
					path: 'menpiaoyudingDetail',
					component: menpiaoyudingDetail
				},
				{
					path: 'menpiaoyudingAdd',
					component: menpiaoyudingAdd
				},
				{
					path: 'jiudianleixing',
					component: jiudianleixingList
				},
				{
					path: 'jiudianleixingDetail',
					component: jiudianleixingDetail
				},
				{
					path: 'jiudianleixingAdd',
					component: jiudianleixingAdd
				},
				{
					path: 'jiudianxinxi',
					component: jiudianxinxiList
				},
				{
					path: 'jiudianxinxiDetail',
					component: jiudianxinxiDetail
				},
				{
					path: 'jiudianxinxiAdd',
					component: jiudianxinxiAdd
				},
				{
					path: 'jiudianyuding',
					component: jiudianyudingList
				},
				{
					path: 'jiudianyudingDetail',
					component: jiudianyudingDetail
				},
				{
					path: 'jiudianyudingAdd',
					component: jiudianyudingAdd
				},
				{
					path: 'meishifenlei',
					component: meishifenleiList
				},
				{
					path: 'meishifenleiDetail',
					component: meishifenleiDetail
				},
				{
					path: 'meishifenleiAdd',
					component: meishifenleiAdd
				},
				{
					path: 'meishixinxi',
					component: meishixinxiList
				},
				{
					path: 'meishixinxiDetail',
					component: meishixinxiDetail
				},
				{
					path: 'meishixinxiAdd',
					component: meishixinxiAdd
				},
				{
					path: 'meishiyuding',
					component: meishiyudingList
				},
				{
					path: 'meishiyudingDetail',
					component: meishiyudingDetail
				},
				{
					path: 'meishiyudingAdd',
					component: meishiyudingAdd
				},
				{
					path: 'lvyougonglve',
					component: lvyougonglveList
				},
				{
					path: 'lvyougonglveDetail',
					component: lvyougonglveDetail
				},
				{
					path: 'lvyougonglveAdd',
					component: lvyougonglveAdd
				},
				{
					path: 'newstype',
					component: newstypeList
				},
				{
					path: 'newstypeDetail',
					component: newstypeDetail
				},
				{
					path: 'newstypeAdd',
					component: newstypeAdd
				},
				{
					path: 'aboutus',
					component: aboutusList
				},
				{
					path: 'aboutusDetail',
					component: aboutusDetail
				},
				{
					path: 'aboutusAdd',
					component: aboutusAdd
				},
				{
					path: 'systemintro',
					component: systemintroList
				},
				{
					path: 'systemintroDetail',
					component: systemintroDetail
				},
				{
					path: 'systemintroAdd',
					component: systemintroAdd
				},
				{
					path: 'discusschepiaoxinxi',
					component: discusschepiaoxinxiList
				},
				{
					path: 'discusschepiaoxinxiDetail',
					component: discusschepiaoxinxiDetail
				},
				{
					path: 'discusschepiaoxinxiAdd',
					component: discusschepiaoxinxiAdd
				},
				{
					path: 'discussjingdianxinxi',
					component: discussjingdianxinxiList
				},
				{
					path: 'discussjingdianxinxiDetail',
					component: discussjingdianxinxiDetail
				},
				{
					path: 'discussjingdianxinxiAdd',
					component: discussjingdianxinxiAdd
				},
				{
					path: 'discussjiudianxinxi',
					component: discussjiudianxinxiList
				},
				{
					path: 'discussjiudianxinxiDetail',
					component: discussjiudianxinxiDetail
				},
				{
					path: 'discussjiudianxinxiAdd',
					component: discussjiudianxinxiAdd
				},
				{
					path: 'discussmeishixinxi',
					component: discussmeishixinxiList
				},
				{
					path: 'discussmeishixinxiDetail',
					component: discussmeishixinxiDetail
				},
				{
					path: 'discussmeishixinxiAdd',
					component: discussmeishixinxiAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
