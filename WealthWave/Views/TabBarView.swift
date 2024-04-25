import UIKit

class TabBarView: UITabBarController, UITabBarControllerDelegate {
    
    // MARK: - Properties
    
    var circleView = UIView()
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Generate Tab Bar
        
        generateTabBar()
        
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
        
        // MARK: Create Circle View
        
        circleView.backgroundColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
        circleView.frame = CGRect(x: 13, y: -15, width: 68, height: 68)
        circleView.layer.cornerRadius = circleView.frame.width / 2
        
        // MARK: Set Delegate
        
        self.delegate = self
        
        // MARK: Add Circle View to Selected Tab
        
        if let selectedTab = tabBar.subviews.first as? UIControl {
            selectedTab.addSubview(circleView)
        }
    }
    
    // MARK: - Delegate Methods
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        circleView.removeFromSuperview()
        let selectedIndex = tabBarController.selectedIndex
        if let selectedTab = tabBar.subviews[selectedIndex + 1] as? UIControl {
            selectedTab.addSubview(circleView)
        }
    }
    
    // MARK: - Private Methods
    
    private func generateTabBar() {
        viewControllers = [
            generateViews(
                viewController: HomeScreenView(),
                image: UIImage(named: "homeIcon")),
            generateViews(
                viewController: TransListView(),
                image: UIImage(named: "listIcon")),
            generateViews(
                viewController: HomeScreenView(),
                image: UIImage(named: "graphIcon")),
            generateViews(
                viewController: TransListView(),
                image: UIImage(named: "userIcon"))
        ]
    }
    
    private func generateViews(viewController: UIViewController, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.image = image
        return viewController
    }
}

