import UIKit

protocol CabinetViewProtocol: AnyObject {

}

final class CabinetView: UIViewController {
    
    var presenter: CabinetPresenter!
    private var userUsernameLabel = UILabel()
    private var logOutButton = UIButton()
    private var logOutIconBGCircleView = UIView()
    private var logOutIconImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(userUsernameLabel)
        view.addSubview(logOutButton)
        logOutButton.addSubview(logOutIconBGCircleView)
        logOutIconBGCircleView.addSubview(logOutIconImage)
        
        constraintsSettings()
        uiSettings()
    }
    
    private func constraintsSettings() {
        logOutButton.translatesAutoresizingMaskIntoConstraints = false
        logOutButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        logOutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        logOutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        logOutButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        logOutIconBGCircleView.translatesAutoresizingMaskIntoConstraints = false
        logOutIconBGCircleView.widthAnchor.constraint(equalToConstant: 36).isActive = true
        logOutIconBGCircleView.heightAnchor.constraint(equalToConstant: 36).isActive = true
        logOutIconBGCircleView.leadingAnchor.constraint(equalTo: logOutButton.leadingAnchor, constant: 14).isActive = true
        logOutIconBGCircleView.centerYAnchor.constraint(equalTo: logOutButton.centerYAnchor).isActive = true
        
        logOutIconImage.translatesAutoresizingMaskIntoConstraints = false
        logOutIconImage.centerXAnchor.constraint(equalTo: logOutIconBGCircleView.centerXAnchor).isActive = true
        logOutIconImage.centerYAnchor.constraint(equalTo: logOutIconBGCircleView.centerYAnchor).isActive = true
        
    }
    
    private func uiSettings() {
        view.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        
        logOutButton.backgroundColor = .white
        logOutButton.layer.cornerRadius = 5
        logOutButton.setTitle("Log out", for: .normal)
        logOutButton.setTitleColor(.black, for: .normal)
        logOutButton.titleLabel?.font = UIFont(name: "Montserrat-SemiBold", size: 14)
        var buttonConfig = UIButton.Configuration.plain()
        buttonConfig.titlePadding = 20
        logOutButton.configuration = buttonConfig
        
        logOutIconBGCircleView.backgroundColor = .systemRed
        logOutIconBGCircleView.layer.cornerRadius = 18
        
        logOutIconImage.image = UIImage(named: "mailIcon")
    }
    
}

extension CabinetView: CabinetViewProtocol {
      
}
