extends RichTextLabel

signal show_caul_inv
signal hide_caul_inv

var logic
# Called when the node enters the scene tree for the first time.
func _ready():
	#hides the text
	visible = false
	get_node("../Logic").connect("show_caul_inv", self._on_show_caul_inv)
	get_node("../Logic").connect("hide_caul_inv", self._on_hide_caul_inv)
	logic = get_node("../Logic")
	
	connect("show_caul_inv", self._on_show_caul_inv)
	connect("hide_caul_inv", self._on_hide_caul_inv)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	text = str(logic.storage, "/2") 

func _on_show_caul_inv():
	visible = true
	
func _on_hide_caul_inv():
	visible = false
