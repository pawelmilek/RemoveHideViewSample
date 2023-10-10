//
//  ContentView.swift
//  RemoveHideViewDemo
//
//  Created by Pawel Milek on 7/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
            EventTile(event:  Event(
                title: "Buy Daisies",
                date: Date.now,
                location: "Flower Shop",
                symbol: "gift"
            ))
            VStack {
                Text("IfElseTrain")
                    .font(.title)
                    .bold()
                IfElseTrain(longerTrain: true)
                IfElseTrain(longerTrain: false)
            }
            Divider()
                .frame(height: 4)
                .background(.red)
            VStack {
                Text("OpacityTrain")
                .font(.title)
                .bold()
                OpacityTrain(longerTrain: true)
                OpacityTrain(longerTrain: false)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct IfElseTrain: View {
    var longerTrain: Bool

    var body: some View {
        HStack {
            Image(systemName: "train.side.rear.car")
            if longerTrain {
                Image(systemName: "train.side.middle.car")
            }
            Image(systemName: "train.side.front.car")
        }
        .font(.largeTitle)
    }
}

struct OpacityTrain: View {
    var longerTrain: Bool

    var body: some View {
        HStack {
            Image(systemName: "train.side.rear.car")
            Image(systemName: "train.side.middle.car")
                .opacity(longerTrain ? 1 : 0)
            Image(systemName: "train.side.front.car")
        }
        .font(.largeTitle)
    }
}
