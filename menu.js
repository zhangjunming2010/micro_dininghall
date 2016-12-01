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

	// 添加菜品
	Model.prototype.addBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var menuid = row.val("fShopID");
		var goodData = this.comp("goodsData");
		goodData.setValue("fNbr", justep.String.toInt(row.val("fNbr")) + 1, row);
		var menuData = this.comp("menuData");
		var goodNbr =  justep.String.toInt(menuData.getValueByID("goodNbr", menuid)) + 1;
		menuData.setValueByID("goodNbr", goodNbr, menuid);
//		var cartData = this.comp("cartData");
//		var isExit = cartData.find([ "gid" ], [ row.val("id") ]);
//		if (isExit.length == "0") {
//			cartData.newData({
//				"defaultValues" : [ {
//					"id" : justep.UUID.createUUID(),
//					"fTitle" : row.val("fTitle"),
//					"fImg" : row.val("fImg"),
//					"fNbr" : 1,
//					"fPrice" : row.val("fPrice"),
//					"gid" : row.val("id")
//				} ]
//			});
//		} else {
//			var rowData = isExit[0];
//			cartData.setValue("fNbr", rowData.val("fNbr") + 1, rowData);
//		}
//		var Nbr = 0;
//		cartData.each(function(param){
//			Nbr = Nbr + param.row.val("fNbr");
//		});
//		justep.Util.hint(
//			row.val("fTitle")+"添加成功！",
//			{
//				"delay":1000,
//				"position":"middle",
//			}
//		);
//		$(".x-hint").find("button[class='close']").hide();
	};
	
	Model.prototype.reduceBtnClick = function(event){
		var row = event.bindingContext.$object;
		var menuid = row.val("fShopID");
		var goodData = this.comp("goodsData");
		var dvalue = row.val("fNbr") - 1;
		if(dvalue >= 0){
			goodData.setValue("fNbr", dvalue, row);
			var menuData = this.comp("menuData");
			var goodNbr =  justep.String.toInt(menuData.getValueByID("goodNbr", menuid)) - 1;
			if(goodNbr >= 0){
				menuData.setValueByID("goodNbr", goodNbr, menuid);
			}
		}
		
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