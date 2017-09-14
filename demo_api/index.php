<?php
$myfile = fopen("cate.csv", "r") or die("Unable to open file!");
$result = array();
if(isset($_GET['id'])){
	while($line = fgets($myfile,filesize("cate.csv"))){
		$line_arr = explode(',', trim($line));
		if($line_arr[0] == $_GET['id']){
			$tmp['id'] = $line_arr[0];
			$tmp['catename'] = $line_arr[1];
			$result = $tmp;
			break;
		}
		continue;
	}
}else{
	while($line = fgets($myfile,filesize("cate.csv"))){
		$line_arr = explode(',', trim($line));
		$tmp['id'] = $line_arr[0];
		$tmp['catename'] = $line_arr[1];
		$result[] = $tmp;
	}
}

header('Access-Control-Allow-Origin: *');
header('Content-type:application/json');
echo json_encode($result);
?>