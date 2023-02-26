var prop_0 = 368:
	get = get_prop_0, set = set_prop_0
func get_prop_0() -> String: return str(prop_0)
func set_prop_0(value: String): prop_0 = value


var prop_1: String:
	set = set_prop_1
func set_prop_1(value: StringName) -> void: prop_1 = value


func test():
	assert(typeof(prop_0) == TYPE_STRING)
	assert(prop_0 == '368')
	prop_0 = '408'
	assert(typeof(prop_0) == TYPE_STRING)
	assert(prop_0 == '408')
	prop_0 = &'741'
	assert(typeof(prop_0) == TYPE_STRING)
	assert(prop_0 == '741')

	assert(typeof(prop_1) == TYPE_STRING)
	assert(prop_1 == '')
	prop_1 = '753'
	assert(typeof(prop_1) == TYPE_STRING)
	assert(prop_1 == '753')
	prop_1 = &'151'
	assert(typeof(prop_1) == TYPE_STRING)
	assert(prop_1 == '151')

	print('ok')
