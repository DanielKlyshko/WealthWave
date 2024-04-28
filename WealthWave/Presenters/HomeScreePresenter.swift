import UIKit

protocol HomeScreenPresenterProtocol: AnyObject {
    init(view: HomeScreenViewProtocol)
}



class HomeScreePresenter {
    weak var view: HomeScreenViewProtocol?
    
    required init(view: HomeScreenViewProtocol) {
        self.view = view
    }
}
