//
//  FlickrPhotosCollectionViewController.swift
//  FlickrSearch
//
//  Created by David Avendaño on 06/01/22.
//

import UIKit

final class FlickrPhotosViewController: UICollectionViewController{
    // MARK: - Properties
    private let reuseIdentifier = "FlickrCell"
    
    private let sectionInsets =  UIEdgeInsets(
        top: 50.0,
        left: 20.0,
        bottom: 50.0,
        right: 20.0
    )
    
    
    private var searches: [FlickrSearchResults] = []
    private let flickr =  Flickr()
}

private extension FlickrPhotosViewController{
    func photo(for indexPath: IndexPath) -> FlickrPhoto {
        return searches[indexPath.section].searchResults[indexPath.row]
    }
}
