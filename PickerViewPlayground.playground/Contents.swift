protocol PickerViewDataSource {
    func howManyComponent()
}

class ViewController: PickerViewDataSource {
    func howManyComponent() {
        print("2")
    }
}

class PickerView {
    var dataSource: PickerViewDataSource?
    func howManyComponentIHave() {
        dataSource?.howManyComponent()
    }
}

let pickerView = PickerView()
let viewController = ViewController()

pickerView.dataSource = viewController

pickerView.howManyComponentIHave()
