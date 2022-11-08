//
//  LocalFileManager.swift
//  swiftUiCrytpo
//
//  Created by pc on 28/10/22.
//

import Foundation
import SwiftUI


class LocalFileManager {
    
    static let instace  = LocalFileManager()
    
    private init() {
        
    }
    
    func saveImage(image: UIImage, imageName: String, folderName: String) {
        
        createFolderIfNeeded(folderName: folderName)
        
        guard
            let data = image.pngData(),
            let url = getUrlForImage(imageName: imageName, folderName: folderName)
        else { return }
        
        do {
            try  data.write(to: url)
        } catch let error  {
            print("Error saving image. \(error)")
        }
        
    }
    
    func getImage(imageName: String, folderName: String) -> UIImage? {
        
        guard let url = getUrlForImage(imageName: imageName, folderName: folderName),
              FileManager.default.fileExists(atPath: url.path) else {
            return nil
        }
        return UIImage(contentsOfFile: url.path)
    }
    
    private func createFolderIfNeeded(folderName: String) {
        guard let url = getURLForFolder(name: folderName) else { return }
        
        if !FileManager.default.fileExists(atPath: url.path) {
            do {
                try FileManager.default.createDirectory(at: url, withIntermediateDirectories: true, attributes: nil)
            } catch let error {
                print(" Error creating directory. Floder name: \(folderName). \(error)")
            }
        }
        
    }
    
    
    
    private func getURLForFolder(name: String) -> URL? {
        
        guard  let url = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            return nil
        }
        return url.appendingPathComponent(name)
    }
    
    private func getUrlForImage(imageName: String, folderName: String) -> URL?  {
        
        guard let folderUrl = getURLForFolder(name: folderName) else {
            return nil
        }
        
        return folderUrl.appendingPathComponent(imageName + ".png")
        
    }
    
}
