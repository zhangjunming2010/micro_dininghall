define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
		this.comp("orderData").loadData(event.params.data);
	};

	Model.prototype.backBtnClick = function(event){
		this.comp("windowDialog1").open();
	};

	return Model;
});