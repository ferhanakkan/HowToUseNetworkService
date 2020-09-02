//
//  ViewControllerService.swift
//  HowToUseNetworkService
//
//  Created by Ferhan Akkan on 2.09.2020.
//

import PromiseKit

class ViewControllerService {
    
    let service = CoreService()
    
    func getAll() -> Promise<[UserModelForVaporTest]> {
        return service.get(url: "user")
    }
    
    func postUser(parameter: UserModelForVaporTest) -> Promise<UserModelForVaporTest> {
        let param = parameter.dictionary
        return service.post(url: "user", parameters: param)
    }
    
    func deleteById(parameter: UserModelForVaporTest) -> Promise<UserModelForVaporTest> {
        return service.delete(url: "user/\(parameter.id!)")
    }
    
    func getById(param: UserModelForVaporTest) -> Promise<[UserModelForVaporTest]> {
        return service.get(url: "user/\(param.id!)")
    }
    
    func getByName(param: UserModelForVaporTest) -> Promise<[UserModelForVaporTest]> {
        let name = param.name!
        return service.get(url: "user/nameFilterQuery/",parameters: ["name":name])
    }
    
}
