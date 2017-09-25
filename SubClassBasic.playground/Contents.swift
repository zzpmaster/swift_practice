class Baby {
    var name: String = "Tom"
    var age: Int
    func sleep() {
        print("sleep")
    }
    func introduceSelf() {
        print("My name is \(name)")
    }
    init() {
        age = 1
        print("a new baby is born")
    }
    init(name: String) {
        self.name = name
        age = 2
    }
}

class CuteBaby: Baby {
    var nickName: String = "QQ"
    func danceAndSing() {
        print("dance and sing")
    }
    
    // 使用override 覆写
    override func sleep() {
        print("sleep with cute smile")
        //调用父类方法
        super.sleep()
    }
    
    override func introduceSelf() {
        print("My name is \(nickName)")
    }
    
    // 重写父类的init方法
    override init(name: String) {
        // 1. 初始化子类别的属性
        // 2. super.init()
        // 3. 设定父类别的属性
        self.nickName = name
        super.init(name: name)
    }
}

let iAnSoQ = CuteBaby(name: "x1")
iAnSoQ.introduceSelf()
iAnSoQ.danceAndSing()

iAnSoQ.sleep()

iAnSoQ.name
