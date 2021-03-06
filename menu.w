<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:268px;left:503px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="menuData" idColumn="id"> 
      <column label="id" name="id" type="String" xid="column16"></column>
  <column label="title" name="title" type="String" xid="column17"></column>
  <column label="goodNbr" name="goodNbr" type="Integer" xid="xid10"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;title&quot;:&quot;锅底&quot;,&quot;goodNbr&quot;:0},{&quot;id&quot;:&quot;2&quot;,&quot;title&quot;:&quot;招牌手打牛丸&quot;,&quot;goodNbr&quot;:0},{&quot;id&quot;:&quot;3&quot;,&quot;title&quot;:&quot;新鲜时蔬&quot;,&quot;goodNbr&quot;:0},{&quot;id&quot;:&quot;4&quot;,&quot;title&quot;:&quot;招牌鲜牛肉&quot;,&quot;goodNbr&quot;:0},{&quot;id&quot;:&quot;5&quot;,&quot;title&quot;:&quot;生鲜牛附件&quot;,&quot;goodNbr&quot;:0},{&quot;id&quot;:&quot;6&quot;,&quot;title&quot;:&quot;菌菇系列&quot;,&quot;goodNbr&quot;:0},{&quot;id&quot;:&quot;7&quot;,&quot;title&quot;:&quot;凉菜小吃&quot;,&quot;goodNbr&quot;:0},{&quot;id&quot;:&quot;8&quot;,&quot;title&quot;:&quot;酒水盈饮料&quot;,&quot;goodNbr&quot;:0}]</data></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="id" onCustomRefresh="goodsDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="column1"></column>
  <column label="店铺ID" name="fShopID" type="String" xid="xid3"></column>
  <column label="标题" name="fTitle" type="String" xid="column2"></column>
  <column label="图片" name="fImg" type="String" xid="column3"></column>
  <column label="价格" name="fPrice" type="Float" xid="column4"></column>
  <column label="邮费" name="fPostage" type="String" xid="column6"></column>
  <column label="月销量" name="fRecord" type="Integer" xid="column7"></column>
  <column label="被选个数" name="fNbr" type="Integer" xid="xid9"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="cartData" idColumn="id">
   <column label="id" name="id" type="String" xid="xid1"></column>
  <column label="fTitle" name="fTitle" type="String" xid="xid2"></column>
  <column label="fNbr" name="fNbr" type="Integer" xid="xid6"></column>
  <column label="fPrice" name="fPrice" type="Integer" xid="xid7"></column>
  <column label="gid" name="gid" type="Integer" xid="xid8"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   
   <div class="x-panel-top" xid="top3"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="点选菜品">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="backBtn" icon="icon-android-arrow-back" onClick='{"operation":"window.close"}'>
   <i xid="i5" class="icon-android-arrow-back"></i>
   <span xid="span11"></span></a></div>
   <div class="x-titlebar-title" xid="title1">点选菜品</div>
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label=" 下单" xid="subBtn" icon="icon-clipboard" onClick="subBtnClick">
   <i xid="i3" class="icon-clipboard"></i>
   <span xid="span9"> 下单</span></a></div></div></div><div class="x-panel-content" xid="content1"><div component="$UI/system/components/bootstrap/row/row" class="row tb-box" xid="row2"> 
        <div class="col col-xs-4" xid="col4">
          <div component="$UI/system/components/justep/list/list" class="x-list tb-root" xid="list3" dataItemAlias="menuRow" autoLoad="true" data="menuData"> 
            <ul class="x-list-template list-group" xid="listTemplateUl3" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl3"> 
              <li xid="li5" class="list-group-item text-center tb-nopadding" bind-css="{'current':  $model.menuData.currentRow.get()== $object}">
                
              
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col x-col-center" xid="col9" style="width:80%;"><span xid="span14" bind-text='val("title")'></span>
  <span xid="span12" bind-text='"(" +  justep.String.toInt( val("goodNbr"))+")"' style="color:#ff3838;" bind-visible=' justep.String.toInt( val("goodNbr")) &gt;0'></span></div>
   </div></li>
            </ul> 
          </div>
        </div>  
        <div class="col col-xs-8" xid="col6"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2"> 
            <div class="x-panel-content" xid="content2" _xid="C74674B578F00001EB181C901A001736" style="bottom: 48px; top: 5px;">
              
            <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" data="goodsData" filter=' $row.val("fShopID") == $model.menuData.val("id")'> 
                <ul class="x-list-template x-min-height" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1"> 
                  <li xid="li1" class="text-center tb-listBox text-black" componentname="li(html)" id="undefined_li1">
                    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"> 
                      <div class="x-col x-col-center" xid="col1" style="text-align:left;"><span xid="span3" class="text-black" bind-text='val("fTitle")' style="font-weight:bold;"></span></div>
  <div class="x-col x-col-fixed x-col-center" xid="col7" style="width:auto;"><span xid="span1" class="text-black"><![CDATA[已售]]></span>
  <span xid="span2" class="text-black" style="padding-left:5px;padding-right:10px;" bind-text='val("fRecord")'><![CDATA[22]]></span></div></div> 
                  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col x-col-center" xid="col2" style="text-align:left;"><span xid="span4" class="text-black" bind-text='"￥" + val("fPrice")' style="color:#cf0202;"></span>
  <span xid="span5"><![CDATA[/份]]></span></div>
   <div class="x-col x-col-fixed x-col-center" xid="col5" style="width:auto;" bind-visible=' justep.String.toInt( val("fNbr")) &gt; 0'><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-left text-black" label="button" xid="reduceBtn" icon="icon-ios7-minus-outline" style="font-size:large;color:#ff3838;" onClick="reduceBtnClick">
   <i xid="i2" class="icon-ios7-minus-outline"></i>
   <span xid="span7"></span></a>
  </div>
  <div class="x-col x-col-fixed x-col-center" xid="col3" style="width:auto;" bind-visible=' justep.String.toInt( val("fNbr")) &gt; 0'><span xid="span8" bind-text='val("fNbr")' style="font-size:medium;color:#400040;" class="text-black"><![CDATA[0]]></span></div>
  <div class="x-col x-col-fixed x-col-center" xid="col8" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right text-black" label="button" xid="addBtn" icon="icon-ios7-plus-outline" onClick="addBtnClick" style="font-size:large;color:#ff3838;">
   <i xid="i1" class="icon-ios7-plus-outline"></i>
   <span xid="span6"></span></a></div></div></li>
                </ul> 
              </div>
  </div> 
          </div>
        </div>
      </div></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" style="top:315px;left:52px;" src="$UI/micro_dininghall/order.w" forceRefreshOnOpen="true"></span><span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" style="top:16px;left:178px;" type="YesNo" title="确认" message="确认退回到首页？已选菜品将被清空。" width="320"></span></div>
