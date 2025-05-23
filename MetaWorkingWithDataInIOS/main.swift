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
        //Handle the response data of the data task
        if let data = data {
            //Convert the data to String
            let string = String(data: data, encoding: .utf8)
            print(string)
        }
    }
    
    //Resume the task to execute it
    task.resume()
}

func Parsing_data_in_Swift() throws {
    let recipesJSONString = """
    [
        {
            "title": "Apple pie",
            "views": 3847,
            "rating": 4.5
        },
        {
            "title": "Boiled egg",
            "views": 10584,
            "rating": 4.9
        },
        {
            "title": "Bacon roll",
            "views": 5847,
            "rating": 3.2
        }
    ]
    """
    
    //Define a custom Swift struct
    struct Recipe: Decodable {
        let title: String
        let rating: Double
        let views: Int
    }
    
    //Convert JSON String to Data
    let recipesData = Data(recipesJSONString.utf8)
    
    //Create a new JSONDecoder instance
    let decoder = JSONDecoder()
}

RunLoop.main.run()
