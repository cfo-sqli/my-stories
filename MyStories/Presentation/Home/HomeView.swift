//
//  HomeView.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import SwiftUI

protocol HomeNavigator: AnyObject {
    func goToUserStory(userId: Int)
}

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel

    private weak var navigator: HomeNavigator?

    init(viewModel: HomeViewModel,
         navigator: HomeNavigator?) {
        self.viewModel = viewModel
        self.navigator = navigator
    }

    var body: some View {
        VStack {
            UserStoryListView(state: viewModel.storiesState) { userId in
                navigator?.goToUserStory(userId: userId)
            }

            Spacer()
        }
        .onAppear {
            self.viewModel.loadUserStories()
        }
    }
}
