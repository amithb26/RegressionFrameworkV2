*** Settings ***

Documentation	        A test suite with tests to perform BGP functional tests on DUT
Metadata 		Version          	 1.0
...	         	More Info         	 For more information about Robot Framework see http://robotframework.org
...               	Author            	
...               	Date             	   
...	                Executed At  	         ${HOST}
...		        Test Framework           Robot Framework Python

Resource          	Resource.robot
Suite Teardown     Clean up

*** Test Cases ***
Interface Configuration Tests
  
    IPv4Intf_IpAddr_TC1
    IPv4Intf_IpAddr_TC2
    IPv4Intf_IpAddr_TC3
    IPv4Intf_IpAddr_TC4
    IPv4Intf_AdminState_TC5
    IPv4Intf_AdminState_TC6
    IPv4Intf_IpAddr_TC7
    IPv4Intf_IpAddr_TC8
    IPv4Intf_IpAddr_TC9
    IPv4Intf_IpAddr_TC10
    IPv4Intf_IntfRef_TC11
    IPv4Intf_IpAddr_TC12
    IPv4Intf_IpAddr_TC13
    IPv4Intf_IpAddr_TC14
    IPv4Intf_IpAddr_TC15
    IPv4Intf_IpAddr_TC16

ARP Configuration Tests

    ArpGlobal_Timeout_TC1
    ArpGlobal_Timeout_TC2

LLDP Configuration Tests
    LLDPIntf_TxRxMode_TC1
    LLDPIntf_TxRxMode_TC1
    LLDPIntf_TxRxMode_TC1
    LLDPIntf_Enable_TC4
    LLDPIntf_Enable_TC5
    LLDPGlobal_TranmitInterval_TC6
    LLDPGlobal_TranmitInterval_TC7
    LLDPGlobal_TxRxMode_TC8
    LLDPGlobal_TxRxMode_TC9
    LLDPGlobal_TxRxMode_TC10
    LLDPGlobal_SnoopAndDrop_TC11
    LLDPGlobal_SnoopAndDrop_TC12

Loopback Configuration Tests
    LogicalIntf_Name_TC1
    LogicalIntf_Name_TC2
    LogicalIntf_Name_TC3
    LogicalIntf_Name_TC4

VLAN Configuration Tests
    Vlan_VlanId_TC1
    Vlan_IntfList_TC2
    Vlan_IntfList_TC3
    Vlan_Description_TC4
    Vlan_AdminState_TC5
    Vlan_AdminState_TC6
    Vlan_VlanId_TC7


BGP Configuration Tests
     
    BGP_TC1
    BGP_TC2
    BGP_TC3
    BGP_TC4
    BGP_TC5
    BGP_TC6
    BGP_TC7
    BGP_TC8
    BGP_TC9
    BGP_TC10
    BGP_TC11
    BGP_TC12
    BGP_TC13
    BGP_TC14
    BGP_TC15
    BGP_TC16
    BGP_TC17
    BGP_TC18
    BGP_TC19
    BGP_TC20
    BGP_TC21
    BGP_TC22
    BGP_TC23
    BGP_TC24
    BGP_TC25
    BGP_TC26
    BGP_TC27
    BGP_TC28
    BGP_TC29
    BGP_TC30
    BGP_TC31
    BGP_TC32
    BGP_TC33
    BGP_TC34
    BGP_TC35
    BGP_TC36
    BGP_TC37
    BGP_TC38
    BGP_TC39
    BGP_TC40
    BGP_TC41
    BGP_TC42
    BGP_TC43
    BGP_TC44
    BGP_TC45
    BGP_TC46
    BGP_TC47
    BGP_TC48
    BGP_TC49
    BGP_TC50
    BGP_TC51
    BGP_TC52



   
