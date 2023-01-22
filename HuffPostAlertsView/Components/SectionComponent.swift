//
//  SectionComponent.swift
//  HuffPostAlertsView
//
//  Created by Tornelius Broadwater, Jr on 1/22/23.
//

import SwiftUI

struct SectionComponent: View {
    var dateText: String
    var body: some View {
        HStack {
            Text(dateText).font(.system(.title, design: .serif, weight: .bold))
            Rectangle()
                .foregroundColor(.primary)
                .frame(height: 5)
        }
        .padding()
    }
}

struct SectionComponent_Previews: PreviewProvider {
    static var previews: some View {
        SectionComponent(dateText: "Today")
    }
}
