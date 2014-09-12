<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;



echo CHtml::ajaxLink(
    '<div id="req_res">
    Test request',          // the link body (it will NOT be HTML-encoded.)
    array('site/reqTest01'),  // the URL for the AJAX request. If empty, it is assumed to be the current URL.
    array(
        'update'=>'#req_res'
    ), array('update'=>'#forAjaxRefresh')
);
 
echo '...</div>';
 








?>
