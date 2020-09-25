extends RichTextLabel

var dialog = ["     ใบหน้าใต้เสื้อคลุมถูกเปิดออก","    เห็นใบหน้าที่เหมือนกับผมราวกับเป็นตัวผมเอง","   ใบหน้านั้นมองมาที่ผมพร้อมรอยยิ้มเย้ยหยัน    .    .    .  ","    ทันใดนั้นก็มีภาพบางอย่างแทรกเข้ามาในหัวผมเป็นร้อย ๆ ฉาก   ","ภาพของของครอบครัวนึง มีชายหญิงวัยกลางคน เด็กผู้หญิงคนเดียวกันกับที่ผมเห็นอยู่บนกรอบรูปในบ้านหลังนี้ และเด็กผู้ชายที่หน้าตาเหมือนผม","ภาพของชายผู้เป็นพ่อตวาดใส่ภรรยาและลูกสาว","ภาพของเด็กสาวที่กำลังดิ้นรน กระเสือกกระสนให้หลุดจากมือของพ่อที่กำลังบีบคอตัวเองอยู่"  ,"   แต่สุดท้ายเด็กสาวก็แน่นิ่งไป","  ทันใดนั้นเสียงกรีดร้องของเด็กชายที่เห็นภาพนั้นดังก้องอยู่ในหูของผม ราวกับเป็นเสียงของตัวผมเอง ","   ภาพของเด็กชายที่พุ่งเข้าไปหยิบมีดทำครัว ก่อนจะเดินไปหาชายหญิงที่ยืนล้อมร่างของเด็กสาวที่ไร้ลมหายใจ ","   รอบตัวดูมืดมิดราวกับถูกม่านหมอกบดบัง ","    ผมทำอะไรกันแน่ ","  ยิ่งคิดความจริงยิ่งปรากฏ","    ทุก ๆ อย่างที่เกิดขึ้น ","  ร่างไร้วิญญาณที่นอนจมกองเลือด","  กลิ่นคาวที่คละคลุ้งไปทั้งบ้านหลังนี้ ","  ต้นเหตุของเรื่องทั้งหมด ","คือ","        .        .       ."]
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
			else:
				get_tree().change_scene("res://Main.tscn")
	
				
	


func _on_Timerend_timeout():
	set_visible_characters(get_visible_characters()+1)





