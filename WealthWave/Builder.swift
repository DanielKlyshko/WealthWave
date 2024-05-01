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
        return signInView
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
        return homeScreenView
    }
    
    static func createTransactionsListViewController() -> UIViewController {
        let transactionsListView = TransactionsListView()
        let transactionsListPresenter = TransactionsListPresenter(view: transactionsListView)
        
        transactionsListView.presenter = transactionsListPresenter
        return transactionsListView
    }
}
