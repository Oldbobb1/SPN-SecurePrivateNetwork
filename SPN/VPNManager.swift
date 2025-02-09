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
