
extends RichTextLabel

var dialog = ["25/August/2020                วันนี้ผมบังเอิญไปเจอผลตรวจของพ่อ ทำให้ผมรูุ้ว่าสาเหตุว่าทำไมพ่อที่เคยเป็นคนใจดีถึงได้เปลี่ยนไปเป็นคนละคนในบางเวลา ในใบตรวจบอกว่า พ่อเป็นโรคสองบุคลิก   ผมตกใจมาก  เมื่อพ่อรู้ว่าผมแอบดูใบตรวจของพ่อ พ่อโกรธผมมาก     พ่อทุบตีผมจนผมขยับตัวแทบไม่ได้      วินซี่่พยายามเข้ามาช่วยผมแต่ก็โดนลูกหลงไปด้วย วินซี่ร้องขอให้แม่ช่วย แต่แม่ก็เมินเฉยกับทุกสิ่ง ทำไมกันล่ะครับ    ทำไมแม่ถึงไม่ช่วยผมกับน้อง…"]
var page = 0 

func _ready():
	$"/root/HUD"/HpBar.visible = false
	$"/root/Hpenemy"/hpenemy.visible = false
	$"/root/Hpenemy"/BOSS.visible = false
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)

func _on_Timer2_timeout():
	set_visible_characters(get_visible_characters()+1)