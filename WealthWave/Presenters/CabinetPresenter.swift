import UIKit

protocol CabinetPresenterProtocol: AnyObject {

}

class CabinetPresenter {
    unowned let view: CabinetView
    
    init(view: CabinetView) {
        self.view = view

    }
}

extension CabinetPresenter: CabinetPresenterProtocol {
    
}

