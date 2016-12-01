<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:306px;left:482px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="orderData" idColumn="id" limit="-1" confirmDelete="false" confirmRefresh="false">
   <column label="id" name="id" type="String" xid="xid1"></column>
   <column label="fTitle" name="fTitle" type="String" xid="xid2"></column>
   <column label="fNbr" name="fNbr" type="Integer" xid="xid6"></column>
   <column label="fPrice" name="fPrice" type="Integer" xid="xid7"></column>
   <column label="gid" name="gid" type="Integer" xid="xid8"></column></div></div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" style="top:297px;left:79px;" src="./desk.w" forceRefreshOnOpen="true"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-card x-full x-has-iosstatusbar" xid="panel3">
   <div class="x-panel-top" xid="top3"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" title="花田最鲜货火锅">
    <div class="x-titlebar-left" xid="left2"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="关闭" xid="backBtn" icon="icon-android-arrow-back" onClick="backBtnClick">
   <i xid="i2" class="icon-android-arrow-back"></i>
   <span xid="span15">关闭</span></a></div>
    <div class="x-titlebar-title" xid="title2">花田最鲜货火锅</div>
    <div class="x-titlebar-right reverse" xid="right2"></div></div></div>
   <div class="x-panel-content" xid="content4" style="background-color:#f5f5f5;"><div xid="div3" style="background-color:#FFFFFF;margin:5px 0px 0px 0px;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
    <div class="x-col x-col-center" xid="col10" style="text-align:center;">
     <img src="$UI/micro_dininghall/img/ok.png" alt="" xid="image2"></img>
     <span xid="span6" style="color:#339966;padding-left:10px;font-weight:bold;">下单成功！坐等开吃~</span></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
    <div class="x-col x-col-center" xid="col9" style="text-align:center;">
     <span xid="span5"></span></div> </div> </div><div xid="div4" style="background-color:#FFFFFF;margin:5px 0px 0px 0px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row16">
   <div class="x-col x-col-fixed x-col-center" xid="col36" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label=" 大厅" xid="button20" icon="icon-android-location" style="padding-left:10px;color:#ff3838;font-size:20px;">
     <i xid="i16" class="icon-android-location"></i>
     <span xid="span32" style="font-weight:bold;">大厅</span></a> </div> 
   <div class="x-col x-col-center" xid="col35">
    <span xid="span31" style="font-weight:bold;font-size:18px;">10号</span></div> 
  <div class="x-col x-col-fixed x-col-center" xid="col11" style="width:auto;">
  </div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row x-row-center x-responsive-sm" xid="row6">
   <div class="x-col" xid="col12" style="text-align:right;"><span xid="span7" style="font-size:small;"><![CDATA[下单时间：]]></span><span xid="span8" style="color:#ff3838;font-size:small;" bind-text=" justep.Date.toString(new Date(), justep.Date.DEFAULT_FORMAT)"><![CDATA[]]></span></div>
   </div></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="orderData" style="margin:5px 0px 0px 0px;">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl4" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl4">
    <li xid="li4" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li4"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col15"><span xid="span10" bind-text='val("fTitle")'></span></div>
   <div class="x-col" xid="col16"></div>
   <div class="x-col" xid="col17" style="text-align:right;"><span xid="span11" bind-text='val("fPrice") + " x " +  val("fNbr")'></span></div></div>
  </li></ul> </div>
  </div>
   <div class="x-panel-bottom" xid="bottom3" height="30"><div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row8" style="background-color:#ff3838;padding-bottom:10px;">
   <div class="x-col" xid="col18"></div>
   <div class="x-col x-col-center" xid="col19" style="text-align:center;"><span xid="span13" style="color:#FFFFFF;font-weight:bold;"><![CDATA[总价：]]></span>
  <span xid="span14" style="font-weight:bold;color:#FFFFFF;"><![CDATA[300 元]]></span></div>
   <div class="x-col" xid="col20"></div></div></div></div></div>