<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:268px;left:503px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="menuData" idColumn="id"> 
      <column label="id" name="id" type="String" xid="column16"/>  
      <column label="title" name="title" type="String" xid="column17"/>  
      <column label="imgName" name="imgName" type="String" xid="column18"/>  
      <column label="pageName" name="pageName" type="String" xid="xid4"/>  
      <data xid="default1">[{"id":"1","title":"锅底系列","imgName":"gdxl.jpg","pageName":"dc"},{"id":"2","title":"精品系列","imgName":"jpxl.jpg","pageName":"dc"},{"id":"3","title":"特色系列","imgName":"tsxl.jpg","pageName":"dc"},{"id":"4","title":"荤菜系列","imgName":"hcxl.jpg","pageName":"dc"},{"id":"5","title":"素菜系列","imgName":"scxl.jpg","pageName":"dc"},{"id":"6","title":"小吃酒水","imgName":"xcjs.jpg","pageName":"dc"}]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="id" onCustomRefresh="goodsDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="column1"/>  
      <column label="店铺ID" name="fShopID" type="String" xid="xid3"/>  
      <column label="标题" name="fTitle" type="String" xid="column2"/>  
      <column label="图片" name="fImg" type="String" xid="column3"/>  
      <column label="价格" name="fPrice" type="Float" xid="column4"/>  
      <column label="邮费" name="fPostage" type="String" xid="column6"/>  
      <column label="月销量" name="fRecord" type="Integer" xid="column7"/>
    </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="cartData" idColumn="id">
   <column label="id" name="id" type="String" xid="xid1"></column>
   <column label="fTitle" name="fTitle" type="String" xid="xid2"></column>
   <column label="fImg" name="fImg" type="String" xid="xid5"></column>
   <column label="fNbr" name="fNbr" type="Integer" xid="xid6"></column>
   <column label="fPrice" name="fPrice" type="Integer" xid="xid7"></column>
   <column label="gid" name="gid" type="Integer" xid="xid8"></column></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" style="top:303px;left:100px;" src="../gwc/gwc.w"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-card x-full x-has-iosstatusbar"
    xid="panel1"> 
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/bootstrap/row/row" class="row tb-box"
        xid="row2"> 
        <div class="col col-xs-3" xid="col4">
          <div component="$UI/system/components/justep/list/list" class="x-list tb-root"
            xid="list3" dataItemAlias="menuRow" autoLoad="true" data="menuData"> 
            <ul class="x-list-template list-group" xid="listTemplateUl3" componentname="$UI/system/components/justep/list/list#listTemplateUl"
              id="undefined_listTemplateUl3"> 
              <li xid="li5" class="list-group-item text-center tb-nopadding" bind-css="{'current':  $model.menuData.currentRow.get()== $object}">
                <h5 xid="h52" class="text-black" bind-text=' ref("title")'/>
              </li>
            </ul> 
          </div>
        </div>  
        <div class="col col-xs-9" xid="col6"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
            xid="panel2"> 
            <div class="x-panel-content" xid="content2" _xid="C74674B578F00001EB181C901A001736" style="bottom: 48px; top: 5px;">
              
            <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" data="goodsData" filter=' $row.val("fShopID") == $model.menuData.val("id")'> 
                <ul class="x-list-template x-min-height" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1"> 
                  <li xid="li1" class="text-center tb-listBox text-black" componentname="li(html)" id="undefined_li1">
                    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"> 
                      <div class="x-col x-col-center" xid="col1" style="text-align:left;"><span xid="span3" class="text-black" bind-text='val("fTitle")' style="font-weight:bold;"></span></div>
  <div class="x-col x-col-fixed x-col-center" xid="col7" style="width:auto;"><span xid="span1" class="text-black"><![CDATA[已售]]></span>
  <span xid="span2" class="text-black" style="padding-left:5px;padding-right:10px;"><![CDATA[22]]></span></div></div> 
                  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col x-col-center" xid="col2" style="text-align:left;"><span xid="span4" class="text-black" bind-text='"￥" + val("fPrice")'></span>
  <span xid="span5"><![CDATA[/份]]></span></div>
   <div class="x-col x-col-fixed x-col-center" xid="col5" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-left text-black" label="button" xid="reduceBtn" icon="icon-ios7-minus-outline">
   <i xid="i2" class="icon-ios7-minus-outline"></i>
   <span xid="span7"></span></a>
  </div>
  <div class="x-col x-col-fixed x-col-center" xid="col3" style="width:auto;"><span xid="span8"><![CDATA[1]]></span></div>
  <div class="x-col x-col-fixed x-col-center" xid="col8" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right text-black" label="button" xid="addBtn" icon="icon-ios7-plus-outline" onClick="addBtnClick">
   <i xid="i1" class="icon-ios7-plus-outline"></i>
   <span xid="span6"></span></a></div></div></li>
                </ul> 
              </div></div> 
          </div>
        </div>
      </div>
    </div> 
  </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" style="top:16px;left:178px;" type="YesNo" title="确认" message="确认退回到首页？已选菜品将被清空。" width="320" onYes="messageDialog1Yes"></span></div>
