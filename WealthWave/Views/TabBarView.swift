import UIKit

protocol TabBarViewProtocol: AnyObject {
    func setControllers(controllers: [UIViewController])
}

final class TabBarView: UITabBarController {
    
    var presenter: TabBarPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = UIColor(red: 66/255, green: 120/255, blue: 255/255, alpha: 1)
        tabBar.unselectedItemTintColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
    }
}

extension TabBarView: TabBarViewProtocol {
    
    func setControllers(controllers: [UIViewController]) {
        setViewControllers(controllers, animated: true)
    }
    
}
