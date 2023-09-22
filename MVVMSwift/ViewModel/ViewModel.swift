//
//  ViewModel.swift
//  MVVMSwift
//
//  Created by Eman Khaled on 22/09/2023.
//

import Foundation
class ViewModel{
    var bindResultToVC : (()->()) = {}
    
    //observer
    var vmResult : [item]! {
        didSet {
            bindResultToVC() // call closure (render VC)
        }
    }
    //VM->M
    func getItems(){
        // lma el func de tege en el model yeb3at el func l VM
        //el func de ha update beha el VC 3shan yeb3tha l View w 3shan 23mel keda hasta5dem optional binding 3n tareq el Observer
        NetworkService.fetchResult{ res in
            //m->VM
            guard let result = res else {return}
            self.vmResult = result.data
            
        }
    }
}
