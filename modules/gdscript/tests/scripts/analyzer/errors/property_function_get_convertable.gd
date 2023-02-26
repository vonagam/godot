var prop: String:
	get = get_prop

func get_prop() -> StringName:
	return &'prop'

func test():
	print('not ok')
