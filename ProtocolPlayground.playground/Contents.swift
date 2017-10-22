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





