//
//  TrailerViewController.swift
//  flixster
//
//  Created by John Chen on 3/1/22.
//

import UIKit
import WebKit

class TrailerViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var trailerWebView: WKWebView!
    var movie_key: String!
    
    override func loadView() {
           let webConfiguration = WKWebViewConfiguration()
           trailerWebView = WKWebView(frame: .zero, configuration: webConfiguration)
           trailerWebView.uiDelegate = self
           view = trailerWebView
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        print("------------------------------")
        let myURL = URL(string: "https://www.youtube.com/watch?v=\(movie_key!)")!
        let myRequest = URLRequest(url: myURL)
        trailerWebView.load(myRequest)
     
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
