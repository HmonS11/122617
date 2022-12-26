//

//  ViewController.swift

//  PickerViewEx1

//

//  Created by wizard on 2022/10/11.

//



import UIKit



class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    

    let bts = ["RM" , "진", "슈가", "제이홉", "지민", "뷔", "정국" ]

    let twice = ["사나", "나연", "쯔위", "미나", "지효", "채영", "다현", "정연", "모모"]

    

    @IBOutlet weak var picker: UIPickerView!

    @IBOutlet weak var label: UILabel!

    

    override func viewDidLoad() {

        super.viewDidLoad()

        picker.dataSource = self

        picker.delegate = self

    }

    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {

        return 2

    }

    

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

        if component == 0 {

            return bts.count

        } else {

            return twice.count

        }

    }

    

//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

//        if component == 0 {

//            return bts[row]

//        } else {

//            return twice[row]

//        }

//    }

    

    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {

        let label1 = UILabel()

        if component == 0 {

            label1.backgroundColor = .yellow

            label1.text = bts[row]

            label1.font = .systemFont(ofSize: 25, weight: .bold)

        } else {

            label1.backgroundColor = .cyan

            label1.text = twice[row]

            label1.font = .systemFont(ofSize: 20, weight: .medium)

        }

        return label1

    }

    

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        if component == 0 {

            label.text = bts[row]

        } else {

            label.text = twice[row]

        }
        
    }

}
