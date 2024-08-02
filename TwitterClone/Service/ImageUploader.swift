//
//  ImageUploader.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/08/02.
//

import FirebaseStorage
import UIKit

struct ImageUploader {
    
    
    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void ) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return } //compressing the image to half  in order to keep the quality of the image.
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_image/\(filename)")
        
        ref.putData(imageData) { _, error in
            if let error = error {
                print("DEBUG: Failed to upload image with error: \(error.localizedDescription)")
                return
            }
            
            ref.downloadURL { imageUrl, _ in
                guard let imageUrl = imageUrl?.absoluteString else  { return }
                completion(imageUrl)
            }
        }
        
    }
    
}


