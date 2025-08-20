//
//  ForgotPasswordViewController.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/15/25.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var EmailAction: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SendOTPAction(_ sender: Any) {
        print("OTP sent to your email")
        navigateToNextScreen()
    }
    func navigateToNextScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "OTPVerificationViewController") as? OTPVerificationViewController{
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
