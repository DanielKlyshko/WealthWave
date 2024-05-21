import UIKit

protocol SignUpViewProtocol: AnyObject {

}

final class SignUpView: UIViewController {
    
    var presenter: SignUpPresenter!
    
    private var logoImage = UIImageView()
    private var signInHeaderLabel = UILabel()
    
    var nicknameTextField = UITextField()
    private var nicknameIconBGCircleView = UIView()
    private var nicknameIconImage = UIImageView()
    
    var loginTextField = UITextField()
    private var loginIconBGCircleView = UIView()
    private var loginIconImage = UIImageView()
    
    var passwordTextField = UITextField()
    private var passwordIconBGCircleView = UIView()
    private var passwordIconImage = UIImageView()
    
    private var signUpButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(logoImage)
        view.addSubview(signInHeaderLabel)
        
        view.addSubview(nicknameTextField)
        nicknameTextField.addSubview(nicknameIconBGCircleView)
        nicknameIconBGCircleView.addSubview(nicknameIconImage)
        
        view.addSubview(loginTextField)
        loginTextField.addSubview(loginIconBGCircleView)
        loginIconBGCircleView.addSubview(loginIconImage)
        
        view.addSubview(passwordTextField)
        passwordTextField.addSubview(passwordIconBGCircleView)
        passwordIconBGCircleView.addSubview(passwordIconImage)
        
        view.addSubview(signUpButton)
        
        constraintsSetting()
        uiSettings()

    }
    
    private func constraintsSetting() {
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 124).isActive = true
        logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 80).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 64).isActive = true
        
        signInHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
        signInHeaderLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 40).isActive = true
        signInHeaderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        
        nicknameTextField.translatesAutoresizingMaskIntoConstraints = false
        nicknameTextField.topAnchor.constraint(equalTo: signInHeaderLabel.bottomAnchor, constant: 20).isActive = true
        nicknameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        nicknameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        nicknameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        nicknameIconBGCircleView.translatesAutoresizingMaskIntoConstraints = false
        nicknameIconBGCircleView.widthAnchor.constraint(equalToConstant: 36).isActive = true
        nicknameIconBGCircleView.heightAnchor.constraint(equalToConstant: 36).isActive = true
        nicknameIconBGCircleView.leadingAnchor.constraint(equalTo: nicknameTextField.leadingAnchor, constant: 14).isActive = true
        nicknameIconBGCircleView.centerYAnchor.constraint(equalTo: nicknameTextField.centerYAnchor).isActive = true
        
        nicknameIconImage.translatesAutoresizingMaskIntoConstraints = false
        nicknameIconImage.centerXAnchor.constraint(equalTo: nicknameIconBGCircleView.centerXAnchor).isActive = true
        nicknameIconImage.centerYAnchor.constraint(equalTo: nicknameIconBGCircleView.centerYAnchor).isActive = true

        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.topAnchor.constraint(equalTo: nicknameTextField.bottomAnchor, constant: 10).isActive = true
        loginTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        loginTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        loginTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        loginIconBGCircleView.translatesAutoresizingMaskIntoConstraints = false
        loginIconBGCircleView.widthAnchor.constraint(equalToConstant: 36).isActive = true
        loginIconBGCircleView.heightAnchor.constraint(equalToConstant: 36).isActive = true
        loginIconBGCircleView.leadingAnchor.constraint(equalTo: loginTextField.leadingAnchor, constant: 14).isActive = true
        loginIconBGCircleView.centerYAnchor.constraint(equalTo: loginTextField.centerYAnchor).isActive = true
        
        loginIconImage.translatesAutoresizingMaskIntoConstraints = false
        loginIconImage.centerXAnchor.constraint(equalTo: loginIconBGCircleView.centerXAnchor).isActive = true
        loginIconImage.centerYAnchor.constraint(equalTo: loginIconBGCircleView.centerYAnchor).isActive = true
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 10).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        passwordIconBGCircleView.translatesAutoresizingMaskIntoConstraints = false
        passwordIconBGCircleView.widthAnchor.constraint(equalToConstant: 36).isActive = true
        passwordIconBGCircleView.heightAnchor.constraint(equalToConstant: 36).isActive = true
        passwordIconBGCircleView.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor, constant: 14).isActive = true
        passwordIconBGCircleView.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor).isActive = true
        
        passwordIconImage.translatesAutoresizingMaskIntoConstraints = false
        passwordIconImage.centerXAnchor.constraint(equalTo: passwordIconBGCircleView.centerXAnchor).isActive = true
        passwordIconImage.centerYAnchor.constraint(equalTo: passwordIconBGCircleView.centerYAnchor).isActive = true
        
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    private func uiSettings() {
        view.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        
        logoImage.image = UIImage(named: "Logo")
        logoImage.contentMode = .scaleAspectFill
        
        signInHeaderLabel.text = "Sign Up"
        signInHeaderLabel.font = UIFont(name: "Montserrat-ExtraBold", size: 24)
        signInHeaderLabel.textColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
        
        nicknameTextField.backgroundColor = .white
        nicknameTextField.layer.cornerRadius = 10
        nicknameTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
        nicknameTextField.leftViewMode = .always
        nicknameTextField.attributedPlaceholder = NSAttributedString(string: "Nickname", attributes: [.font: UIFont(name: "Montserrat-SemiBold", size: 14)!, .foregroundColor: UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)])
        
        nicknameIconBGCircleView.backgroundColor = UIColor(red: 66/255, green: 120/255, blue: 255/255, alpha: 1)
        nicknameIconBGCircleView.layer.cornerRadius = 18
        
        nicknameIconImage.image = UIImage(named: "userIcon2")

        
        loginTextField.backgroundColor = .white
        loginTextField.layer.cornerRadius = 10
        loginTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
        loginTextField.leftViewMode = .always
        loginTextField.attributedPlaceholder = NSAttributedString(string: "E-mail", attributes: [.font: UIFont(name: "Montserrat-SemiBold", size: 14)!, .foregroundColor: UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)])
        
        loginIconBGCircleView.backgroundColor = UIColor(red: 66/255, green: 120/255, blue: 255/255, alpha: 1)
        loginIconBGCircleView.layer.cornerRadius = 18
        
        loginIconImage.image = UIImage(named: "mailIcon")
        
        passwordTextField.backgroundColor = .white
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
        passwordTextField.leftViewMode = .always
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [.font: UIFont(name: "Montserrat-SemiBold", size: 14)!, .foregroundColor: UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)])
        passwordTextField.isSecureTextEntry = true
        
        passwordIconBGCircleView.backgroundColor = UIColor(red: 66/255, green: 120/255, blue: 255/255, alpha: 1)
        passwordIconBGCircleView.layer.cornerRadius = 18
        
        passwordIconImage.image = UIImage(named: "lockIcon")
        
        signUpButton.backgroundColor = UIColor(red: 66/255, green: 120/255, blue: 255/255, alpha: 1)
        signUpButton.layer.cornerRadius = 10
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.titleLabel?.font = UIFont(name: "Montserrat-SemiBold", size: 14)
        signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)

    }
    
    
    @objc private func signUpButtonTapped(_ sender: UIButton) {
        presenter.signUpButtonTapped()
    }
    
}

extension SignInView: SignUpViewProtocol {
    
    
}
