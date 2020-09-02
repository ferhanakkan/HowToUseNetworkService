//
//  ViewControllerService.swift
//  HowToUseNetworkService
//
//  Created by Ferhan Akkan on 2.09.2020.
//

import PromiseKit

class ViewControllerService {
    
    let service = CoreService()
    
//    func getData() -> Promise<[TestModel]> {
//        service.get(url: "/comments", parameters: ["postId": 1])
//    }
//
//    func postData() -> Promise<TestModelPost> {
//        let test: [String:Any] = ["userId": 1,
//                                  "title": "ferhan",
//                                  "body": "test"]
//        return service.post(url: "/posts", parameters: test)
//    }
    
    func postUser(parameter: UserModelForVaporTest) -> Promise<UserModelForVaporTest> {
        let param = parameter.dictionary
        return service.post(url: "user", parameters: param)
    }
    
    func getAll() -> Promise<[UserModelForVaporTest]> {
        return service.get(url: "user")
    }
    
    func deleteById(parameter: UserModelForVaporTest) -> Promise<UserModelForVaporTest> {
        return service.delete(url: "user/\(parameter.id!)")
    }
    
    func getById(param: UserModelForVaporTest) -> Promise<[UserModelForVaporTest]> {
        return service.get(url: "user/\(param.id!)")
    }
    
    func getByName(param: String) -> Promise<[UserModelForVaporTest]> {
        return service.get(url: "user/nameFilter/\(param)")
    }
    
//    func getById() -> Promise<UserModelForVaporTest> {
//
//    }
    
}
