//
//  CreateAccountViewController.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/15/25.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    
    @IBOutlet weak var FirstName: UITextField!
    
    @IBOutlet weak var LastName: UITextField!
    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var ConfirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CreateAccountAction(_ sender: Any) {
        print("FirstName: \(FirstName.text ?? "")")
        print("LastName: \(LastName.text ?? "")")
        print("Email: \(Email.text ?? "")")
        print("Password: \(Password.text ?? "")")
        print("CofirmPassword: \(ConfirmPassword.text ?? "")")
    }
    func createAccountEmail(email: String?) -> Bool{
        guard let email = email, email.contains("@") else {
            print("Email is invlaid")
            return false
        }
        return true
    }
    func createAccountPassword(password: String?) -> Bool {
        guard let pwd = password, pwd.count > 6 else {
            print("Password is invalid")
            return false
        }
        // remember the entered password
        return true
    }
    
    func createAccountConfirmPassword(password: String?, confirmPassword: String?) -> Bool {
        // both present
        guard let pwd = password, let confirm = confirmPassword else {
            print("Password is required")
            return false
        }
        // validate password rules first
        guard createAccountPassword(password: pwd) else {
            return false // createAccountPassword already prints why
        }
        // then compare
        guard pwd == confirm else {
            print("Passwords do not match")
            return false
        }
        return true
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
        
    }
}
