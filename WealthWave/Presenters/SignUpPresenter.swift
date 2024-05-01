import UIKit
import FirebaseAuth

protocol SignUpPresenterProtocol: AnyObject {
    func signUpButtonTapped()
}

class SignUpPresenter {
    unowned let view: SignUpView
    
    init(view: SignUpView) {
        self.view = view
    }
}

extension SignUpPresenter: SignUpPresenterProtocol {
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
        UINavigationController(rootViewController: Builder.createTabBarController()).modalPresentationStyle = .fullScreen
        self.view.present(UINavigationController(rootViewController: Builder.createTabBarController()), animated: true, completion: nil)
    }
    
}

    

