//
//  ContentView.swift
//  HuffPostAlertsView
//
//  Created by Tornelius Broadwater, Jr on 1/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    ForEach(alertData) { news in
                        if news.id == 1 {
                            SectionComponent(dateText: "Today")
                        }
                        
                        if news.id == 3 {
                            SectionComponent(dateText: "Yesterday")
                        }
                        AlertComponent(news: news)
                    }
                }
            }
            .navigationBarTitle("ALERTS")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
