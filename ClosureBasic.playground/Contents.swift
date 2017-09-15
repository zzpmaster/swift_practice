// 没有名字的函数 闭包
// 1. 将func和函数名字去掉
// 2. 将参数跟返回值移动到括号中, 如果没有参数可以省略()
// 3. 加入in

// 没有参数，没有返回值
let helloClosure:() -> Void = {
    print("hello Everybody")
}
helloClosure()

// 有参数，没有返回值
let eatClosure: (String) -> () = {
    (foodName: String) in
    print("I want to have \(foodName)")
}
eatClosure("apple") // 没有参数名字

// 有参数，有返回值
// (Int, Int) -> Int 就是闭包的类型
let addClosure: (Int, Int) -> Int = {
    (number1: Int, number2: Int) -> Int in
    return number1 + number2
}
addClosure(3, 5)

// 闭包也有类型
var myLuckyNumber: Int = 7
var canWeDoThis: Bool = true

// 闭包可以当做参数
func calulate(number1: Int, number2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(number1, number2)
}
print(calulate(number1: 8, number2: 9, operation: addClosure))

// 闭包也可以当做返回值
func giveMeMultiply() -> (Int, Int) -> Int {
    return addClosure
}
let doMultiply = giveMeMultiply()
doMultiply(3, 6)



// 简写Closure步骤
// 1. 已经能够确认参数与返回值的类型，可以删除closure里面的参数与返回值的类型
//let shortClosure: (Int, Int) -> Int = {
//    (number1: Int, number2: Int) -> Int in
//    return number1 + number2
//}
//let shortClosure: (Int, Int) -> Int = {
//    (number1, number2) in
//    return number1 + number2
//}
// 2. 如果代码只有一行， 可以删除return
//let shortClosure: (Int, Int) -> Int = {
//    (number1, number2) in number1 + number2
//}
// 3. 用$0, $1, $2..等代替传进来的参数. 因为知道$0是第一个参数，所以可以删除number1
let shortClosure: (Int, Int) -> Int = { $0 + $1 }
shortClosure(4, 5)


var numberArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//let numberArrayYoString = numberArray.map({
//    (number: Int) -> String in
//    return "This is number \(number)"
//})
// 前三步的简写
//let numberArrayYoString = numberArray.map({ "This is number \($0)" })

// 4. 如果是最后一个参数，可以吧closure移后至参数小括号外
//let numberArrayYoString = numberArray.map(){ "This is number \($0)" }

// 5. 如果是唯一参数，可以省略小括号
let numberArrayYoString = numberArray.map { "This is number \($0)" }
numberArrayYoString

let evenNumbers = numberArray.filter{ $0 % 2 == 0 }
evenNumbers

let answer  = numberArray.filter { $0 > 5 }
answer












