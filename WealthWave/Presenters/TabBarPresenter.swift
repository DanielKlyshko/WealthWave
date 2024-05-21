import UIKit

protocol TabBarPresenterProtocol: AnyObject {
    func buildTabBar()
}

final class TabBarPresenter {
    unowned let view: TabBarView
    
    init(view: TabBarView) {
        self.view = view
        self.buildTabBar()
    }
}

extension TabBarPresenter: TabBarPresenterProtocol {
    
    func buildTabBar() {
        let homeScreen = Builder.createHomeScreenViewController()
        homeScreen.tabBarItem.image = UIImage(named: "homeIcon")
        let cabinetPage = Builder.createCabinetViewController()
        cabinetPage.tabBarItem.image = UIImage(named: "userIcon")
         
        self.view.setControllers(controllers: [homeScreen, cabinetPage])
    }
    
}

