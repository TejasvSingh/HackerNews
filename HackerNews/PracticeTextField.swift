//
//  PracticeTextField.swift
//  HackerNews
//
//  Created by Tejasv Singh on 9/2/25.
//

import UIKit
class PracticeTextField: UIViewController, UITextFieldDelegate{
    var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        
        setupUI()
        textField.delegate = self
    }
    func setupUI() {
        textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textField)
        NSLayoutConstraint.activate([
           textField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
           textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
           textField.widthAnchor.constraint(equalToConstant: 300),
           textField.heightAnchor.constraint(equalToConstant: 50)
       ])
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("Allow editing")
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("User started editing")
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("User finished editing")
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("User tapped return key")
        textField.resignFirstResponder()
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        let newText = (currentText as NSString).replacingCharacters(in: range, with: string)
        if(newText.count > 10){
            return false
        }
        print("User typed \(string)")
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
}
