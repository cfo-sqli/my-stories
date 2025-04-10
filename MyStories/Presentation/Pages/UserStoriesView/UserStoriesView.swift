//
//  UserStoryView.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import SwiftUI

protocol UserStoriesNavigator: AnyObject {
    func quitUserStories()
}

struct UserStoriesView: View {
    private weak var navigator: UserStoriesNavigator?

    init(navigator: UserStoriesNavigator?) {
        self.navigator = navigator
    }

    var body: some View {
        ZStack {
            Text("Hello, World!")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(alignment: .topTrailing) {
            Button {
                navigator?.quitUserStories()
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .foregroundStyle(Color.tint)
                    .font(.title)
            }
            .frame(minWidth: 40, minHeight: 40)
        }
    }
}

#Preview {
    UserStoriesView(navigator: nil)
}
