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
        
        let signUpUserRequest = SignUpUserRequest(
            username: view.nicknameTextField.text ?? "",
            email: view.loginTextField.text ?? "",
            password: view.passwordTextField.text ?? ""
        )
        
        if !Validator.isValidUsername(for: signUpUserRequest.username) {
            AlertManager.showInvalidUsernameAlert(on: view)
            return
        }
        
        if !Validator.isValidEmail(for: signUpUserRequest.email) {
            AlertManager.showInvalidEmailAlert(on: view)
            return
        }
        
        if !Validator.isValidPassword(for: signUpUserRequest.password) {
            AlertManager.showInvalidPasswordAlert(on: view)
            return
        }
        
        
        // TODO
        AuthService.shared.signUpUser(with: signUpUserRequest) { [weak view] wasRegistered, error in
            
            guard let self = view else {return}
            
            if let error = error {
                AlertManager.showSignUpErrorAlert(on: self, with: error)
                return
            }
            
            if wasRegistered {
                if let sceneDelegate = self.view.window?.windowScene?.delegate as? SceneDelegate {
                    sceneDelegate.checkAuthetification()
                } else {
                    AlertManager.showSignUpErrorAlert(on: self)
                }
            }
            
       }
    }
}

    

