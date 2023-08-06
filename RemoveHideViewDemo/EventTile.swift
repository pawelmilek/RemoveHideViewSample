//
//  EventTile.swift
//  RemoveHideViewDemo
//
//  Created by Pawel Milek on 7/17/23.
//

import SwiftUI

struct EventTile: View {
    let event: Event
    let stripeHeight = 15.0

    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: event.symbol)
                .font(.title)
            VStack(alignment: .leading) {
                Text(event.title)
                    .font(.title)
                    .fontWeight(.medium)
                VStack(alignment: .leading) {
                    Text(
                        event.date,
                        format: Date.FormatStyle()
                        .day(.defaultDigits)
                        .month(.wide)
                    )
                    Text(event.location)
                }
            }
        }
        .padding()
        .padding(.top, stripeHeight)
        .background {
            ZStack(alignment: .top) {
                Rectangle()
                    .opacity(0.3)
                Rectangle()
                    .frame(maxHeight: stripeHeight)
            }
            .foregroundColor(.teal)
        }
        .clipShape(RoundedRectangle(cornerRadius: stripeHeight, style: .continuous))
    }
}

struct EventTile_Previews: PreviewProvider {
    static let eventModel = Event(
        title: "Buy Daisies",
        date: Date.now,
        location: "Flower Shop",
        symbol: "gift"
    )

    static var previews: some View {
        EventTile(event: eventModel)
            .previewLayout(.sizeThatFits)
    }
}
