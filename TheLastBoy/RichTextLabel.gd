extends RichTextLabel



var dialog = ["          ทางข้างหน้าดูอันตราย คุณจำเป็นต้องมีอาวุธ"]
var page = 0 

func _ready():
	
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)


					  


  


func _on_Timer_timeout():
	   set_visible_characters(get_visible_characters()+1)
