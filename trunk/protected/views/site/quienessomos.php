<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<div style="line-height: 22px !important;">
<?php
if ($quienessomos) {


echo $quienessomos->texto;
}
?>
</div>







