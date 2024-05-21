import UIKit

protocol CabinetPresenterProtocol: AnyObject {
    func logOutButtonTapped()
    func setUserUsername()
}

final class CabinetPresenter {
    unowned let view: CabinetView
    
    init(view: CabinetView) {
        self.view = view
    }
}

extension CabinetPresenter: CabinetPresenterProtocol {
    func setUserUsername() {
        AuthService.shared.fetchUser { [weak self] user, error in
            guard let self = self else {return}
            
            if let error = error {
                AlertManager.showFetchingUserErrorAlert(on: view, with: error)
            }
            
            if let user = user {
                view.userUsernameLabel.text = "\(user.username)"
            }
        }
    }
    
    func logOutButtonTapped() {
        AuthService.shared.logOut { [weak view] error in
            guard let self = view else {return}
            if let error = error {
                AlertManager.showLogOutErrorAlert(on: self, with: error)
                return
            }
            if let sceneDelegate = self.view.window?.windowScene?.delegate as? SceneDelegate {
                sceneDelegate.checkAuthetification()
            }
        }
    }
    
}

