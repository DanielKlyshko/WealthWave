import UIKit

final class Builder {
    
    static func createSignInViewController() -> UIViewController {
        let signInView = SignInView()
        let signInPresenter = SignInPresenter(view: signInView)
        
        signInView.presenter = signInPresenter
        return signInView
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
        let homeSreenPresenter = HomeScreenPresenter(view: homeScreenView)
        
        homeScreenView.presenter = homeSreenPresenter
        return UINavigationController(rootViewController: homeScreenView)
    }
    
    static func createIncomAddingViewController(delegate: TransactionsUpdateDelegate) -> UIViewController {
        let incomAddingView = IncomAddingView()
        let incomAddingPresenter = IncomAddingPresenter(view: incomAddingView)
        
        incomAddingView.presenter = incomAddingPresenter
        incomAddingPresenter.updateDelegate = delegate
        return incomAddingView
    }
    
    static func createOutcomAddingViewController(delegate: TransactionsUpdateDelegate) -> UIViewController {
        let outcomAddingView = OutcomAddingView()
        let outcomAddingPresenter = OutcomAddingPresenter(view: outcomAddingView)
        
        outcomAddingView.presenter = outcomAddingPresenter
        outcomAddingPresenter.updateDelegate = delegate
        return outcomAddingView
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
