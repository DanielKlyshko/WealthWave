import Foundation
import FirebaseAuth
import FirebaseFirestore

final class AuthService {
    
    public static let shared = AuthService()
    private init() {}
    
    public func signUpUser(with userRequest: SignUpUserRequest, completion: @escaping (Bool, Error?)->Void) {
        let username = userRequest.username
        let email = userRequest.email
        let password = userRequest.password
        
        Auth.auth().createUser(withEmail: email, password: password) { result , error in
            if let error = error {
                completion(false, error)
                return
            }
            
            guard let resultUser = result?.user else {
                completion(false, nil)
                return
            }
            
            let db = Firestore.firestore()
            db.collection("users")
                .document(resultUser.uid)
                .setData([
                    "username" : username,
                    "password": password
                ]) { error in
                    if let error = error {
                        completion(false, error)
                        return
                    }
                    completion(true, nil)
                }
        }
    }
    
    public func signInUser(with userRequest: SignInUserRequest, completion: @escaping (Error?)->Void) {
        Auth.auth().signIn(withEmail: userRequest.email, password: userRequest.password) { result, error  in
            if let error = error {
                completion(error)
                return
            } else {
                completion(nil)
            }
        }
    }
    
    public func logOut(completion: @escaping (Error?)->Void) {
        do {
            try Auth.auth().signOut()
            completion(nil)
        } catch let error {
            completion(error)
        }
    }
    
    public func fetchUser(completion: @escaping (UserModel?, Error?) -> Void) {
            guard let userUID = Auth.auth().currentUser?.uid else { return }
            
            let db = Firestore.firestore()
            db.collection("users")
                .document(userUID)
                .getDocument { snapshot, error in
                    if let error = error {
                        completion(nil, error)
                        return
                    }
                    
                    if let snapshot = snapshot,
                       let snapshotData = snapshot.data(),
                       let username = snapshotData["username"] as? String {
                        let user = UserModel(username: username, userUID: userUID)
                        completion(user, nil)
                    }
                }
    }
    
}
