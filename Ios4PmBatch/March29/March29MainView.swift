//
//  March29MainView.swift
//  Ios4PmBatch
//
//  Created by MD SHAFIQ PATEL on 29/03/23.
//

import SwiftUI


struct MyDataModel: Decodable{
    
    let timezone:Int
    let name:String
    let main:MyMainModel
    let coord:Coord
}

struct MyMainModel:Decodable{
    let temp:Float
    let feels_like:Float
    let pressure:Int
    let humidity:Int
}

struct Coord:Decodable{
    let lon:Float
    let lat:Float
}

struct March29MainView: View {
    
    @State var liveData:MyDataModel? = nil

    var body: some View {
        VStack {
            Text("Web Serrvice: City:\(liveData?.name ?? "N") timeZone: \(liveData?.timezone ?? 0)")
            
            Text("Temp: \(   (liveData?.main.temp ?? 273.15)-273.15 )")
            
            Text("Latitude:\(liveData?.coord.lat ?? 0.0) | Longitude: \(liveData?.coord.lon ?? 0.0)")
            
            Button("GetData"){
                getData()
            }
        }
    }
    
    
    func getData(){
        let myurl = "https://api.openweathermap.org/data/2.5/weather?q=hyderabad&appid=1eb2b35b1267abf5fba7e25ba5e3e600"
        
        let url1 = URL(string: myurl)
        
        var request = URLRequest(url: url1!)
        
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        URLSession.shared.dataTask(with: request) { data, response, err in
            
            do {
                
                if let data = data{
                    
                    let result = try JSONDecoder().decode(MyDataModel.self, from: data)
                    
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


struct March29MainView_Previews: PreviewProvider {
    static var previews: some View {
        March29MainView()
    }
}
