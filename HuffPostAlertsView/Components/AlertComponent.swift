//
//  AlertComponent.swift
//  HuffPostAlertsView
//
//  Created by Tornelius Broadwater, Jr on 1/22/23.
//

import SwiftUI

struct AlertComponent: View {
    var news: NewsAlert
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                HStack {
                    Image(systemName: "circle.fill")
                        .foregroundColor(Color.pink)
                    Text(news.title)
                        .font(.headline.bold())
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(news.description)
                        .fontWeight(.semibold)
                    
                    Text(news.publishDate)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
    }
}

struct AlertComponent_Previews: PreviewProvider {
    static var previews: some View {
        AlertComponent(news: alertData[4])
    }
}
