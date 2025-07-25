//
//  GIFView.swift
//  RootZ
//
//  Created by Apprenant156 on 21/07/2025.
//

import SwiftUI
import WebKit

struct GIFView: UIViewRepresentable {
    let gifName: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        if let path = Bundle.main.path(forResource: gifName, ofType: "gif") {
            let url = URL(fileURLWithPath: path)
            let data = try? Data(contentsOf: url)
            webView.load(data!, mimeType: "image/gif", characterEncodingName: "", baseURL: url.deletingLastPathComponent())
        }
        webView.scrollView.isScrollEnabled = false
        webView.backgroundColor = .clear
        webView.isOpaque = false
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
