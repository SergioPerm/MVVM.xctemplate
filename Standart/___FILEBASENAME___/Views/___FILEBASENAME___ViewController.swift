//___FILEHEADER___

import UIKit
import SnapKit

class ___FILEBASENAME___: UIViewController, ___VARIABLE_productName___ViewType {

    private let viewModel: ___VARIABLE_productName___ViewModelType

    var presentableControllerViewType: PresentableControllerViewType
    var router: RouterType?
    var persistentType: PersistentViewControllerType?
    
    init(viewModel: ___VARIABLE_productName___ViewModelType, router: RouterType?, presentableControllerViewType: PresentableControllerViewType) {
        self.viewModel = viewModel
        self.router = router
        self.presentableControllerViewType = presentableControllerViewType
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        setupConstraints()
    }
}

extension ___FILEBASENAME___ {
    private func setup() {
        
    }
    
    private func setupConstraints() {
        
    }
}

