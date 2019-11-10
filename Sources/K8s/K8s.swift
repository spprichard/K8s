import Foundation

enum Errors: Error {
    case CredentialLoadErrorFileLoadError(String)
}


struct K8sDefaultCredentials: Codable {
    public let clientID: String
    public let clientSecret: String
    public let refreshToken: String
    public let type: String
    
    
    public init(fromFilePath path: String) throws {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        if let contents = try String(contentsOfFile: path).data(using: .utf8) {
            self = try decoder.decode(K8sDefaultCredentials.self, from: contents)
        } else {
            throw Errors.CredentialLoadErrorFileLoadError(path)
        }
    }
}


struct K8s {
    var text = "Hello, World!"
}
