//
//  CreateAccountController.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/21/25.
//
import UIKit

class CreateAccountController: UIViewController {
    var firstNameTextField: UITextField!
    var lastNameTextField: UITextField!
    var emailTextField: UITextField!
    var passwordTextField: UITextField!
    var confirmPasswordTextField: UITextField!
    var createAccountButton: UIButton!
    var emailLabel: UILabel!
    var passwordLabel: UILabel!
    var firstNameLabel: UILabel!
    var lastNameLabel: UILabel!
    var confirmPasswordLabel: UILabel!
    var createAccountLabel: UILabel!
    var createAccountDetailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        setupUI()
    }
    func setupUI() {
        createAccountLabel = UILabel()
        createAccountLabel.text = "Create Account"
        createAccountLabel.textAlignment = .left
        createAccountLabel.translatesAutoresizingMaskIntoConstraints = false
        createAccountLabel.textColor = .red
        createAccountLabel.numberOfLines = 0
        createAccountLabel.lineBreakMode = .byWordWrapping
        createAccountLabel.font = UIFont.boldSystemFont(ofSize: 33)
        view.addSubview(createAccountLabel)
        
        createAccountDetailLabel = UILabel()
        createAccountDetailLabel.text = "Please enter your details to continue"
        createAccountDetailLabel.textAlignment = .left
        createAccountDetailLabel.translatesAutoresizingMaskIntoConstraints = false
        createAccountDetailLabel.textColor = .white
        createAccountDetailLabel.numberOfLines = 0
        createAccountDetailLabel.lineBreakMode = .byWordWrapping
        createAccountDetailLabel.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(createAccountDetailLabel)
        
        firstNameLabel = UILabel()
        firstNameLabel.text = "Login To Your Account"
        firstNameLabel.textAlignment = .left
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameLabel.textColor = .white
        firstNameLabel.numberOfLines = 0
        firstNameLabel.lineBreakMode = .byWordWrapping
        firstNameLabel.font = UIFont.boldSystemFont(ofSize: 15)
        view.addSubview(firstNameLabel)

        
        firstNameTextField = UITextField()
        firstNameTextField.placeholder = "Enter Your First Name"
        firstNameTextField.textAlignment = .left
        firstNameTextField.borderStyle = .roundedRect
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstNameTextField)
        
        
        lastNameLabel = UILabel()
        firstNameLabel.text = "Enter Your Last Name"
        firstNameLabel.textAlignment = .left
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameLabel.textColor = .red
        firstNameLabel.numberOfLines = 0
        firstNameLabel.lineBreakMode = .byWordWrapping
        firstNameLabel.font = UIFont.boldSystemFont(ofSize: 15)
        view.addSubview(firstNameLabel)
        
        lastNameTextField = UITextField()
        lastNameTextField.placeholder = "Enter Your Last Name"
        lastNameTextField.textAlignment = .left
        lastNameTextField.borderStyle = .roundedRect
        lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(lastNameTextField)
        
        
    }
}
