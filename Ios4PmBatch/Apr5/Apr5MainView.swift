//
//  Apr5MainView.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 05/04/23.
//

import SwiftUI





struct Apr5MainView: View {
    
    @StateObject private var vm = Apr5ViewModel()
    
    var body: some View {
        VStack {
//            ForEach(listmy1){ x in
//                Text("Hello, \(x.name)")
//                    .background(Color.green)
//                    .padding(.all,10)
//                    .background(Color.green)
//            }
            
            List(vm.listpub) { model in
                Text("Hello, \(model.name)")
                                    .background(Color.green)
                                    .padding(.all,10)
                                    .background(Color.green)
            }
            .frame(height: 700)
            
            Button("Change me"){
                vm.ChangeNum()
            }
            
            Button("Add"){
                vm.AddData()
            }
            Text("num: \(vm.num)")
            
            Apr5Page1View(num: vm.num)
            Spacer()
           
        }
    }
}

struct Apr5MainView_Previews: PreviewProvider {
    static var previews: some View {
        Apr5MainView()
    }
}
