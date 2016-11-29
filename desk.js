define(function(require){
//	var $ = require("jquery");
//	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.row15Click = function(event){
		this.comp("windowDialog1").open();
	};

	return Model;
});