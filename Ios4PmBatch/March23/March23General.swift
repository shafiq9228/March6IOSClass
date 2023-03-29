//
//  March23General.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 23/03/23.
//

import Foundation




class MyClass1{
    
        var name:String
        var age:Int
        var status:Bool
        var empID:Int
    
    init(name: String, age: Int, status: Bool, empID: Int) {
        self.name = name
        self.age = age
        self.status = status
        self.empID = empID
    }

}

struct MyModel1:Identifiable{
    
    var id = UUID()
    var name:String
    var age:Int
    var status:Bool
    var empID:Int
}

let test = MyClass1(name: "edrfg", age: 12, status: true, empID: 2)


let listabc = ["apple", "banana", "oarange"]

let listEmp = [MyModel1(name: "Abdul", age: 10, status: true, empID: 1),
               MyModel1(name: "Manal", age: 20, status: false, empID: 2),
                MyModel1(name: "Deepak", age:30, status: true, empID: 3)]
