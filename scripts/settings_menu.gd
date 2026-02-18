class_name SettingsMenu extends CanvasLayer


@onready var music_slider:HSlider = %MusicSlider
@onready var sfx_slider:HSlider = %SFXSlider
@onready var language_dropdown:OptionButton = %LanguageDropdown
@onready var close_button:Button = %CloseButton
@onready var MUSIC_BUS_ID = AudioServer.get_bus_index("Music")
@onready var SFX_BUS_ID = AudioServer.get_bus_index("SFX")

var user_prefs: UserPrefs

signal language_changed(language: String)


func _ready():
	_populate_language_dropdown()
	
	# load (or create) file with these saved preferences
	user_prefs = UserPrefs.load_or_create()
	
	# set saved values (will be default values if first load)
	if music_slider:
		music_slider.value = user_prefs.music_volume
	if sfx_slider:
		sfx_slider.value = user_prefs.sfx_volume
	if language_dropdown:
		var lang = Globals.get_selected_language()
		var lang_index = Const.LANGUAGES.find(lang)
		language_dropdown.selected = lang_index
		TranslationServer.set_locale(lang)
	
	music_slider.grab_focus()


func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		close_settings()


func close_settings():
	queue_free()


func _populate_language_dropdown():
	for lang in Const.LANGUAGES:
		language_dropdown.add_item(lang)


func _on_close_button_pressed():
	close_settings()


func _on_music_slider_value_changed(_value):
	AudioServer.set_bus_volume_linear(MUSIC_BUS_ID, _value)
	AudioServer.set_bus_mute(MUSIC_BUS_ID, _value < .05)
	user_prefs.music_volume = _value


func _on_sfx_slider_value_changed(_value):
	AudioServer.set_bus_volume_linear(SFX_BUS_ID, _value)
	AudioServer.set_bus_mute(SFX_BUS_ID, _value < .05)
	user_prefs.sfx_volume = _value


func _on_language_dropdown_item_selected(_index):
	var lang = Const.LANGUAGES[_index]
	user_prefs.language = lang
	language_changed.emit(lang)
	TranslationServer.set_locale(lang)


func _notification(what):
	var pause = process_mode == PROCESS_MODE_WHEN_PAUSED
	match what:
		NOTIFICATION_ENTER_TREE:
			get_tree().paused = pause
		NOTIFICATION_EXIT_TREE:
			user_prefs.save()
			get_tree().paused = false
