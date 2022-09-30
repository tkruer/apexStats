//
//  safariView.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/30/22.
//

import Foundation
import UIKit
import WebKit
import SwiftUI

struct safariViewPopUp: UIViewRepresentable, View {
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        let request = URLRequest(url: url)
        let webview = WKWebView()
        webview.navigationDelegate = context.coordinator
        let prefrences = WKWebpagePreferences()
        prefrences.allowsContentJavaScript = true
        let configuration = WKWebViewConfiguration()
        configuration.defaultWebpagePreferences = prefrences
        let navigation = WKWebView()
        webview.load(request)
        return webview
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) { //I've honestly never understood why we need this function but alright
        
    }
}

class Coordinator : NSObject, WKNavigationDelegate {

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {

    }
}
