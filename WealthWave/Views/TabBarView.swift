import UIKit

protocol TabBarViewProtocol: AnyObject {
    func setControllers(controllers: [UIViewController])
}

class TabBarView: UITabBarController {
    
    var presenter: TabBarPresenter!
    var circleView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        tabBar.tintColor = UIColor(red: 66/255, green: 120/255, blue: 255/255, alpha: 1)
        tabBar.unselectedItemTintColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
        
        circleView.backgroundColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
        circleView.frame = CGRect(x: 13, y: -15, width: 68, height: 68)
        circleView.layer.cornerRadius = circleView.frame.width / 2
        
        //self.delegate = self
    }
}

extension TabBarView: TabBarViewProtocol /*, UITabBarControllerDelegate*/ {
    
    func setControllers(controllers: [UIViewController]) {
        setViewControllers(controllers, animated: true)
    }
    
    /*func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if let selectedIndex = tabBarController.viewControllers?.firstIndex(of: viewController) {
            print("Selected tab index: \(selectedIndex)")
        }
    }*/
}
