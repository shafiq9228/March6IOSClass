//
//  Apr5Model.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 05/04/23.
//

import Foundation

struct userModel:Identifiable{
    let id:String = UUID().uuidString
    let name:String
    let rank:Int
}
let listmy1 = [userModel(name: "Shafiq", rank: 1),
               userModel(name: "deepak", rank: 2),
               userModel(name: "manal", rank: 3)
]
