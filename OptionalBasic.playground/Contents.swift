var x: Int = 2
/*
 如果在声明x的时候不想放任何值（nil）
 var x: Int = nil ,  这个写法是错误的，因为x的类型为Int是不可以放nil的。
 所以swift推出了optional的类型
 */
var y: Int? = nil

var words: String = "I Love you"
var word: String? = nil

var isTheLighOn: Bool? = nil
/*
 所以上面的类型，就不是int, string, bool了。称为optional int, optional string, optional bool
 */

var z: Int? = 4
//print(z)    //打印出的z是 Optional(3)
// 如果将 optional z + 3 程序会报错，有3中处理方法
// 1. z! + 3        不推荐，不推荐的原因是使用的!来处理，强行转义
// 2. 使用前先判断     不推荐，不推荐的原因是使用的!来处理
//if z != nil {
//    z! + 3
//}
// 3. optional binding 推荐
if let myNumber = z {
    myNumber + 1
}

// 感叹号有2种情况
// 1. 解包
var luckyNumber: Int? = 8
luckyNumber! + 2    //解包
// 2. 标识类型是Optional Int
var luckyNumber1: Int! = 8      //!的意思：不用去检测到底有没有值，加上！后表示告诉编译器这个变量总是有值的
print(luckyNumber1)

var highScore: Int
var loadedScore: Int? = 1000
if let okScore = loadedScore {
    highScore = okScore
} else {
    highScore = 0
}


highScore = loadedScore == nil ? 0 : loadedScore!
highScore = loadedScore ?? 0    //如果loadedScore = nil 就为0









