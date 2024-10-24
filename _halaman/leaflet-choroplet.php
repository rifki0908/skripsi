<?php
  $title="Leaflet - Choroplet Map";
  $judul=$title;
  $url='leaflet-choroplet';
  $fileJs='leaflet-choropletJs';
 ?>
 <style type="text/css">
 	.info { padding: 6px 8px; font: 14px/16px Arial, Helvetica, sans-serif; background: white; background: rgba(255,255,255,0.8); box-shadow: 0 0 15px rgba(0,0,0,0.2); border-radius: 5px; } .info h4 { margin: 0 0 5px; color: #777; }
	.legend { text-align: left; line-height: 18px; color: #555; } .legend i { width: 18px; height: 18px; float: left; margin-right: 8px; opacity: 0.7; }
 </style>
<?=content_open($title)?>
 	<div id="mapid"></div>
<?=content_close()?>
