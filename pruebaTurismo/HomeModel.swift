//
//  HomeModel.swift
//  pruebaTurismo
//
//  Created by ITESM CAMPUS TAMPICO on 26/09/16.
//  Copyright © 2016 ITESM CAMPUS TAMPICO. All rights reserved.
//

import Foundation

override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let requestURL: NSURL = NSURL(string: "http://www.learnswiftonline.com/Samples/subway.json")!
    let urlRequest: NSMutableURLRequest = NSMutableURLRequest(URL: requestURL)
    let session = NSURLSession.sharedSession()
    let task = session.dataTaskWithRequest(urlRequest) {
        (data, response, error) -> Void in
        
        let httpResponse = response as! NSHTTPURLResponse
        let statusCode = httpResponse.statusCode
        
        if (statusCode == 200) {
            print("Everyone is fine, file downloaded successfully.")
            
            do{
                
                let json = try NSJSONSerialization.JSONObjectWithData(data!, options:.AllowFragments)
                
                if let stations = json["stations"] as? [[String: AnyObject]] {
                    
                    for station in stations {
                        
                        if let name = station["stationName"] as? String {
                            
                            if let year = station["buildYear"] as? String {
                                print(name,year)
                            }
                            
                        }
                    }
                    
                }
                
            }catch {
                print("Error with Json: \(error)")
            }
            
        }
    }
    
    task.resume()
}