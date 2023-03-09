//
//  HomeView.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 03/03/23.
//

import SwiftUI
var name = "Shafiq Patel"
struct HomeView: View {
    var markks:Int = 99
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
              
                HStack{
                    
                    Text("")
                        .frame(width: 200, height: 200)
                        .background(Color.orange)
                    
                    Text("")
                        .frame(width: 100, height: 100)
                        .background(Color.blue)
                    
                    Text("")
                        .frame(width: 50, height: 50)
                        .background(Color.black)
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
