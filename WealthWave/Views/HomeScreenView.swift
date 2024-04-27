import UIKit

protocol HomeScreenViewProtocol: AnyObject {
    
}

class HomeScreenView: UIViewController {
    
    var presenter: HomeScreePresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}

extension HomeScreenView: HomeScreenViewProtocol {
    
}
