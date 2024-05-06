import UIKit

protocol BuilderProtocol {
    static func createTabBarController() -> UIViewController
    static func createHomeScreenViewController() -> UIViewController
    static func createTransactionsListViewController() -> UIViewController
}

class Builder: BuilderProtocol {
    
    static func createSignInViewController() -> UIViewController {
        let signInView = SignInView()
        let signInPresenter = SignInPresenter(view: signInView)
        
        signInView.presenter = signInPresenter
        return UINavigationController(rootViewController: signInView)
    }
    
    static func createSignUpViewController() -> UIViewController {
        let signUpView = SignUpView()
        let signUpPresenter = SignUpPresenter(view: signUpView)
        
        signUpView.presenter = signUpPresenter
        return signUpView
    }
    
    static func createTabBarController() -> UIViewController {
        let tabBarView = TabBarView()
        let tabBarPresenter = TabBarPresenter(view: tabBarView)
        
        tabBarView.presenter = tabBarPresenter
        return tabBarView
    }
    
    static func createHomeScreenViewController() -> UIViewController {
        let homeScreenView = HomeScreenView()
        let homeSreenPresenter = HomeScreePresenter(view: homeScreenView)
        
        homeScreenView.presenter = homeSreenPresenter
        return UINavigationController(rootViewController: homeScreenView)
    }
    
    static func createIncomOutcomAddingViewController() -> UIViewController {
        let incomOutcomAddingView = IncomOutcomAddingView()
        let incomOutcomAddingPresenter = IncomOutcomAddingPresenter(view: incomOutcomAddingView)
        
        incomOutcomAddingView.presenter = incomOutcomAddingPresenter
        return incomOutcomAddingView
    }
    
    static func createTransactionsListViewController() -> UIViewController {
        let transactionsListView = TransactionsListView()
        let transactionsListPresenter = TransactionsListPresenter(view: transactionsListView)
        
        transactionsListView.presenter = transactionsListPresenter
        return transactionsListView
    }
    
    static func createCabinetViewController() -> UIViewController {
        let cabinetView = CabinetView()
        let cabinetPresenter = CabinetPresenter(view: cabinetView)
        
        cabinetView.presenter = cabinetPresenter
        return cabinetView
    }
}
