
extends RichTextLabel

var dialog = ["27/August/2020               วันนี้ผมไปเจอลูกแมวสีดำระหว่างทางกลับบ้าน       มันน่ารักมากๆ   ผมจึงแวะเล่นกับมัน แล้วผมก็เหม่อไปซักพักพอรู้ตัวอีกทีลูกแมวดำที่อยู่ตรงหน้าผมก็กลายเป็นศพไปแล้ว ผมตกใจมากจึงรีบนำมันไปฝังแล้วกลับบ้านทันที "]
var page = 0 

func _ready():
	$"/root/HUD"/HpBar.visible = false
	$"/root/Hpenemy"/hpenemy.visible = false
	$"/root/Hpenemy"/BOSS.visible = false
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)
	


func _on_Timer3_timeout():
	set_visible_characters(get_visible_characters()+1)
