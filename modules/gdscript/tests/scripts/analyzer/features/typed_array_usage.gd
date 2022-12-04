# https://github.com/godotengine/godot/pull/69248

class A: pass
class B extends A: pass

func print_i(array: Array[int]) -> void: print(array)
func print_a(array: Array[A]) -> void: print(array.size())
func print_b(array: Array[B]) -> void: print(array.size())

func print_def(array: Array[int] = [5]) -> void: print(array)

const cm: Array[int] = [4]

func test():
	print_a([A.new()]) # 1
	print_b([B.new()]) # 1
	print_a([B.new()]) # 1

	var a: Array[A] = [B.new()]
	var b: Array[B] = [B.new()]
	print_a(a) # 1
	# print_b(a)
	a = b
	a.push_back(A.new())
	a.push_back(B.new())
	print_a(a) # 3
	print_b(b) # 1

	const cl: Array[int] = [0]
	cl.push_back(1)
	# cl.push_back('2')
	cl[0] = 3
	var vl := cl[0]
	print_i(cl) # [3, 1]
	print(typeof(vl), vl) # 23
	print_i(cm) # [4]

	print_def() # [5]

	var first: Array[A] = []
	var second: Array[A] = first
	var value: Variant = A.new()
	second = [value]
	print(first.size()) # 0
	print(second.size()) # 1

	var ints: Array[int] = []
	var floats: Array[float] = [0.3, 1.2, 2.5, 3.6]
	ints = floats
	print(ints) # [0, 1, 2, 3]

	var objects: Array[A] = []
	var variants: Array = [null, A.new()]
	objects = variants
	print(objects.size()) # 2
