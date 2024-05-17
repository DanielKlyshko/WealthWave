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
        let signInUserRequest = SignInUserRequest(
            email: view.loginTextField.text ?? "",
            password: view.passwordTextField.text  ?? ""
        )
        
        if !Validator.isValidEmail(for: signInUserRequest.email) {
            AlertManager.showInvalidEmailAlert(on: view)
            return
        }
        
        if !Validator.isValidPassword(for: signInUserRequest.password) {
            AlertManager.showInvalidPasswordAlert(on: view)
            return
        }
        
        AuthService.shared.signInUser(with: signInUserRequest) { [weak view] error in
            
            guard let self = view else {return}
            
            if let error = error {
                AlertManager.showSignInErrorAlert(on: self, with: error)
                return
            }
            
            if let sceneDelegate = self.view.window?.windowScene?.delegate as? SceneDelegate {
                sceneDelegate.checkAuthetification()
            } else {
                AlertManager.showSignUpErrorAlert(on: self)
            }
        }
        
    }
    
    
    func signUpButtonTapped() {
        self.view.present(UINavigationController(rootViewController: Builder.createSignUpViewController()), animated: true, completion: nil)
    }
    
}

