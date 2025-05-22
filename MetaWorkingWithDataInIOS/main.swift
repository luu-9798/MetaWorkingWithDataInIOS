//
//  main.swift
//  MetaWorkingWithDataInIOS
//
//  Created by Trung Luu on 5/22/25.
//

import Foundation

func HTTP_request_and_response_in_Swift() throws {
    //Define the Little Lemon server address as a constant String
    let littleLemonAddress = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"
    
    //Initialize a new URL object with the Little Lemon address String
    let url = URL(string: littleLemonAddress)
    
    //Use guard to unwrap the optional url constant
    guard let url = url else {
        throw NSError()
    }
    
    //Create a new URLRequest object with unwrapped url
    let request = URLRequest(url: url)
    
    //Create a new data task
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        
    }
}

try HTTP_request_and_response_in_Swift()
