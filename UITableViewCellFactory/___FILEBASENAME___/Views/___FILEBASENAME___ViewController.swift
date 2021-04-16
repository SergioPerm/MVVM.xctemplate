//___FILEHEADER___

import UIKit
import SnapKit

class ___FILEBASENAME___: UIViewController, ___VARIABLE_productName___ViewType {

    private let viewModel: ___VARIABLE_productName___ViewModelType

    private let tableView: UITableView = UITableView()
    
    private var cellFactory: ___VARIABLE_productName___CellFactoryType? {
        didSet {
            cellFactory?.cellTypes.forEach({ $0.register(tableView)})
        }
    }
    
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
        cellFactory = ___VARIABLE_productName___CellFactory()
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.separatorStyle = .none
        tableView.estimatedRowHeight = 600
        tableView.backgroundColor = .white
        tableView.sectionFooterHeight = 0
        
        tableView.dataSource = self
        
        tableView.register(___VARIABLE_productName___TableViewCell.self, forCellReuseIdentifier: ___VARIABLE_productName___TableViewCell.className)
        
        view.addSubview(tableView)
    }
    
    private func setupConstraints() {
        tableView.snp.makeConstraints({ make in
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        })
    }
}

extension ___FILEBASENAME___: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.outputs.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cellFactory = cellFactory else {
            return UITableViewCell()
        }
        
        let cellViewModel = viewModel.outputs.items[indexPath.section]
        
        return cellFactory.generateCell(viewModel: cellViewModel, tableView: tableView, for: indexPath)
    }
}

