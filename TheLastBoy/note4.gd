
extends RichTextLabel

var dialog = ["30/August/2020                 พ่อฆ่าวินซี่ทำไม แล้วแม่น่ะตอนที่ผมไม่อยู่ไม่คิดจะทำอะไรซักอย่างหรือไง ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม ทำไม              .                     .                                           หายไปให้หมด"]
var page = 0 

func _ready():
	$"/root/HUD"/HpBar.visible = false
	$"/root/Hpenemy"/hpenemy.visible = false
	$"/root/Hpenemy"/BOSS.visible = false
	
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)
	

func _on_Timer4_timeout():
	set_visible_characters(get_visible_characters()+1)


	
