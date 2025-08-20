//
//  LoginViewController.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/15/25.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var UserTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginAction(_ sender: Any) {
        print("buton Clicked!")
        print("username: \(UserTextField.text ?? "")")
        print("password: \(PasswordTextField.text ?? "")")
        
    }
    
    @IBAction func forgetPasswordAction(_ sender: Any) {
        navigateToNextScreen()
    }
    func loginUsername(email: String?) -> Bool{
        guard let email = email, email.contains("@") else {
                   print("Email is invlaid")
                   return false
               }
               return true
           }
    func loginPassword(password: String?) -> Bool{
        guard let password = password, password.count > 6 else {
                  print("Password is invalid")
                  return false
              }
              return true
          }
    func navigateToNextScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as? ForgotPasswordViewController{
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


