var price = 230

if price == 80 {
    print("buy it")
}

if price > 150 {
    print("Are you crazy?")
} else if price < 50 {
    print("very cheap")
} else {
    print("buy it")
}

let myName = "zzp"
let time = 7
let isHungry = true

if (myName == "zzp" && time < 12) || isHungry {
    print("Hello, \(myName)")
} else {
    print("who are you?")
}
