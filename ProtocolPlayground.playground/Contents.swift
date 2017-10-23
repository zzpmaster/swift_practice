// 定义一个协议
protocol SoyMilkGetable {
    func giveMeSoyMilk()
}

class Brunch: SoyMilkGetable {
    func giveMeSoyMilk() {
        print("Soy Milk")
    }
}

let brunch = Brunch()
brunch.giveMeSoyMilk()

protocol MoneyTransferProtocol {
    func giveMoney()
}

class RichMan: MoneyTransferProtocol {
    func giveMoney() {
        print("Give you $100")
    }
}

class NormalMan: MoneyTransferProtocol {
    func giveMoney() {
        print("Give you $10")
    }
}

class PoorGuy {
    // 可以声明协议类型
    var helper: MoneyTransferProtocol?
    func needMoney() {
        helper?.giveMoney()
    }
}

let poorGuy = PoorGuy()
//poorGuy.helper = RichMan()
poorGuy.helper = NormalMan()
poorGuy.needMoney()


/**
 例子2
 可以代替继承
 */
protocol MankindType {
    var health: Int { get set }
}

protocol Attackable {
    func attack(target: Hurtable)   // 协议可以当做参数
}

protocol Hurtable: MankindType {
    func getHurt()
}

class Man: MankindType, Hurtable {
    var health: Int
    init() {
        health = 10
    }
    
    func getHurt() {
        health -= 10
    }
}

class Batman: MankindType, Attackable, Hurtable {
    var health: Int
    init() {
        health = 1000
    }
    
    func getHurt() {
        health -= 5
    }
    
    func attack(target: Hurtable) {
        target.getHurt()    // 可以调用自己的getHurt，以为已经实现了Hurtable的协议
    }
}

class Superman: MankindType, Attackable, Hurtable {
    var health: Int
    init() {
        health = 10000
    }
    func getHurt() {
        health -= 1
    }
    func attack(target: Hurtable) {
        target.getHurt() // 可以调用自己的getHurt，以为已经实现了Hurtable的协议
    }
}














