//
//  ViewController.swift
//  MVVMSwift
//
//  Created by Eman Khaled on 22/09/2023.
//

import UIKit

class ViewController: UIViewController {
    var viewModel : ViewModel!
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
        viewModel.getItems()
        viewModel.bindResultToVC = {() in
          //  self.renderView()
            DispatchQueue.main.async {
                self.nameLabel.text = self.viewModel.vmResult[0].employee_name
            }
            
        }
    }
//    func renderView(){
//        DispatchQueue.main.async {
//            self.nameLabel.text = self.viewModel.vmResult[0].employee_name
//        }
//    }

}

