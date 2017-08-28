var animalArray: [String] = ["cat", "dog", "lion", "tiger"]
animalArray[0]

animalArray.count

// 增加
animalArray.append("rabbit")

// 插入
animalArray.insert("cow", at: 2)

// 删除
animalArray.remove(at: 0)
print(animalArray)

// 反转
animalArray.reverse()
print(animalArray)

var anotherAnimalArray = ["sheep"]
animalArray += anotherAnimalArray
print(animalArray)

animalArray[1] = "bird"
print(animalArray)

//var numbverBag: [Int] = []
var numbverBag: [Int] = [Int]()
