//
//  ViewController.swift
//  SwiftyWebView
//
//  Created by Sugam Kalra on 02/05/17.
//  Copyright © 2017 Sugam Kalra. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {
    
    var wkWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        self.wkWebView = WKWebView(frame: self.view.frame)
        
        self.view.addSubview(self.wkWebView)
        
        // Method call to load URL in WebView
        loadURL()
    }
    
    
    /**
     Method to load URL in WKWebView
     
     @param nil
     
     @return nil
     */
    
    func loadURL()
    {
        let url = URL(string: "https://appirio.com/")!
        let request = URLRequest(url: url)
        wkWebView.load(request)
    }
    
    
    // MARK: WKWebView Functionality Methods
    
    /**
     Method for WebView to go back to previous page
     
     @param sender: UIBarButtonItem
     
     @return nil
     */
    @IBAction func handleGoBack(_ sender: UIBarButtonItem)
    {
        if wkWebView.canGoBack
        {
            wkWebView.goBack()
        }
    }
    
    
    /**
     Method for WebView to go forward to next page
     
     @param sender: UIBarButtonItem
     
     @return nil
     */
    @IBAction func handleGoForward(_ sender: UIBarButtonItem)
    {
        if wkWebView.canGoForward
        {
            wkWebView.goForward()
        }
        
    }
    
    
    /**
     Method for WebView to refresh page
     
     @param sender: UIBarButtonItem
     
     @return nil
     */
    @IBAction func handleRefresh(_ sender: UIBarButtonItem)
    {
        wkWebView.reload()
    }
    
    
    /**
     Method for WebView to stop loading the current page
     
     @param sender: UIBarButtonItem
     
     @return nil
     */
    @IBAction func handleStop(_ sender: UIBarButtonItem)
    {
        wkWebView.stopLoading()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

