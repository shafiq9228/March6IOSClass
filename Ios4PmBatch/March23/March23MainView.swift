//
//  March23MainView.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 23/03/23.
//

import SwiftUI




struct March23MainView: View {
    
    @State var num = 0
    @AppStorage("appnum") var num1:Int = 0
    
    var body: some View {
        VStack {
            Text("Value: \(num1)")
            
            Button("Count+"){
                
                num1 = num1 + 1;
            }
            
            TempView1()
            
          
            
            ForEach(listEmp){ x in
                Text("name: \(x.name)")
            }
        }
    }
}


struct TempView1: View {
    
   
    @AppStorage("appnum") var numX:Int = 0
    var body: some View {
        HStack{
            Text("ValueOtherView: \(numX)")
            
            Button("Count X"){
                
               numX = numX + 1
            }
        }
    }
}

struct March23MainView_Previews: PreviewProvider {
    static var previews: some View {
        March23MainView()
    }
}
