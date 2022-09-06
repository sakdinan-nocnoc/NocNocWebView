//
//  WebView.swift
//  WebView
//
//  Created by Sakdinan Sukkhasem on 6/9/22.
//

import SwiftUI
import WebKit
 
struct WebView: UIViewRepresentable {
 
    var urlString: String?
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        guard let urlString = urlString,
        let url = URL(string: urlString) else {
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
