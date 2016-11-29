<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:83px;left:365px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="menuData" idColumn="id">
   <column label="id" name="id" type="String" xid="column16"></column>
   <column label="title" name="title" type="String" xid="column17"></column>
   <column label="imgName" name="imgName" type="String" xid="column18"></column>
   <column label="pageName" name="pageName" type="String" xid="xid4"></column>
   <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;title&quot;:&quot;锅底系列&quot;,&quot;imgName&quot;:&quot;gdxl.jpg&quot;,&quot;pageName&quot;:&quot;dc&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;title&quot;:&quot;精品系列&quot;,&quot;imgName&quot;:&quot;jpxl.jpg&quot;,&quot;pageName&quot;:&quot;dc&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;title&quot;:&quot;特色系列&quot;,&quot;imgName&quot;:&quot;tsxl.jpg&quot;,&quot;pageName&quot;:&quot;dc&quot;},{&quot;id&quot;:&quot;4&quot;,&quot;title&quot;:&quot;荤菜系列&quot;,&quot;imgName&quot;:&quot;hcxl.jpg&quot;,&quot;pageName&quot;:&quot;dc&quot;},{&quot;id&quot;:&quot;5&quot;,&quot;title&quot;:&quot;素菜系列&quot;,&quot;imgName&quot;:&quot;scxl.jpg&quot;,&quot;pageName&quot;:&quot;dc&quot;},{&quot;id&quot;:&quot;6&quot;,&quot;title&quot;:&quot;小吃酒水&quot;,&quot;imgName&quot;:&quot;xcjs.jpg&quot;,&quot;pageName&quot;:&quot;dc&quot;}]</data></div></div> 

  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="icon-chevron-left" style="color:#000000;" onClick='{"operation":"window.close"}'>
   <i xid="i2" class="icon-chevron-left"></i>
   <span xid="span2"></span></a></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1">
   <div class="col col-xs-4" xid="col1"><div component="$UI/system/components/justep/list/list" class="x-list tb-root" xid="list3" dataItemAlias="menuRow" autoLoad="true" data="menuData">
   <ul class="x-list-template list-group" xid="listTemplateUl3" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl3">
    <li xid="li5" class="list-group-item text-center tb-nopadding">
     <h5 xid="h52" class="text-black" bind-text='val("title")'></h5></li> </ul> </div></div>
   <div class="col col-xs-8" xid="col3"></div></div></div>
   <div class="x-panel-bottom" xid="bottom1"></div></div></div>