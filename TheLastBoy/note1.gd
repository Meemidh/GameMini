extends RichTextLabel

var dialog = ["20/August/2020                วันนี้พ่ออารมณ์ไม่ดีอีกแล้ว พ่อกลับจากที่ทำงานก็ทะเลาะกับแม่เสียงดังมาก ผมกลัวมากจนต้องเข้ามาหลบในห้องกับวินซี่ วินซี่เอาแต่นั่งกอดเข่าร้องให้ ผมไม่เข้าใจเลยว่าทำไมพ่อถึงเป็นแบบนี้อีกแล้ว ช่วงนี้ผมเครียดจนเผลอเหม่อลอยบ่อยๆ อาจจะเพราะผมเหนื่อยมาก ผมไม่ขออะไรมากเลยผมก็แค่อยากให้ทุกคนมีความสุข ผมพยายามทำทุกอย่างเพื่อเป็นลูกที่ดี แต่ทำไมผลลัพธ์ถึงออกมาเป็นแบบนี้ล่ะครับ"]
var page = 0 

func _ready():
	$"/root/HUD"/HpBar.visible = false
	$"/root/Hpenemy"/hpenemy.visible = false
	$"/root/Hpenemy"/BOSS.visible = false
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)


func _on_Timer1_timeout():
		set_visible_characters(get_visible_characters()+1)
