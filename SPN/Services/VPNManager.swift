import NetworkExtension

class VPNManager {
    static let shared = VPNManager()
    private let vpnManager = NEVPNManager.shared()
    func setupIKEv2VPN() {
        vpnManager.loadFromPreferences() { error in
            if let error = error {
                print("Error:\(error.localizedDescription)")
                return
            }
            let vpnProtocol = NEVPNProtocolIKEv2()
            vpnProtocol.serverAddress = "vpn.example.com" //Адрес VPN-сервера
            vpnProtocol.remoteIdentifier = "vpn.example.com"
            vpnProtocol.authenticationMethod = .certificate
            vpnProtocol.useExtendedAuthentication = false
            vpnProtocol.certificateType = .RSA
            vpnProtocol.identityData = self.loadCertificate() // загрузка сертификата
            vpnProtocol.identityDataPassword = "myPassword" // Пароль сертификата, если нужен
            
            self.vpnManager.protocolConfiguration = vpnProtocol
            self.vpnManager.localizedDescription = "SPN"  //локалайз имя
            self.vpnManager.isOnDemandEnabled = true //автоматическое подключение
            
            self.vpnManager.saveToPreferences { error in
                if let error = error {
                    print("Error\(error.localizedDescription)")
                } else {
                    print("Complete")
                }
            }
        }
    }
    func loadCertificate() -> Data? {
        if let path = Bundle.main.path(forResource: "my", ofType: "p12") {
            return try? Data(contentsOf: URL(fileURLWithPath: path))
        }
        return nil
    }
    func connectVPN() {
        do {
            try vpnManager.connection.startVPNTunnel()
            print("Complete")
        } catch {
            print("Error\(error.localizedDescription)")
        }
    }
    func disconnect() {
        vpnManager.connection.stopVPNTunnel()
        print("disable")
    }
}







//import NetworkExtension
//
//class VPN {
//
//    let vpnManager = NEVPNManager.shared();
//
//    private var vpnLoadHandler: (Error?) -> Void { return
//        { (error:Error?) in
//            if ((error) != nil) {
//                print("Could not load VPN Configurations")
//                return;
//            }
//            let p = NEVPNProtocolIPSec()
//            p.username = "SOME_USERNAME"
//            p.serverAddress = "example.com"
//            p.authenticationMethod = NEVPNIKEAuthenticationMethod.sharedSecret
//
//            let kcs = KeychainService();
//            kcs.save(key: "SHARED", value: "MY_SHARED_KEY")
//            kcs.save(key: "VPN_PASSWORD", value: "MY_PASSWORD"
//                     p.sharedSecretReference = kcs.load(key: "SHARED")
//                     p.passwordReference = kcs.load(key: "VPN_PASSWORD)
//                                                    p.useExtendedAuthentication = true
//                                                    p.disconnectOnSleep = false
//                                                    self.vpnManager.protocolConfiguration = p
//                                                    self.vpnManager.localizedDescription = "Contensi"
//                                                    self.vpnManager.isEnabled = true
//                                                    self.vpnManager.saveToPreferences(completionHandler: self.vpnSaveHandler)
//                                                    } }
//
//                                                    private var vpnSaveHandler: (Error?) -> Void { return
//                { (error:Error?) in
//                    if (error != nil) {
//                        print("Could not save VPN Configurations")
//                        return
//                    } else {
//                        do {
//                            try self.vpnManager.connection.startVPNTunnel()
//                        } catch let error {
//                            print("Error starting VPN Connection \(error.localizedDescription)");
//                        }
//                    }
//                }
//                self.vpnlock = false
//            }}
//
//                                                    public func connectVPN() {
//                //For no known reason the process of saving/loading the VPN configurations fails.On the 2nd time it works
//                do {
//                    try self.vpnManager.loadFromPreferences(completionHandler: self.vpnLoadHandler)
//                } catch let error {
//                    print("Could not start VPN Connection: \(error.localizedDescription)" )
//                }
//            }
//
//                                                    public func disconnectVPN() ->Void {
//                vpnManager.connection.stopVPNTunnel()
//            }
//                                                    }
