//
//  ContentView.swift
//  MovieList
//
//  Created by Naga Rajitha Bhogadi on 6/19/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.orange
                    .ignoresSafeArea()
                List(movies) { movie in
                    NavigationLink {
                        MovieDetailView(movie: movie)
                    } label: {
                        MovieRowView(movie: movie)
                    }
                    .listRowBackground(Color.orange)
                }
                .scrollContentBackground(.hidden)
                .background(Color.orange)
            }
            .navigationTitle("Movies")
        }
    }
}

#Preview {
    ContentView()
}
