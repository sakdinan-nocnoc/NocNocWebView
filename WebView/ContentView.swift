//
//  ContentView.swift
//  WebView
//
//  Created by Sakdinan Sukkhasem on 6/9/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingWebView: Bool = false
    // MARK: - Input url
    private let urlString = "https://qa.nocnoc-internal.com/service-installation?utm_source=nocnoc&utm_medium=appchat&utm_campaign=allservice"
    var body: some View {
        NavigationView {
            NavigationLink("Go To Web View") {
                WebView(urlString: urlString)
                    .navigationBarTitleDisplayMode(.inline)
            }.buttonStyle(.borderedProminent)
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
