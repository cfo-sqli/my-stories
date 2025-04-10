//
//  UserStoryListView.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import SwiftUI

struct UserStoryListView: View {
    private let state: UserStoryListState
    private let onUserStoryTap: ((Int)->Void)?

    init(state: UserStoryListState,
         onUserStoryTap: ((Int)->Void)?) {
        self.state = state
        self.onUserStoryTap = onUserStoryTap
    }

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(state.users, id: \.userId) { user in
                    Button {
                        onUserStoryTap?(user.userId)
                    } label: {
                        UserStoryPreview(pictureURL: user.pictureURL,
                                         subtitle: user.userName)
                    }
                    .buttonStyle(GrowingButton())
                }
            }
            .padding(.horizontal, 8)
        }
    }
}

private struct UserStoryPreview: View {
    let pictureURL: URL?
    let subtitle: String

    var body: some View {
        VStack {
            Circle()
                .strokeBorder(Color.tint, lineWidth: 3)
                .background(
                    AsyncImage(url: pictureURL,
                               content: { image in
                                   image
                                       .resizable()
                                       .aspectRatio(contentMode: .fit)
                               }, placeholder: {
                                   Image(systemName: "person.fill")
                                       .resizable()
                                       .padding()
                               })
                    .clipShape(.circle)
                    .padding(8)
                )
                .frame(height: 100)

            Text(subtitle)
                .truncationMode(.tail)
                .lineLimit(1)
                .padding(.horizontal, 5)
        }
        .frame(width: 100)
    }
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

#Preview {
    UserStoryListView(state: UserStoryListState.mock(),
                      onUserStoryTap: { userId in
        print(">>> GO TO \(userId)")
    })
    .preferredColorScheme(.dark)
}
