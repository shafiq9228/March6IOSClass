//
//  March16MainView.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 16/03/23.
//

import SwiftUI

struct March16MainView: View {
    
    @State var num1 = ""
    @State var num2 = ""
    @State var result = ""
    var body: some View {
        VStack {
            Text("Enter Two Values")
            
            HStack {
                TextField("Enter Value 1", text: $num1)
                    .disableAutocorrection(true)
                    .padding(.vertical,15)
                    .padding(.horizontal,10)
                    .background(Color(red:236/255, green: 234/255, blue: 234/255))
                
                
                
            }.padding(.horizontal,20)
            
            HStack {
                TextField("Enter Value 2", text: $num2)
                    .disableAutocorrection(true)
                    .padding(.vertical,15)
                    .padding(.horizontal,10)
                    .background(Color(red:236/255, green: 234/255, blue: 234/255))
                
                
                
            }.padding(.horizontal,20)
            
            HStack{
                
                Button {
                    
                    let n1:Int = Int(num1) ?? 0
                    let n2:Int = Int(num2) ?? 0
                    
                    let res = n1 + n2
                    
                    result = "Result of Add: \(res)"
                    
                } label: {
                    Text("+")
                        .frame(width: 60, height: 60)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                }
                Button {
                    let n1:Int = Int(num1) ?? 0
                    let n2:Int = Int(num2) ?? 0
                    
                    let res = n1 - n2
                    
                    result = "Result of Sub: \(res)"
                } label: {
                    Text("-")
                        .frame(width: 60, height: 60)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                }
                
                Button {
                    let n1:Int = Int(num1) ?? 0
                    let n2:Int = Int(num2) ?? 0
                    
                    let res = n1 / n2
                    
                    result = "Result of Div: \(res)"
                } label: {
                    Text("/")
                        .frame(width: 60, height: 60)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                }
                
                Button {
                    let n1:Int = Int(num1) ?? 0
                    let n2:Int = Int(num2) ?? 0
                    
                    let res = n1 * n2
                    
                    result = "Result of Mul: \(res)"
                } label: {
                    Text("X")
                        .frame(width: 60, height: 60)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                }

                
            }.padding(.top, 30)
            
            Text("\(result)")
                .padding(.top,40)
        }
    }
}

struct March16MainView_Previews: PreviewProvider {
    static var previews: some View {
        March16MainView()
    }
}
