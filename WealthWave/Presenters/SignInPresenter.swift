import UIKit
import FirebaseAuth

protocol SignInPresenterProtocol: AnyObject {
    func signInButtonTapped()
    func signUpButtonTapped()
}

class SignInPresenter {
    unowned let view: SignInView
    
    init(view: SignInView) {
        self.view = view
    }
}

extension SignInPresenter: SignInPresenterProtocol {
    func signInButtonTapped() {
        let email = view.loginTextField.text ?? ""
        let password = view.passwordTextField.text ?? ""
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let result = result {
                print(result)
            } else {
                print(error)
            }
        }
    }
    
    
    func signUpButtonTapped() {
        let email = view.loginTextField.text ?? ""
        let password = view.passwordTextField.text ?? ""
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let result = result {
                print(result)
            } else {
                print(error)
            }
        }
    }
    
}

