
import UIKit

class LoginController: UIViewController {
    var userNameTextField: UITextField!
    var passwordTextField: UITextField!
    var loginButton: UIButton!
    var forgotPasswordButton: UIButton!
    var loginLabel: UILabel!
    var loginLabelDescription: UILabel!
    var emailLabel: UILabel!
    var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        setupUI()
    }
    
    func setupUI() {
        loginLabel = UILabel()
        loginLabel.text = "Login To Your Account"
        loginLabel.textAlignment = .left
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.textColor = .red
        loginLabel.numberOfLines = 0
        loginLabel.lineBreakMode = .byWordWrapping
        loginLabel.font = UIFont.boldSystemFont(ofSize: 33)
        view.addSubview(loginLabel)
        
        loginLabelDescription = UILabel()
        loginLabelDescription.text = "We are glad to see you again. Login to continue"
        loginLabelDescription.textAlignment = .left
        loginLabelDescription.translatesAutoresizingMaskIntoConstraints = false
        loginLabelDescription.textColor = .white
        loginLabelDescription.numberOfLines = 0
        loginLabelDescription.lineBreakMode = .byWordWrapping
        loginLabelDescription.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(loginLabelDescription)
        
        emailLabel = UILabel()
        emailLabel.text = "E-Mail"
        emailLabel.textAlignment = .left
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.textColor = .white
        emailLabel.numberOfLines = 0
        emailLabel.lineBreakMode = .byWordWrapping
        emailLabel.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(emailLabel)
        
        passwordLabel = UILabel()
        passwordLabel.text = "Password"
        passwordLabel.textAlignment = .left
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.textColor = .white
        passwordLabel.numberOfLines = 0
        passwordLabel.lineBreakMode = .byWordWrapping
        passwordLabel.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(passwordLabel)
        
        // Username textfield
        userNameTextField = UITextField()
        userNameTextField.placeholder = "Enter Username"
        userNameTextField.textAlignment = .left
        userNameTextField.borderStyle = .roundedRect
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userNameTextField)
        
        //Password textfiled
        passwordTextField = UITextField()
        passwordTextField.placeholder = "Enter Password"
        passwordTextField.textAlignment = .left
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        
        // create the button
        loginButton = UIButton(type: .system)
        // title
        loginButton.setTitle("Login", for: .normal)
        // background color
        loginButton.backgroundColor = .systemRed
        // textcolor
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        //add the tap action
        loginButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        // add button to the view
        view.addSubview(loginButton)
        
        
        forgotPasswordButton = UIButton(type: .system)
        forgotPasswordButton.setTitle("Forgot Password?", for: .normal)
        forgotPasswordButton.setTitleColor(UIColor.blue, for: .normal)
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        
    
        view.addSubview(forgotPasswordButton)
        
        
        // set constraints (center in the view)
        NSLayoutConstraint.activate([
            
            // username textfield constraint
            userNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userNameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60), // x is positive --->> downward , -ve --->>> upward
            userNameTextField.widthAnchor.constraint(equalToConstant: 250),
            userNameTextField.heightAnchor.constraint(equalToConstant: 40),
            
            
            loginLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -300), // x is positive --->> downward , -ve --->>> upward
            loginLabel.widthAnchor.constraint(equalToConstant: 350),
            loginLabel.heightAnchor.constraint(equalToConstant: 80),
            
            emailLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: 50),
            emailLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100), // x is positive --->> downward , -ve --->>> upward
            emailLabel.widthAnchor.constraint(equalToConstant: 350),
            emailLabel.heightAnchor.constraint(equalToConstant: 80),
            
            passwordLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 50),
            passwordLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20), // x is positive --->> downward , -ve --->>> upward
            passwordLabel.widthAnchor.constraint(equalToConstant: 350),
            passwordLabel.heightAnchor.constraint(equalToConstant: 80),
             
           
            loginLabelDescription.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200), // x is positive --->> downward , -ve --->>> upward
            loginLabelDescription.widthAnchor.constraint(equalToConstant: 250),
            loginLabelDescription.heightAnchor.constraint(equalToConstant: 40),
                        
            //password textfield constraint
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20),
            passwordTextField.widthAnchor.constraint(equalTo: userNameTextField.widthAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            // Login button constraint added
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),

            loginButton.widthAnchor.constraint(equalToConstant: 250),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            
            
            forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 60),
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: -10),

            forgotPasswordButton.widthAnchor.constraint(equalToConstant: 250),
            forgotPasswordButton.heightAnchor.constraint(equalToConstant: 40)
        ])
            
    }
    
    // Button tap action
    @objc func buttonTapped() {
        guard let name = userNameTextField.text, name.count > 0, let password = passwordTextField.text, password.count > 0 else {
            return
        }
    }
}
