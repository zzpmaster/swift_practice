/**
 模拟picker view
 */
protocol PickerViewDataSource {
    func howManyComponent()
}

protocol PickerViewDelegate {
    func didSelect()
}

class ViewController: PickerViewDataSource, PickerViewDelegate {
    func howManyComponent() {
        print("2")
    }
    func didSelect() {
        print("10")
    }
}

class PickerView {
    var dataSource: PickerViewDataSource?
    var delegate: PickerViewDelegate?
    func howManyComponentIHave() {
        dataSource?.howManyComponent()
    }
    func afterSelect() {
        delegate?.didSelect()
    }
}

let pickerView = PickerView()
let viewController = ViewController()

pickerView.dataSource = viewController
pickerView.delegate = viewController

pickerView.howManyComponentIHave()
pickerView.afterSelect()



