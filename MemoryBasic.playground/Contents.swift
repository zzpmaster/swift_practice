class Person {
    var firstName = "peng"
    var lastName = "zhang"
    /*
     这样会报错， 因为如果没有Person()时，firstName、lastName是不存在的，所以fullName会报错
     如果写在init方法中，可以避免错误
     */
    //var fullName = firstName + lastName
    var fullName: String
    init() {
        fullName = firstName + lastName
        print("a person is being initialized")
    }
    // 如果没有引用, 回收内存
    deinit {
        print("a person is being deinitialized")
    }
}

// optional Person的类型
var person1: Person? = Person()
person1?.firstName

//person1 = nil
//var person2: Person? = Person()

var person3: Person? = person1
// 如果将person1设置为nil，还有一个persion3还会引用Person对象，所以不会调用deinit方法
person1 = nil
// 如果person3设置了nil，就没有对象引用Person对象，所以会调用deinit
person3 = nil



class Person1 {
    var heart: Heart?
    init() {
        print("a person1 is being initialized")
    }
    deinit {
        print("a person1 is being deinitialized")
    }
}

class Heart {
    // 弱类型
    weak var person: Person1?
    init() {
        print("a heart is being initialized")
    }
    deinit {
        print("a heart is being deinitialized")
    }
}

var aPersion: Person1? = Person1()
var aHeart: Heart? = Heart()

//aPersion = nil

aPersion?.heart = aHeart
aHeart?.person = aPersion

// 虽然2个对象都释放了，但是没用调用deinit的方法，原因是在他们的内部还有引用。 他们是相互引用的。
// 可以使用weak(弱引用)关键字，如果不设置默认的都是strong
//aPersion = nil
// aHeart?.person 此时aHeart中的person为空
aHeart = nil
// aPersion?.heart 此时Person1中的heart 不为空




