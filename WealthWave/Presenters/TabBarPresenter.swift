import UIKit

protocol TabBarPresenterProtocol: AnyObject {
    init(view: TabBarViewProtocol)
    func buildTabBar()
}

class TabBarPresenter {
    weak var view: TabBarViewProtocol?
    
    required init(view: TabBarViewProtocol) {
        self.view = view
        self.buildTabBar()
    }
}

extension TabBarPresenter: TabBarPresenterProtocol {
    
    func buildTabBar() {
        let homeScreen = Builder.createHomeScreenViewController()
        homeScreen.tabBarItem.image = UIImage(named: "homeIcon")
        let transactionsList = Builder.createTransactionsListViewController()
        transactionsList.tabBarItem.image = UIImage(named: "listIcon")
        let graphList = Builder.createTransactionsListViewController()
        graphList.tabBarItem.image = UIImage(named: "graphIcon")
        let userPage = Builder.createHomeScreenViewController()
        userPage.tabBarItem.image = UIImage(named: "userIcon")
         
        self.view?.setControllers(controllers: [homeScreen, transactionsList, graphList, userPage])
    }
}

