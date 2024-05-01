import UIKit

protocol HomeScreenPresenterProtocol: AnyObject {

}

class HomeScreePresenter {
    unowned let view: HomeScreenView
    
    init(view: HomeScreenView) {
        self.view = view
    }
}
