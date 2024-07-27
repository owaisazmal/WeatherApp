//
//  ContentView.swift
//  WeatherApp
//
//  Created by Khan, Owais on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    var body: some View {
        VStack {
            if let location = locationManager.location{
                Text("Your Coordinates are: \(location.longitude), \(location.latitude)")
            }else{
                if locationManager.isLoading{
                    LoadingView()
                }
            }
            WelcomeView()
                .environmentObject(locationManager)
        }
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
