class Lego {
    var color: String = "red"
    var size: Int = 4
    
    func connect() {
        print("connent with another block")
    }
}

let oneBlock: Lego = Lego()
oneBlock.color = "yello"
oneBlock.connect()

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
        // 可以在init中调用class中的方法，必须要写在属性的后面，反之会报错
        sleep()
    }
    init(name: String) {
        self.name = name
        age = 2
    }
}

let babyNumberOne: Baby = Baby()

let babyNumberTwo: Baby = Baby()
babyNumberTwo.name = "Nancy"
babyNumberTwo.sleep()


let babyNumberThree: Baby = Baby(name: "David")
babyNumberThree.introduceSelf()

