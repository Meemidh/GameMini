extends RichTextLabel



var dialog = ["พบไดอารี่เก่าๆตกอยู่","12/August/2020","วันนี้ผมได้รับรางวัลนักเรียนดีเด่นด้วยล่ะ ผมดีใจมากๆ","ทุกคนในบ้านก็ดีใจกันหมด พ่อสัญญาว่าจะพาพวกเราไปเที่ยวด้วยครับ","น้องสาวของผมวินซี่เธอดูมีความสุขมากๆ ผมดีใจนะที่ทุกคนมีความสุข..........","หน้าไดอารี่ถูกฉีกขาดไป","ตามหาหน้าไดอารี่ที่ถูกฉีกขาด"]
var page = 0 

func _ready():
	
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)

func _input(event):
	if event.is_pressed():
		if get_visible_characters() > get_total_character_count():
			if page < dialog.size()-1:
				page += 1 
				set_bbcode(dialog[page])
				set_visible_characters(0)
		
					  

func _on_Timerdi_timeout():
   set_visible_characters(get_visible_characters()+1)
  
