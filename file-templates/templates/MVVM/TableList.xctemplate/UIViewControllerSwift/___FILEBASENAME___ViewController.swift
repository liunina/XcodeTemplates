//  ___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

import UIKit
import SnapKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController {
    
    // MARK: - Private properties
    
    private let viewModel: ___VARIABLE_productName:identifier___ViewModel
    
    lazy var mainView: ___VARIABLE_productName:identifier___View = {
        let mainView = ___VARIABLE_productName:identifier___View(viewModel: self.viewModel)
        return mainView
    }()

    // MARK: - Init

    init(viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.interactionProvider = self
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    static func HelloWorld() -> ___VARIABLE_productName:identifier___ViewController {
        let viewModel = ___VARIABLE_productName:identifier___ViewModel()
        let vc = ___VARIABLE_productName:identifier___ViewController(viewModel: viewModel)
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainView.reloadData()
    }

    // MARK: override

    func onInitUIComponents() {
        self.view.addSubview(mainView)
    }
    
    func onLayoutUIComponents() {
        mainView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.left.equalTo(self.view.snp.left)
            make.right.equalTo(self.view.snp.right)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }
    }
    
    func onDataBindings() {
         
    }
}


// MARK: - ___VARIABLE_productName___ViewModelInteractionProvider

extension ___VARIABLE_productName___ViewController: ___VARIABLE_productName___ViewModelInteractionProvider {
    func interactionViewController() -> UIViewController {
        return self
    }
}
