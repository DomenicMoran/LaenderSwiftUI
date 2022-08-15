//
//  EmptyStateView.swift
//  LänderSwiftUI
//
//  Created by Domenic Moran on 15.08.22.
//

import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        VStack {
            Image(systemName: "suit.heart")
                .font(.system(size: 100))
                .padding()
            Text("Momentan sind keine Favoriten vorhanden")
        }
        .foregroundColor(Color.black.opacity(0.7))
        .offset(y: -50)
    }
}

struct EmptyStateView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateView()
    }
}
