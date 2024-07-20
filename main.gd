extends Node2D

var num1 = 0
var num2 = 0
var op = " "
var ans = 0

func _ready():
	pass # Replace with function body.

func _process(delta):
	num1 = float($input1.text)
	num2 = float($input2.text)
	match op:
		"*": ans = float(num1*num2)
		"/": ans = float(num1/num2)
		"+": ans = float(num1+num2)
		"-": ans = float(num1-num2)
		"^": ans = float(num1**num2)
		" ": pass
	$ans.text = str(ans)

func _on_mult_button_up():
	op = "*"

func _on_div_button_up():
	op = "/"

func _on_add_button_up():
	op = "+"

func _on_sub_button_up():
	op = "-"

func _on_mult_2_button_up():
	get_tree().quit()

func _on_small_button_up():
	get_window().size = get_window().size - Vector2i(30, 30)

func _on_large_button_up():
	get_window().size = get_window().size + Vector2i(30, 30)


func _on_exponent_button_up():
	op = "^"
