import UIKit

class TabBarView: UITabBarController, UITabBarControllerDelegate {
    
    // Свойство для хранения ссылки на круглый UIView
    private var circleView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
        
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)

        
        self.delegate = self
        
        // Добавляем круглый фон к выбранному айтему таббара при загрузке представления
        if let selectedTab = tabBar.subviews.first as? UIControl {
            let circleView = UIView(frame: CGRect(x: 13, y: -15, width: 68, height: 68))
            circleView.backgroundColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
            circleView.layer.cornerRadius = circleView.frame.width / 2
            selectedTab.addSubview(circleView)
            
            // Сохраняем ссылку на круглый UIView
            self.circleView = circleView
        }
    }
    
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        // Удаляем старый круг, если он есть
        circleView?.removeFromSuperview()
        
        // Получаем индекс выбранного элемента таббара
        let selectedIndex = tabBarController.selectedIndex
        
        // Добавляем круг в выбранный элемент таббара
        if let selectedTab = tabBar.subviews[selectedIndex + 1] as? UIControl {
            let circleView = UIView(frame: CGRect(x: 13, y: -15, width: 68, height: 68))
            circleView.backgroundColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
            circleView.layer.cornerRadius = circleView.frame.width / 2
            selectedTab.addSubview(circleView)
            
            // Сохраняем ссылку на круглый UIView
            self.circleView = circleView
        }
    }
    
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
