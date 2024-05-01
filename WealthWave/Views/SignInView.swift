import UIKit
import FirebaseAuth

protocol SignInViewProtocol: AnyObject {

}

final class SignInView: UIViewController {
    
    var presenter: SignInPresenter!
    
    private var logoImage = UIImageView()
    private var signInHeaderLabel = UILabel()
    
    var loginTextField = UITextField()
    private var loginIconBGCircleView = UIView()
    private var loginIconImage = UIImageView()
    
    var passwordTextField = UITextField()
    private var passwordIconBGCircleView = UIView()
    private var passwordIconImage = UIImageView()
    
    private var signInButton = UIButton()
    private var signUpLabel = UILabel()
    private var signUpButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(logoImage)
        view.addSubview(signInHeaderLabel)
        
        view.addSubview(loginTextField)
        loginTextField.addSubview(loginIconBGCircleView)
        loginIconBGCircleView.addSubview(loginIconImage)
        
        view.addSubview(passwordTextField)
        passwordTextField.addSubview(passwordIconBGCircleView)
        passwordIconBGCircleView.addSubview(passwordIconImage)
        
        view.addSubview(signInButton)
        view.addSubview(signUpLabel)
        view.addSubview(signUpButton)
        
        
        constraintsSetting()
        uiSettings()

    }
    
    private func constraintsSetting() {
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 164).isActive = true
        logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 80).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 64).isActive = true
        
        signInHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
        signInHeaderLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 40).isActive = true
        signInHeaderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.topAnchor.constraint(equalTo: signInHeaderLabel.bottomAnchor, constant: 20).isActive = true
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
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        signUpLabel.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 20).isActive = true
        signUpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -40).isActive = true
        
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.leadingAnchor.constraint(equalTo: signUpLabel.trailingAnchor, constant: 10).isActive = true
        signUpButton.centerYAnchor.constraint(equalTo: signUpLabel.centerYAnchor).isActive = true
    }
    
    private func uiSettings() {
        view.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        
        logoImage.image = UIImage(named: "Logo")
        logoImage.contentMode = .scaleAspectFill
        
        signInHeaderLabel.text = "Sign In"
        signInHeaderLabel.font = UIFont(name: "Montserrat-ExtraBold", size: 24)
        signInHeaderLabel.textColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
        
        loginTextField.backgroundColor = .white
        loginTextField.layer.cornerRadius = 10
        loginTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
        loginTextField.leftViewMode = .always
        loginTextField.attributedPlaceholder = NSAttributedString(string: "E-mail...", attributes: [.font: UIFont(name: "Montserrat-SemiBold", size: 14)!, .foregroundColor: UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)])
        
        loginIconBGCircleView.backgroundColor = UIColor(red: 66/255, green: 120/255, blue: 255/255, alpha: 1)
        loginIconBGCircleView.layer.cornerRadius = 18
        
        loginIconImage.image = UIImage(named: "mailIcon")
        
        passwordTextField.backgroundColor = .white
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
        passwordTextField.leftViewMode = .always
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password...", attributes: [.font: UIFont(name: "Montserrat-SemiBold", size: 14)!, .foregroundColor: UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)])
        passwordTextField.isSecureTextEntry = true
        
        passwordIconBGCircleView.backgroundColor = UIColor(red: 66/255, green: 120/255, blue: 255/255, alpha: 1)
        passwordIconBGCircleView.layer.cornerRadius = 18
        
        passwordIconImage.image = UIImage(named: "lockIcon")
        
        signInButton.backgroundColor = UIColor(red: 66/255, green: 120/255, blue: 255/255, alpha: 1)
        signInButton.layer.cornerRadius = 10
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.titleLabel?.font = UIFont(name: "Montserrat-SemiBold", size: 14)
        signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        
        signUpLabel.text = "Create a new account?"
        signUpLabel.font = UIFont(name: "Montserrat-Regular", size: 14)
        signUpLabel.textColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
        
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 14)
        signUpButton.setTitleColor(UIColor(red: 66/255, green: 120/255, blue: 255/255, alpha: 1), for: .normal)
        signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
    }
    
    @objc private func signInButtonTapped(_ sender: UIButton) {
        presenter.signInButtonTapped()
    }
    
    @objc private func signUpButtonTapped(_ sender: UIButton) {
        presenter.signUpButtonTapped()
    }
    
}

extension SignInView: SignInViewProtocol {
    
    
}
