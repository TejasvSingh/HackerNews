//
//  SignUpViewController.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/15/25.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginAction(_ sender: Any) {
        print("Login Action button clicked")
        navigateToNextScreen()
    }
    
    @IBAction func CreateAcccountAction(_ sender: Any) {
        print("Create Acccount Action button clicked")
        navigateToNextScreenSignUp()
    }
    
    func navigateToNextScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController{
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    func navigateToNextScreenSignUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "CreateAccountViewController") as? CreateAccountViewController{
            self.navigationController?.pushViewController(vc, animated: true)
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

}
