//
//  March30MainView.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 30/03/23.
//

import SwiftUI

struct DataModel1: Decodable{
    let status:Int
    let message:String
    let data:Data1?
}

struct Data1:Decodable{
    let name:String
    let email:String
    let college:String?
    let rollno:String?
}

struct March30MainView: View {
    @State var liveData:DataModel1? = nil
    var body: some View {
        VStack {
            
            if( (liveData?.status ?? 0) == 1 ){
                Text("name: \(liveData?.data?.name ?? "none") email: \(liveData?.data?.email ?? "none") College: \(liveData?.data?.college ?? "none")" )
            } else {
                Text("Some error: \(liveData?.message ?? "None")")
            }
           
           
            
            Button("GetData"){
                getData()
            }
        }
    }
    
    func getData(){
        let myurl = "https://staffofyall.el.r.appspot.com/abc"
        
        let url1 = URL(string: myurl)
        
        var request = URLRequest(url: url1!)
        
        let mybody:[String:String] = ["name":"shafq", "email":"shafiqpatel@gmail.com"]
        
        let jsonBody = try? JSONSerialization.data(withJSONObject: mybody)
        
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("243601", forHTTPHeaderField: "apikey")
        
    
        request.httpBody = jsonBody
        
        URLSession.shared.dataTask(with: request) { data, response, err in
            
            do {
                
                if let data = data{
                    
                    let result = try JSONDecoder().decode(DataModel1.self, from: data)
                    
                    liveData = result
                    
                    print(result)
                    
                } else {
                    print("no data")
                }
                
                
                
            } catch(let error){
                
                print("some error: \(error)")
            }
            
        }.resume()
        
    }
}

struct March30MainView_Previews: PreviewProvider {
    static var previews: some View {
        March30MainView()
    }
}
