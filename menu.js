define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.goodsDataCustomRefresh = function(event) {
		/*
		 * 1、加载商品数据
		 */
		var url = require.toUrl("./json/goodsData.json");
		var goodsData = event.source;
		goodsData.clear();
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			goodsData.loadData(data);
		});
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	// 添加商品
	Model.prototype.addBtnClick = function(event) {
		var cartData = this.comp("cartData");
		var row = event.bindingContext.$object;
		var isExit = cartData.find([ "gid" ], [ row.val("id") ]);
		if (isExit.length == "0") {
			cartData.newData({
				"defaultValues" : [ {
					"id" : justep.UUID.createUUID(),
					"fTitle" : row.val("fTitle"),
					"fImg" : row.val("fImg"),
					"fNbr" : 1,
					"fPrice" : row.val("fPrice"),
					"gid" : row.val("id")
				} ]
			});
		} else {
			var rowData = isExit[0];
			cartData.setValue("fNbr", rowData.val("fNbr") + 1, rowData);
		}
		var Nbr = 0;
		cartData.each(function(param){
			Nbr = Nbr + param.row.val("fNbr");
		});
		justep.Util.hint(
			row.val("fTitle")+"添加成功！",
			{
				"delay":1000,
				"position":"middle",
			}
		);
		$(".x-hint").find("button[class='close']").hide();
	};
	
	Model.prototype.backBtnClick = function(event){
		var cartData = this.comp("cartData");
		if(cartData.getCount() != "0"){
			this.comp("messageDialog1").show();
		}else{
			this.close();
		}
	};
	
	Model.prototype.messageDialog1Yes = function(event){
		this.comp("cartData").clear();
		this.close();
	};
	
	return Model;
});