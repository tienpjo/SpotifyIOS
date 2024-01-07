//
//  AuthManager.swift
//  Spotify
//
//  Created by Tran Duc Tien on 30/12/2023.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "b6260fa285b748e5a7fe7cd79063e771"
        static let clientSecret = "3aeea4ad752044fd8c33d77875cc15e3"
    }
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://tienpjo.me/"
        let base = "https://accounts.spotify.com/authorize"
        let strings = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)"
        return URL(string: strings)
    }
    
    private init (){
        
    }
    
    var isSignedIn:Bool{
        return false
    }
    
    private var accessToken:String? {
        return nil
    }
    
    private var refreshToken:String? {
        return nil
    }
    
    private var tokenExpirationDate:Date?{
        return nil
    }
    
    private var shouldRefreshToken:Bool?{
        return false
    }
}
