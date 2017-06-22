#GLOBAL PARAMETERS #############
	
PortStateDown = "DOWN"
PortStateUP = "UP"


#INTERFACE IP ADDRESSES ########

IntfIP = {
      "DUT1":{
         "fpPort25":"192.168.0.1/24",
	 "fpPort65":"192.168.1.1/24"   
      },
      "DUT2":{
         "fpPort35":"192.168.0.2/24"
      },
      "DUT3":{
         "fpPort45":"192.168.2.3/24"
      },
      "DUT4":{
         "fpPort55":"192.168.2.4/24",
         "fpPort75":"192.168.1.4/24"
      }
           }

IntfIPState = {
                 "DUT1" :["fpPort25","fpPort65"],
                 "DUT2" :["fpPort35"],
                 "DUT4" :["fpPort55","fpPort75"],
                 "DUT3" :["fpPort45"]
               }

IntfIPDelete = {
                 "DUT1" :["fpPort25","fpPort65"],
                 "DUT2" :["fpPort35"],
                 "DUT4" :["fpPort55","fpPort75"],
                 "DUT3" :["fpPort45"]
               }

#LLDP PARAMETERS ###############
LLDPSleep = 2
LLDPGlobal = {
              "DUT1" : {
                  "Vrf" : "default",    
                  "TxRxMode" : "TxRx",  
                  "Enable" : True,      
                  "TranmitInterval" : 30,
                  "SnoopAndDrop"    : False
                      },
              "DUT2" : {
                  "Vrf" : "default",    
                  "TxRxMode" : "TxRx",  
                  "Enable" : True,      
                  "TranmitInterval" : 30,
                  "SnoopAndDrop"    : False
                      },
              "DUT4" : {
                  "Vrf" : "default",    
                  "TxRxMode" : "TxRx",  
                  "Enable" : True,      
                  "TranmitInterval" : 30,
                  "SnoopAndDrop"    : False
                      },
              "DUT3" : {
                  "Vrf" : "default",    
                  "TxRxMode" : "TxRx",  
                  "Enable" : True,      
                  "TranmitInterval" : 30,
                  "SnoopAndDrop"    : False
                      }
             }

LLDPConnectivity = {
                 "DUT1" : ["fpPort75","fpPort35"],
                 "DUT2" : ["fpPort25"],
                 "DUT4" : ["fpPort45","fpPort65"],
                 "DUT3" : ["fpPort55"]
                 }

#ARP PARAMETERS ################

ArpLinuxEntryStates = ["DUT1","DUT2","DUT4","DUT3"]
ARPtestDevice = "DUT1"
ARPtestPort = "fpPort25"
ARPPeerPort = "fpPort35"

"""
ARPtest1 = {
          "DUT1" :
               {
               "fpPort25" : "DOWN",
               "fpPort65" : "DOWN"
                }
           }
ARPtest2 = {
          "DUT1" :
               {
               "fpPort25" : "UP",
               "fpPort65" : "DOWN"
               }
           } 

"""
#BGP PARAMETERS ################

BGPDevice_List = ["DUT1","DUT2","DUT4","DUT3"]
BGPtestDevice = "DUT1"
BGPtestPort = "fpPort25"
BGPExpectedState = "CONNECT"
BGPConvergenceSleep = 5

BGPGlobal = {
           "DUT1":{      
                 "ASNum":"200",
                 "RouterId":"1.1.1.1"
                   },
           "DUT2":{      
                 "ASNum":"201",
                 "RouterId":"2.2.2.2"
                   },
           "DUT3":{      
                 "ASNum":"202",
                 "RouterId":"3.3.3.3"
                   },
           "DUT4":{      
                 "ASNum":"203",
                 "RouterId":"4.4.4.4"
                   } 
              }

PolicyDefinition ={ 

           "DUT1":{      
                "Name":"p1_match_all",
                "StatementList":[{"Priority":0,"Statement":"s1_permit"}]
                  },
           "DUT2":{      
                "Name":"p1_match_all",
                "StatementList":[{"Priority":0,"Statement":"s1_permit"}]
                   },
           "DUT3":{      
                "Name":"p1_match_all",
                "StatementList":[{"Priority":0,"Statement":"s1_permit"}]
                   },
           "DUT4":{      
                "Name":"p1_match_all",
                "StatementList":[{"Priority":0,"Statement":"s1_permit"}]
                   }
                 }
BGPv4TestDeviceNeighborState = {
        "DUT1":{      
               "Peer1" : {
                        "IntfRef" : "fpPort25",
                        "NeighborAddress" : "192.168.0.2",
                        "CheckParameter":"SessionState",
                        "ExpectedState" : "CONNECT"
                         }
               }
                      }
BGPv4Neighbor = {

           "DUT1":{      
               "Peer1":{
                 "PeerAS":"201",
                 "NeighborAddress":"192.168.0.2",
                 "IntfRef":"fpPort25",
                        },
               "Peer2":{
                 "PeerAS":"204",
                 "NeighborAddress":"192.168.1.4",
                 "IntfRef":"fpPort65",
                       }
               },
           "DUT4":{      
               "Peer1":{
                 "PeerAS":"200",
                 "NeighborAddress":"192.168.1.1",
                 "IntfRef":"fpPort75",
                        },
               "Peer2":{
                 "PeerAS":"202",
                 "NeighborAddress":"192.168.2.3",
                 "IntfRef":"fpPort55",
                       }
               },
           "DUT2":{      
               "Peer1":{
                 "PeerAS":"200",
                 "NeighborAddress":"192.168.0.1",
                 "IntfRef":"fpPort35",
                        }
                },
           "DUT3":{      
               "Peer1":{
                 "PeerAS":"203",
                 "NeighborAddress":"192.168.2.4",
                 "IntfRef":"fpPort35",
                        }
                }
        }

BGPv4Delete = { 
        "DUT1":{      
               "Peer1" : {
                        "PeerAS":"201",
                        "IntfRef" : "fpPort25",
                        "NeighborAddress" : "192.168.0.2"
                         },
               "Peer2" : {
                        "PeerAS":"204",
                        "IntfRef" : "fpPort65",
                        "NeighborAddress" : "192.168.1.4"
                         }
                },
        "DUT2":{      
               "Peer1" : {
                        "PeerAS":"200",
                        "IntfRef" : "fpPort35",
                        "NeighborAddress" : "192.168.0.1"
                         }
               },
        "DUT3":{      
               "Peer1" : {
                        "PeerAS":"203",
                        "IntfRef" : "fpPort35",
                        "NeighborAddress" : "192.168.2.4"
                         }
               },
        "DUT4":{      
               "Peer1" : {
                        "PeerAS":"200",
                        "IntfRef" : "fpPort55",
                        "NeighborAddress" : "192.168.2.3"
                         },      
               "Peer2" : {
                        "PeerAS":"202",
                        "IntfRef" : "fpPort75",
                        "NeighborAddress" : "192.168.1.1"
                         }
               }
                      }

PolicyStmt = {
           "DUT1":{      
                 "Name":"s1_permit",
                 "Action":"permit"
                  },
           "DUT2":{      
                 "Name":"s1_permit",
                 "Action":"permit"
                  },
           "DUT3":{      
                 "Name":"s1_permit",
                 "Action":"permit"
                  },
           "DUT4":{      
                 "Name":"s1_permit",
                 "Action":"permit"
                  }
            }

BGPRedistribution = {
          "DUT1":{"Redistribution":[{"policy":"p1_match_all","Sources":"CONNECTED"}]},
          "DUT2":{"Redistribution":[{"policy":"p1_match_all","Sources":"CONNECTED"}]},
          "DUT3":{"Redistribution":[{"policy":"p1_match_all","Sources":"CONNECTED"}]},
          "DUT4":{"Redistribution":[{"policy":"p1_match_all","Sources":"CONNECTED"}]}
                    }






