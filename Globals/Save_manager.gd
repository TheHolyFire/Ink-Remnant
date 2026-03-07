extends Node


func save():
	var save_state: SaveState = SaveState.new()
	save_state.ui_state = SceneManager.current_scene
	
	save_state.all_currencies = []
	for currency in CurrencyManager.all_currencies:
		save_state.all_currencies.append(currency.duplicate())
	ResourceSaver.save(save_state, "user://save.tres")
	
func load():
	if not ResourceLoader.exists("user://save.tres"):
		return
	var save_state: SaveState = ResourceLoader.load("user://save.tres")
	
	SceneManager.set_scene(save_state.ui_state as SceneManager.Scene)
	
	for saved_currency in save_state.all_currencies:
		for currency in CurrencyManager.all_currencies:
			if saved_currency.name == currency.name:
				currency.amount = saved_currency.amount
				currency.has_been_seen = saved_currency.has_been_seen
				SignalHub.resource_updated.emit(currency, currency.amount)
	
	for currency in CurrencyManager.all_currencies:
		currency.get_max()
