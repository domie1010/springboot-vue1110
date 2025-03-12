<template>
<div :style='{"width":"100%","padding":"30px 7% 40px","margin":"0px auto","position":"relative","background":"#fff"}'>
    <el-form
	  :style='{"border":"1px solid #f0f0f0","width":"100%","padding":"30px","position":"relative","background":"#fcfcfc"}'
      class="add-update-preview"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
    >
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="美食名称" prop="meishimingcheng">
            <el-input v-model="ruleForm.meishimingcheng" 
                placeholder="美食名称" clearable :disabled=" false  ||ro.meishimingcheng"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="美食分类" prop="meishifenlei">
            <el-input v-model="ruleForm.meishifenlei" 
                placeholder="美食分类" clearable :disabled=" false  ||ro.meishifenlei"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="封面" v-if="type!='cross' || (type=='cross' && !ro.fengmian)" prop="fengmian">
            <file-upload
            tip="点击上传封面"
            action="file/upload"
            :limit="3"
            :multiple="true"
            :fileUrls="ruleForm.fengmian?ruleForm.fengmian:''"
            @change="fengmianUploadChange"
            ></file-upload>
          </el-form-item>
            <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' class="upload" v-else label="封面" prop="fengmian">
                <img v-if="ruleForm.fengmian.substring(0,4)=='http'" class="upload-img" style="margin-right:20px;" v-bind:key="index" :src="ruleForm.fengmian.split(',')[0]" width="100" height="100">
                <img v-else class="upload-img" style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.fengmian.split(',')" :src="baseUrl+item" width="100" height="100">
            </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="价格" prop="jiage">
			<el-input-number v-model="ruleForm.jiage" placeholder="价格" :readonly="ro.jiage"></el-input-number>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="预定数量" prop="yudingshuliang">
            <el-input v-model.number="ruleForm.yudingshuliang" 
                placeholder="预定数量" clearable :disabled=" false  ||ro.yudingshuliang"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="预定金额" prop="yudingjine">
              <el-input v-model="yudingjine" placeholder="预定金额" disabled></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="美食地点" prop="meishididian">
            <el-input v-model="ruleForm.meishididian" 
                placeholder="美食地点" clearable :disabled=" false  ||ro.meishididian"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="美食评分" prop="meishipingfen">
            <el-input v-model="ruleForm.meishipingfen" 
                placeholder="美食评分" clearable :disabled=" false  ||ro.meishipingfen"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="视频介绍" v-if="type!='cross' || (type=='cross' && !ro.shipinjieshao)" prop="shipinjieshao">
            <file-upload
            tip="点击上传视频介绍"
            action="file/upload"
            :limit="1"
            :multiple="true"
            :fileUrls="ruleForm.shipinjieshao?ruleForm.shipinjieshao:''"
            @change="shipinjieshaoUploadChange"
            ></file-upload>
          </el-form-item>
		  <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' class="upload" v-else label="视频介绍" prop="shipinjieshao">
			<el-button v-if="ruleForm.shipinjieshao" @click="download(baseUrl + ruleForm.shipinjieshao)" type="success">预览</el-button>
			<el-button v-else disabled>暂无</el-button>
		  </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="美食主料" prop="meishizhuliao">
            <el-input v-model="ruleForm.meishizhuliao" 
                placeholder="美食主料" clearable :disabled=" false  ||ro.meishizhuliao"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="美食口味" prop="meishikouwei">
            <el-input v-model="ruleForm.meishikouwei" 
                placeholder="美食口味" clearable :disabled=" false  ||ro.meishikouwei"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="预定时间" prop="yudingshijian">
              <el-date-picker
				  :disabled=" false  ||ro.yudingshijian"
                  value-format="yyyy-MM-dd HH:mm:ss"
                  v-model="ruleForm.yudingshijian" 
                  type="datetime"
                  placeholder="预定时间">
              </el-date-picker>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="用户账号" prop="yonghuzhanghao">
            <el-input v-model="ruleForm.yonghuzhanghao" 
                placeholder="用户账号" clearable :disabled=" false  ||ro.yonghuzhanghao"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="e彷姓名" prop="epangxingming">
            <el-input v-model="ruleForm.epangxingming" 
                placeholder="e彷姓名" clearable :disabled=" false  ||ro.epangxingming"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="美食特色" prop="meishitese">
            <el-input
              type="textarea"
              :rows="8"
              placeholder="美食特色"
              v-model="ruleForm.meishitese">
            </el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="烹饪方法" prop="pengrenfangfa">
            <el-input
              type="textarea"
              :rows="8"
              placeholder="烹饪方法"
              v-model="ruleForm.pengrenfangfa">
            </el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="美食详情" prop="meishixiangqing">
            <editor 
                :style='{"minHeight":"250px","padding":"0","margin":"0","borderColor":"#1abc9e30","backgroundColor":"none","borderRadius":"0","borderWidth":"0px","width":"100%","borderStyle":"solid","height":"auto"}'
                v-model="ruleForm.meishixiangqing" 
                class="editor" 
                action="file/upload">
            </editor>
          </el-form-item>

      <el-form-item :style='{"padding":"0","margin":"0"}'>
        <el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"0px","background":"#1abc9e","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}'  type="primary" @click="onSubmit">提交</el-button>
        <el-button :style='{"border":"1px solid #eee","cursor":"pointer","padding":"0","margin":"0","outline":"none","color":"#333","borderRadius":"0px","background":"#fcfcfc","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
</div>
</template>

<script>
  export default {
    data() {
	  let self = this
      return {
        id: '',
        baseUrl: '',
        ro:{
				meishimingcheng : false,
				meishifenlei : false,
				fengmian : false,
				jiage : false,
				yudingshuliang : false,
				yudingjine : false,
				meishididian : false,
				meishipingfen : false,
				shipinjieshao : false,
				meishizhuliao : false,
				meishikouwei : false,
				meishitese : false,
				pengrenfangfa : false,
				meishixiangqing : false,
				yudingshijian : false,
				yonghuzhanghao : false,
				epangxingming : false,
				ispay : false,
        },
        type: '',
        userTableName: localStorage.getItem('UserTableName'),
        ruleForm: {
          meishimingcheng: '',
          meishifenlei: '',
          fengmian: '',
          jiage: '',
          yudingshuliang: '',
          yudingjine: '',
          meishididian: '',
          meishipingfen: '',
          shipinjieshao: '',
          meishizhuliao: '',
          meishikouwei: '',
          meishitese: '',
          pengrenfangfa: '',
          meishixiangqing: '',
          yudingshijian: '',
          yonghuzhanghao: '',
          epangxingming: '',
          ispay: '',
        },


        rules: {
          meishimingcheng: [
            { required: true, message: '美食名称不能为空', trigger: 'blur' },
          ],
          meishifenlei: [
          ],
          fengmian: [
          ],
          jiage: [
            { validator: this.$validate.isNumber, trigger: 'blur' },
          ],
          yudingshuliang: [
            { validator: this.$validate.isIntNumer, trigger: 'blur' },
          ],
          yudingjine: [
            { validator: this.$validate.isNumber, trigger: 'blur' },
          ],
          meishididian: [
          ],
          meishipingfen: [
          ],
          shipinjieshao: [
          ],
          meishizhuliao: [
          ],
          meishikouwei: [
          ],
          meishitese: [
          ],
          pengrenfangfa: [
          ],
          meishixiangqing: [
          ],
          yudingshijian: [
          ],
          yonghuzhanghao: [
          ],
          epangxingming: [
          ],
          ispay: [
          ],
        },
		centerType: false,
      };
    },
    computed: {


        yudingjine:{
            get: function () {
                return 1*this.ruleForm.jiage*this.ruleForm.yudingshuliang
            }
        },

    },
    components: {
    },
    created() {
		if(this.$route.query.centerType){
			this.centerType = true
		}
	  //this.bg();
      let type = this.$route.query.type ? this.$route.query.type : '';
      this.init(type);
      this.baseUrl = this.$config.baseUrl;
      this.ruleForm.yudingshijian = this.getCurDateTime()
    },
    methods: {
      getMakeZero(s) {
          return s < 10 ? '0' + s : s;
      },
      // 下载
      download(file){
        window.open(`${file}`)
      },
      // 初始化
      init(type) {
        this.type = type;
        if(type=='cross'){
          var obj = JSON.parse(localStorage.getItem('crossObj'));
          for (var o in obj){
            if(o=='meishimingcheng'){
              this.ruleForm.meishimingcheng = obj[o];
              this.ro.meishimingcheng = true;
              continue;
            }
            if(o=='meishifenlei'){
              this.ruleForm.meishifenlei = obj[o];
              this.ro.meishifenlei = true;
              continue;
            }
            if(o=='fengmian'){
              this.ruleForm.fengmian = obj[o].split(",")[0];
              this.ro.fengmian = true;
              continue;
            }
            if(o=='jiage'){
              this.ruleForm.jiage = obj[o];
              this.ro.jiage = true;
              continue;
            }
            if(o=='yudingshuliang'){
              this.ruleForm.yudingshuliang = obj[o];
              this.ro.yudingshuliang = true;
              continue;
            }
            if(o=='yudingjine'){
              this.ruleForm.yudingjine = obj[o];
              this.ro.yudingjine = true;
              continue;
            }
            if(o=='meishididian'){
              this.ruleForm.meishididian = obj[o];
              this.ro.meishididian = true;
              continue;
            }
            if(o=='meishipingfen'){
              this.ruleForm.meishipingfen = obj[o];
              this.ro.meishipingfen = true;
              continue;
            }
            if(o=='shipinjieshao'){
              this.ruleForm.shipinjieshao = obj[o];
              this.ro.shipinjieshao = true;
              continue;
            }
            if(o=='meishizhuliao'){
              this.ruleForm.meishizhuliao = obj[o];
              this.ro.meishizhuliao = true;
              continue;
            }
            if(o=='meishikouwei'){
              this.ruleForm.meishikouwei = obj[o];
              this.ro.meishikouwei = true;
              continue;
            }
            if(o=='meishitese'){
              this.ruleForm.meishitese = obj[o];
              this.ro.meishitese = true;
              continue;
            }
            if(o=='pengrenfangfa'){
              this.ruleForm.pengrenfangfa = obj[o];
              this.ro.pengrenfangfa = true;
              continue;
            }
            if(o=='meishixiangqing'){
              this.ruleForm.meishixiangqing = obj[o];
              this.ro.meishixiangqing = true;
              continue;
            }
            if(o=='yudingshijian'){
              this.ruleForm.yudingshijian = obj[o];
              this.ro.yudingshijian = true;
              continue;
            }
            if(o=='yonghuzhanghao'){
              this.ruleForm.yonghuzhanghao = obj[o];
              this.ro.yonghuzhanghao = true;
              continue;
            }
            if(o=='epangxingming'){
              this.ruleForm.epangxingming = obj[o];
              this.ro.epangxingming = true;
              continue;
            }
          }
        }else if(type=='edit'){
			this.info()
		}
        // 获取用户信息
        this.$http.get(this.userTableName + '/session', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            var json = res.data.data;
            if((json.yonghuzhanghao!=''&&json.yonghuzhanghao) || json.yonghuzhanghao==0){
                this.ruleForm.yonghuzhanghao = json.yonghuzhanghao
            }
            if((json.epangxingming!=''&&json.epangxingming) || json.epangxingming==0){
                this.ruleForm.epangxingming = json.epangxingming
            }
          }
        });

		if (localStorage.getItem('raffleType') && localStorage.getItem('raffleType') != null) {
			localStorage.removeItem('raffleType')
			setTimeout(() => {
				this.onSubmit()
			}, 300)
		}
      },

    // 多级联动参数
      // 多级联动参数
      info() {
        this.$http.get(`meishiyuding/detail/${this.$route.query.id}`, {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            this.ruleForm = res.data.data;
          }
        });
      },
      // 提交
      onSubmit() {

			this.ruleForm.yudingjine = this.yudingjine
			//更新跨表属性
			var crossuserid;
			var crossrefid;
			var crossoptnum;
			this.$refs["ruleForm"].validate(valid => {
				if(valid) {
					if(this.type=='cross'){
						var statusColumnName = localStorage.getItem('statusColumnName');
						var statusColumnValue = localStorage.getItem('statusColumnValue');
						if(statusColumnName && statusColumnName!='') {
							var obj = JSON.parse(localStorage.getItem('crossObj'));
							if(!statusColumnName.startsWith("[")) {
								for (var o in obj){
									if(o==statusColumnName){
										obj[o] = statusColumnValue;
									}
								}
								var table = localStorage.getItem('crossTable');
								this.$http.post(table+'/update', obj).then(res => {});
							} else {
								crossuserid=Number(localStorage.getItem('frontUserid'));
								crossrefid=obj['id'];
								crossoptnum=localStorage.getItem('statusColumnName');
								crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
							}
						}
					}
					if(crossrefid && crossuserid) {
						this.ruleForm.crossuserid=crossuserid;
						this.ruleForm.crossrefid=crossrefid;
						var params = {
							page: 1,
							limit: 10,
							crossuserid:crossuserid,
							crossrefid:crossrefid,
						}
						this.$http.get('meishiyuding/list', {
							params: params
						}).then(res => {
							if(res.data.data.total>=crossoptnum) {
								this.$message({
									message: localStorage.getItem('tips'),
									type: 'error',
									duration: 1500,
								});
								return false;
							} else {
								// 跨表计算


								this.$http.post(`meishiyuding/${this.ruleForm.id?'update':this.centerType?'save':'add'}`, this.ruleForm).then(res => {
									if (res.data.code == 0) {
										this.$message({
											message: '操作成功',
											type: 'success',
											duration: 1500,
											onClose: () => {
												this.$router.go(-1);
											}
										});
									} else {
										this.$message({
											message: res.data.msg,
											type: 'error',
											duration: 1500
										});
									}
								});
							}
						});
					} else {


						this.$http.post(`meishiyuding/${this.ruleForm.id?'update':this.centerType?'save':'add'}`, this.ruleForm).then(res => {
							if (res.data.code == 0) {
								this.$message({
									message: '操作成功',
									type: 'success',
									duration: 1500,
									onClose: () => {
										this.$router.go(-1);
									}
								});
							} else {
								this.$message({
									message: res.data.msg,
									type: 'error',
									duration: 1500
								});
							}
						});
					}
				}
			});
		},
		// 获取uuid
		getUUID () {
			return new Date().getTime();
		},
		// 返回
		back() {
			this.$router.go(-1);
		},
      fengmianUploadChange(fileUrls) {
          this.ruleForm.fengmian = fileUrls.replace(new RegExp(this.$config.baseUrl,"g"),"");;
      },
      shipinjieshaoUploadChange(fileUrls) {
          this.ruleForm.shipinjieshao = fileUrls.replace(new RegExp(this.$config.baseUrl,"g"),"");;
      },
    }
  };
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  padding: 0 10px 0 0;
	  color: #666;
	  font-weight: 500;
	  width: 80px;
	  font-size: 14px;
	  line-height: 40px;
	  text-align: right;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 80px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  border: 1px solid #ddd;
	  padding: 0 12px;
	  color: #666;
	  font-size: 14px;
	  border-color: #1abc9e30;
	  border-radius: 0px;
	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  outline: none;
	  background: none;
	  width: 400px;
	  border-width: 0 0 1px;
	  border-style: solid;
	  height: 40px;
	}
	.add-update-preview .el-input-number /deep/ .el-input__inner {
		text-align: left;
	  border: 1px solid #ddd;
	  padding: 0 12px;
	  color: #666;
	  font-size: 14px;
	  border-color: #1abc9e30;
	  border-radius: 0px;
	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  outline: none;
	  background: none;
	  width: 400px;
	  border-width: 0 0 1px;
	  border-style: solid;
	  height: 40px;
	}
	.add-update-preview .el-input-number /deep/ .el-input-number__decrease {
		display: none;
	}
	.add-update-preview .el-input-number /deep/ .el-input-number__increase {
		display: none;
	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  border-radius: 0px;
	  padding: 0 10px;
	  color: #666;
	  background: none;
	  width: 200px;
	  font-size: 14px;
	  border-color: #1abc9e30;
	  border-width: 0 0 1px;
	  border-style: solid;
	  height: 40px;
	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  border-radius: 0px;
	  padding: 0 10px 0 30px;
	  color: #666;
	  background: none;
	  width: 200px;
	  font-size: 14px;
	  border-color: #1abc9e30;
	  border-width: 0 0 1px;
	  border-style: solid;
	  height: 40px;
	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .upload .upload-img {
	  cursor: pointer;
	  border-radius: 0px;
	  color: #1abc9e60;
	  background: none;
	  width: 200px;
	  font-size: 32px;
	  border-color: #1abc9e30;
	  border-width: 0 0 1px;
	  line-height: 100px;
	  border-style: solid;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  cursor: pointer;
	  border-radius: 0px;
	  color: #1abc9e60;
	  background: none;
	  width: 200px;
	  font-size: 32px;
	  border-color: #1abc9e30;
	  border-width: 0 0 1px;
	  line-height: 100px;
	  border-style: solid;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  cursor: pointer;
	  border-radius: 0px;
	  color: #1abc9e60;
	  background: none;
	  width: 200px;
	  font-size: 32px;
	  border-color: #1abc9e30;
	  border-width: 0 0 1px;
	  line-height: 100px;
	  border-style: solid;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  border: 1px solid #1abc9e30;
	  border-radius: 0px;
	  padding: 12px;
	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  outline: none;
	  color: #666;
	  background: none;
	  width: 400px;
	  font-size: 14px;
	  height: 120px;
	}
</style>
