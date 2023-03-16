//
//  HomeView.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 03/03/23.
//

import SwiftUI


struct HomeView: View {
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                
            
                
                Button("Click me"){
                    
                    var name1:String? = nil
                     name1 = "shafiq"
                    
                    print("\(name1 ?? "No value")") // Method1
                    
                    if let x = name1{
                        print("\(x)")  // Method2
                    }
                    
                   print("----")
                    
                    
                    var n1:Int? = nil
                    
                   // n1 = 10
                    
                    print("\((n1 ?? 0)*2 )")
                    
                }
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
