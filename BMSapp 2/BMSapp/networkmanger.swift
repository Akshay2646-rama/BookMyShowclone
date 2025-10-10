//
//  networkmanger.swift
//  bms
//
//  Created by Nxtwave on 09/10/25.
//

import SwiftUI

enum APError: Error {
    case invalidURL
    case invalidData
}

final class NetworkManager {
    
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    static let  baseURL = "https://dummyjson.com/c/3264-db8f-419c-972b"
    
    
    private init() { }
    
    
    func getAppetizers() async throws -> [Movie] {
        
        guard let url = URL(string : NetworkManager.baseURL) else {
            throw APError.invalidURL
        }
        
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(Welcome.self, from: data).movies
        } catch {
            throw APError.invalidData
        }
    }
    
    
    func loadImage(from urlString: String) async -> UIImage? {
        if let cached = cache.object(forKey: urlString as NSString) {
            return cached
        }
        
        guard let url = URL(string: urlString) else { return nil }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let image = UIImage(data: data) {
                cache.setObject(image, forKey: urlString as NSString)
                return image
            }
        } catch {
            print("Image load error:", error)
        }
        
        return nil
    }
}
