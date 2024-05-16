import UIKit

class AlertManager {
    
    private static func showBasicAlert(on vc: UIViewController, with title: String,  message: String?) {
        
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            vc.present(alert, animated: true)
        }
        
    }
    
}

extension AlertManager {
    
    public static func showInvalidEmailAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Invalid Email", message: "Please, enter valid email.")
    }
    
    public static func showInvalidPasswordAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Invalid Password", message: "Please, enter valid password.")
    }
    
    public static func showInvalidUsernameAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Invalid Username", message: "Please, enter valid username.")
    }
 
    public static func showSignUpErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Unknown Sign Up error", message: nil)
    }
    
    public static func showSignUpErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Sign Up error", message: "\(error.localizedDescription)")
    }
    
    public static func showSignInErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Unknown Sign In error", message: nil)
    }
    
    public static func showSignInErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Sign In error", message: "\(error.localizedDescription)")
    }
    
    public static func showLogOutErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Log Out error", message: "\(error.localizedDescription)")
    }
    
    public static func showFetchingUserErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Fetching User error", message: "\(error.localizedDescription)")
    }
    
    public static func showUnknownFetchingUserErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Fetching User unknown error", message: nil)
    }
}
