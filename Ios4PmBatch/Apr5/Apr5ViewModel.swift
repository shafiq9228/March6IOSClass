//
//  Apr5ViewModel.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 05/04/23.
//

import Foundation


class Apr5ViewModel : ObservableObject{
    
    @Published var num = 23
    
    @Published var listpub = [userModel(name: "Shafiq11", rank: 1),
                   userModel(name: "deepak", rank: 2),
                   userModel(name: "manal", rank: 3)
    ]
    
    func ChangeNum(){
        num = num + 1
    }
    
    func AddData(){
        let str:String = String(UUID().uuidString.prefix(5))
        
        let testmodel = userModel(name: str, rank: 2)
        
        listpub.append(testmodel)
        
    }
}
