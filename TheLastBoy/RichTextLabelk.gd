extends RichTextLabel



var dialog = ["คุณได้รับมีดทำครัว  1 เล่ม"]
var page = 0 

func _ready():
	
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)



func _on_Timerk_timeout():
	 set_visible_characters(get_visible_characters()+1)
