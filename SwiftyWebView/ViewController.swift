//
//  ViewController.swift
//  SwiftyWebView
//
//  Created by Sugam Kalra on 02/05/17.
//  Copyright © 2017 Sugam Kalra. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Method call to load URL in WebView
        loadURL()
    }
    
    
    /**
     Method to load URL in WebView
     
     @param nil
     
     @return nil
     */
    
    func loadURL()
    {
        let url = URL(string: "https://appirio.com/")!
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    
    // MARK: UIWebView Functionality Methods
    
    /**
     Method for WebView to go back to previous page
     
     @param sender: UIBarButtonItem
     
     @return nil
     */
    @IBAction func handleGoBack(_ sender: UIBarButtonItem)
    {
        webView.goBack()
    }
    
    
    /**
     Method for WebView to go forward to next page
     
     @param sender: UIBarButtonItem
     
     @return nil
     */
    @IBAction func handleGoForward(_ sender: UIBarButtonItem)
    {
        webView.goForward()
    }
    
    
    /**
     Method for WebView to refresh page
     
     @param sender: UIBarButtonItem
     
     @return nil
     */
    @IBAction func handleRefresh(_ sender: UIBarButtonItem)
    {
        webView.reload()
    }
    
    
    /**
     Method for WebView to stop loading the current page
     
     @param sender: UIBarButtonItem
     
     @return nil
     */
    @IBAction func handleStop(_ sender: UIBarButtonItem)
    {
        webView.stopLoading()
    }
    
    
    // MARK: UIWebView Delegate Methods
    
    /**
     UIWebView Delegate Method - When webview starts load
     
     @param webView : UIWebView
     
     @return nil
     */
    func webViewDidStartLoad(_ webView: UIWebView)
    {
        activityIndicator.startAnimating()
    }
    
    
    /**
     UIWebView Delegate Method - When webview finishes load
     
     @param webView : UIWebView
     
     @return nil
     */
    func webViewDidFinishLoad(_ webView: UIWebView)
    {
        activityIndicator.stopAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

