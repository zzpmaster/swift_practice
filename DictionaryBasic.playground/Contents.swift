var fruitDict: [String: String] = ["red": "apple", "yello": "banana", "green": "mango"]

fruitDict["red"]

fruitDict["brown"]
fruitDict.updateValue("apple", forKey: "green")

fruitDict["red"] = "tomato"
print(fruitDict)

fruitDict["black"] = "pomelo"   // 新增元素1
fruitDict.updateValue("orange", forKey: "blue") // 新增元素2
print(fruitDict)


// 删除1
fruitDict["black"] = nil
print(fruitDict)

// 删除2
fruitDict.removeValue(forKey: "blue")
print(fruitDict)

let appleFruit = fruitDict["red"]   // 类型是 String? （optional类型）, 这个值可能有，可能没有。 当使用key去字典中取值的时候，很有可能没有这个key。
