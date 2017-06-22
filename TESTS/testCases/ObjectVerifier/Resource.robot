*** Settings ***
Documentation     Resource file containing all the keyword definition from the TestSuite file.
...                      This file integrates robot testcases and the python API for FlexSwitch.

Library           ../../lib/protocol/curlCmdtester.py
Variables         config.py    
 
*** Keywords ***
Execute Curl Command
    [Arguments]    ${Host}    ${objURL}    ${reqMethod}    ${payload}    ${ExpectedResponse} 
    ${result}=    Run Keyword    execCurlCmd    ${Host}    ${objURL}    ${reqMethod}    ${payload}    ${ExpectedResponse}    
    Run Keyword If    ${result}==True    Log    Configuration Successful
    ...    ELSE    FAIL    Configuration Failed

# INTERFACE 

IPv4Intf_IpAddr_TC1
    [Documentation]    This checks response for valid values passed
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${INTF1_objURL}    ${INTF1_reqMethod}    ${INTF1_payload}    ${INTF1_ExpectedResponse}    
    
IPv4Intf_IpAddr_TC2
    [Documentation]    Trying to configure IP on interface that is already configured
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${INTF2_objURL}    ${INTF2_reqMethod}    ${INTF2_payload}    ${INTF2_ExpectedResponse}     
    
IPv4Intf_IpAddr_TC3
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${INTF3_objURL}    ${INTF3_reqMethod}    ${INTF3_payload}    ${INTF3_ExpectedResponse}     
    
IPv4Intf_IpAddr_TC4
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${INTF4_objURL}    ${INTF4_reqMethod}    ${INTF4_payload}    ${INTF4_ExpectedResponse}     
    
IPv4Intf_AdminState_TC5
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${INTF5_objURL}    ${INTF5_reqMethod}    ${INTF5_payload}    ${INTF5_ExpectedResponse}      
    
IPv4Intf_AdminState_TC6
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${INTF6_objURL}    ${INTF6_reqMethod}    ${INTF6_payload}    ${INTF6_ExpectedResponse}          
    
IPv4Intf_IpAddr_TC7
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${INTF7_objURL}    ${INTF7_reqMethod}    ${INTF7_payload}    ${INTF7_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    Found Expected Response
    ...    ELSE    FAIL    Object does not exist          
    
IPv4Intf_IpAddr_TC8
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${INTF8_objURL}    ${INTF8_reqMethod}    ${INTF8_payload}    ${INTF8_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    Found Expected Response
    ...    ELSE    FAIL    Object does not exist          
    
IPv4Intf_IpAddr_TC9
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${INTF9_objURL}    ${INTF9_reqMethod}    ${INTF9_payload}    ${INTF9_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    Found Expected Response
    ...    ELSE    FAIL    Object does not exist          
    
IPv4Intf_IpAddr_TC10
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${INTF10_objURL}    ${INTF10_reqMethod}    ${INTF10_payload}    ${INTF10_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    Found Expected Response
    ...    ELSE    FAIL    Object does not exist          
    
IPv4Intf_IntfRef_TC11
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${INTF11_objURL}    ${INTF11_reqMethod}    ${INTF11_payload}    ${INTF11_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    Found Expected Response
    ...    ELSE    FAIL    Object does not exist          
    
IPv4Intf_IpAddr_TC12
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${INTF12_objURL}    ${INTF12_reqMethod}    ${INTF12_payload}    ${INTF12_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    Found Expected Response
    ...    ELSE    FAIL    Object does not exist          
    
IPv4Intf_IpAddr_TC13
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${INTF13_objURL}    ${INTF13_reqMethod}    ${INTF13_payload}    ${INTF13_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    Found Expected Response
    ...    ELSE    FAIL    Object does not exist          
    
IPv4Intf_IpAddr_TC14
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${INTF14_objURL}    ${INTF14_reqMethod}    ${INTF14_payload}    ${INTF14_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    Found Expected Response
    ...    ELSE    FAIL    Object does not exist          
   
IPv4Intf_IpAddr_TC15
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${INTF15_objURL}    ${INTF15_reqMethod}    ${INTF15_payload}    ${INTF15_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    IP Unconfigured
    ...    ELSE    FAIL    Object does not exist    
    
IPv4Intf_IpAddr_TC16
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${INTF16_objURL}    ${INTF16_reqMethod}    ${INTF16_payload}    ${INTF16_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    IP Unconfigured
    ...    ELSE    FAIL    Object does not exist    
   
# ARP
ArpGlobal_Timeout_TC1
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${ARP1_objURL}    ${ARP1_reqMethod}    ${ARP1_payload}    ${ARP1_ExpectedResponse}
    
ArpGlobal_Timeout_TC2
    [Tags]    tag1
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${ARP2_objURL}    ${ARP2_reqMethod}    ${ARP2_payload}    ${ARP2_ExpectedResponse}    
    

#LLDP
LLDPIntf_TxRxMode_TC1
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LLDP1_objURL}    ${LLDP1_reqMethod}    ${LLDP1_payload}    ${LLDP1_ExpectedResponse}    

LLDPIntf_TxRxMode_TC2
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LLDP2_objURL}    ${LLDP2_reqMethod}    ${LLDP2_payload}    ${LLDP2_ExpectedResponse}    
	
LLDPIntf_TxRxMode_TC3
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LLDP3_objURL}    ${LLDP3_reqMethod}    ${LLDP3_payload}    ${LLDP3_ExpectedResponse}    
	
LLDPIntf_Enable_TC4
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LLDP4_objURL}    ${LLDP4_reqMethod}    ${LLDP4_payload}    ${LLDP4_ExpectedResponse}    
	
LLDPIntf_Enable_TC5
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LLDP5_objURL}    ${LLDP5_reqMethod}    ${LLDP5_payload}    ${LLDP5_ExpectedResponse}    
	
LLDPGlobal_TranmitInterval_TC6
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LLDP6_objURL}    ${LLDP6_reqMethod}    ${LLDP6_payload}    ${LLDP6_ExpectedResponse}    
	
LLDPGlobal_TranmitInterval_TC7
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LLDP7_objURL}    ${LLDP7_reqMethod}    ${LLDP7_payload}    ${LLDP7_ExpectedResponse} 

LLDPGlobal_TxRxMode_TC8
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LLDP8_objURL}    ${LLDP8_reqMethod}    ${LLDP8_payload}    ${LLDP8_ExpectedResponse} 

LLDPGlobal_TxRxMode_TC9
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LLDP9_objURL}    ${LLDP9_reqMethod}    ${LLDP9_payload}    ${LLDP9_ExpectedResponse} 

LLDPGlobal_TxRxMode_TC10
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LLDP10_objURL}    ${LLDP10_reqMethod}    ${LLDP10_payload}    ${LLDP10_ExpectedResponse} 

LLDPGlobal_SnoopAndDrop_TC11
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LLDP11_objURL}    ${LLDP11_reqMethod}    ${LLDP11_payload}    ${LLDP11_ExpectedResponse} 

LLDPGlobal_SnoopAndDrop_TC12
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LLDP12_objURL}    ${LLDP12_reqMethod}    ${LLDP12_payload}    ${LLDP12_ExpectedResponse}


# Loopback
LogicalIntf_Name_TC1
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LO1_objURL}    ${LO1_reqMethod}    ${LO1_payload}    ${LO1_ExpectedResponse}    
	
LogicalIntf_Name_TC2
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${LO2_objURL}    ${LO2_reqMethod}    ${LO2_payload}    ${LO2_ExpectedResponse}   
	
LogicalIntf_Name_TC3
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${LO3_objURL}    ${LO3_reqMethod}    ${LO3_payload}    ${LO3_ExpectedResponse}   
    Run Keyword If    ${result}==False    Log    Loopback has been deleted
    ...    ELSE    FAIL    Object does not exist

LogicalIntf_Name_TC4
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${LO4_objURL}    ${LO4_reqMethod}    ${LO4_payload}    ${LO4_ExpectedResponse}   
    Run Keyword If    ${result}==False    Log    Loopback has been deleted
    ...    ELSE    FAIL    Object does not exist

# VLAN
Vlan_VlanId_TC1
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${VLAN1_objURL}    ${VLAN1_reqMethod}    ${VLAN1_payload}    ${VLAN1_ExpectedResponse}  

Vlan_IntfList_TC2
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${VLAN2_objURL}    ${VLAN2_reqMethod}    ${VLAN2_payload}    ${VLAN2_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    VLAN has been deleted
    ...    ELSE    FAIL    Object does not exist

Vlan_IntfList_TC3
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${VLAN3_objURL}    ${VLAN3_reqMethod}    ${VLAN3_payload}    ${VLAN3_ExpectedResponse}

Vlan_Description_TC4
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${VLAN4_objURL}    ${VLAN4_reqMethod}    ${VLAN4_payload}    ${VLAN4_ExpectedResponse}

Vlan_AdminState_TC5
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${VLAN5_objURL}    ${VLAN5_reqMethod}    ${VLAN5_payload}    ${VLAN5_ExpectedResponse}

Vlan_AdminState_TC6
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${VLAN6_objURL}    ${VLAN6_reqMethod}    ${VLAN6_payload}    ${VLAN6_ExpectedResponse}

Vlan_VlanId_TC7
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${VLAN7_objURL}    ${VLAN7_reqMethod}    ${VLAN7_payload}    ${VLAN7_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    VLAN has been deleted
    ...    ELSE    FAIL    Object does not exist
# BGP CONFIGURATION ######################################################

BGP_TC1
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP1_objURL}    ${BGP1_reqMethod}    ${BGP1_payload}    ${BGP1_ExpectedResponse}    
    
BGP_TC2
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}        ${BGP2_objURL}    ${BGP2_reqMethod}    ${BGP2_payload}    ${BGP2_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    Found Expected Response
    ...    ELSE    FAIL    Object does not exist
BGP_TC3
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP3_objURL}    ${BGP3_reqMethod}    ${BGP3_payload}    ${BGP3_ExpectedResponse}    
    
BGP_TC4
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP4_objURL}    ${BGP4_reqMethod}    ${BGP4_payload}    ${BGP4_ExpectedResponse}    
   
BGP_TC5
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP5_objURL}    ${BGP5_reqMethod}    ${BGP5_payload}    ${BGP5_ExpectedResponse}    
   
BGP_TC6
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP6_objURL}    ${BGP6_reqMethod}    ${BGP6_payload}    ${BGP6_ExpectedResponse}    
    
BGP_TC7
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP7_objURL}    ${BGP7_reqMethod}    ${BGP7_payload}    ${BGP7_ExpectedResponse}    
    
BGP_TC8
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP8_objURL}    ${BGP8_reqMethod}    ${BGP8_payload}    ${BGP8_ExpectedResponse} 
        
    
BGP_TC9
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP9_objURL}    ${BGP9_reqMethod}    ${BGP9_payload}    ${BGP9_ExpectedResponse}    
    
BGP_TC10
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP10_objURL}    ${BGP10_reqMethod}    ${BGP10_payload}    ${BGP10_ExpectedResponse}    
    
BGP_TC11
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP11_objURL}    ${BGP11_reqMethod}    ${BGP11_payload}    ${BGP11_ExpectedResponse}    
    
BGP_TC12
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP12_objURL}    ${BGP12_reqMethod}    ${BGP12_payload}    ${BGP12_ExpectedResponse}    
    
BGP_TC13
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP13_objURL}    ${BGP13_reqMethod}    ${BGP13_payload}    ${BGP13_ExpectedResponse}    
    
BGP_TC14
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP14_objURL}    ${BGP14_reqMethod}    ${BGP14_payload}    ${BGP14_ExpectedResponse}    
   
BGP_TC15
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP15_objURL}    ${BGP15_reqMethod}    ${BGP15_payload}    ${BGP15_ExpectedResponse}    
    
BGP_TC16
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP16_objURL}    ${BGP16_reqMethod}    ${BGP16_payload}    ${BGP16_ExpectedResponse}    
    
BGP_TC17
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP17_objURL}    ${BGP17_reqMethod}    ${BGP17_payload}    ${BGP17_ExpectedResponse}    
    
BGP_TC18
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP18_objURL}    ${BGP18_reqMethod}    ${BGP18_payload}    ${BGP18_ExpectedResponse}    
    
BGP_TC19
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP19_objURL}    ${BGP19_reqMethod}    ${BGP19_payload}    ${BGP19_ExpectedResponse}    
    
BGP_TC20
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${BGP20_objURL}    ${BGP20_reqMethod}    ${BGP20_payload}    ${BGP20_ExpectedResponse}
    Run Keyword If    ${result}==False    Log    Found Expected Response
    ...    ELSE    FAIL    Object does not exist      
    
BGP_TC21
    Run Keyword and continue on Failure    Execute Curl Command       ${DUT1}    ${BGP21_objURL}    ${BGP21_reqMethod}    ${BGP21_payload}    ${BGP21_ExpectedResponse}    
    
BGP_TC22
    Run Keyword and continue on Failure    Execute Curl Command       ${DUT1}    ${BGP22_objURL}    ${BGP22_reqMethod}    ${BGP22_payload}    ${BGP22_ExpectedResponse}
    
BGP_TC23
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP23_objURL}    ${BGP23_reqMethod}    ${BGP23_payload}    ${BGP23_ExpectedResponse}    
   
BGP_TC24
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP24_objURL}    ${BGP24_reqMethod}    ${BGP24_payload}    ${BGP24_ExpectedResponse}    
   
BGP_TC25
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP25_objURL}    ${BGP25_reqMethod}    ${BGP25_payload}    ${BGP25_ExpectedResponse}   

BGP_TC26
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP26_objURL}    ${BGP26_reqMethod}    ${BGP26_payload}    ${BGP26_ExpectedResponse}   

BGP_TC27
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP27_objURL}    ${BGP27_reqMethod}    ${BGP27_payload}    ${BGP27_ExpectedResponse}   

BGP_TC28
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP28_objURL}    ${BGP28_reqMethod}    ${BGP28_payload}    ${BGP28_ExpectedResponse}   

BGP_TC29
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP29_objURL}    ${BGP29_reqMethod}    ${BGP29_payload}    ${BGP29_ExpectedResponse}   

BGP_TC30
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP30_objURL}    ${BGP30_reqMethod}    ${BGP30_payload}    ${BGP30_ExpectedResponse}   

BGP_TC31
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP31_objURL}    ${BGP31_reqMethod}    ${BGP31_payload}    ${BGP31_ExpectedResponse}   

BGP_TC32
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP32_objURL}    ${BGP32_reqMethod}    ${BGP32_payload}    ${BGP32_ExpectedResponse}   


BGP_TC33
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP33_objURL}    ${BGP33_reqMethod}    ${BGP33_payload}    ${BGP33_ExpectedResponse}   


BGP_TC34
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP34_objURL}    ${BGP34_reqMethod}    ${BGP34_payload}    ${BGP34_ExpectedResponse}   

BGP_TC35
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP35_objURL}    ${BGP35_reqMethod}    ${BGP35_payload}    ${BGP35_ExpectedResponse}   

BGP_TC36
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP36_objURL}    ${BGP36_reqMethod}    ${BGP36_payload}    ${BGP36_ExpectedResponse}   

BGP_TC37
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}       ${BGP37_objURL}    ${BGP37_reqMethod}    ${BGP37_payload}    ${BGP37_ExpectedResponse}   

BGP_TC38
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP38_objURL}    ${BGP38_reqMethod}    ${BGP38_payload}    ${BGP38_ExpectedResponse}   

BGP_TC39
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP39_objURL}    ${BGP39_reqMethod}    ${BGP39_payload}    ${BGP39_ExpectedResponse}   

BGP_TC40
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP40_objURL}    ${BGP40_reqMethod}    ${BGP40_payload}    ${BGP40_ExpectedResponse}   

BGP_TC41
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP41_objURL}    ${BGP41_reqMethod}    ${BGP41_payload}    ${BGP41_ExpectedResponse}   

BGP_TC42
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP42_objURL}    ${BGP42_reqMethod}    ${BGP42_payload}    ${BGP42_ExpectedResponse}   

BGP_TC43
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP43_objURL}    ${BGP43_reqMethod}    ${BGP43_payload}    ${BGP43_ExpectedResponse}   

BGP_TC44
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP44_objURL}    ${BGP44_reqMethod}    ${BGP44_payload}    ${BGP44_ExpectedResponse}   

BGP_TC45
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP45_objURL}    ${BGP45_reqMethod}    ${BGP45_payload}    ${BGP45_ExpectedResponse}   

BGP_TC46
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP46_objURL}    ${BGP46_reqMethod}    ${BGP46_payload}    ${BGP46_ExpectedResponse}   

BGP_TC47
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP47_objURL}    ${BGP47_reqMethod}    ${BGP47_payload}    ${BGP47_ExpectedResponse}   

BGP_TC48
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP48_objURL}    ${BGP48_reqMethod}    ${BGP48_payload}    ${BGP48_ExpectedResponse}   

BGP_TC49
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP49_objURL}    ${BGP49_reqMethod}    ${BGP49_payload}    ${BGP49_ExpectedResponse}   

BGP_TC50
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP50_objURL}    ${BGP50_reqMethod}    ${BGP50_payload}    ${BGP50_ExpectedResponse}   

BGP_TC51
    Run Keyword and continue on Failure    Execute Curl Command    ${DUT1}        ${BGP51_objURL}    ${BGP51_reqMethod}    ${BGP51_payload}    ${BGP51_ExpectedResponse}   

BGP_TC52
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}        ${BGP52_objURL}    ${BGP52_reqMethod}    ${BGP52_payload}    ${BGP52_ExpectedResponse}   
    Run Keyword If    ${result}==False    Log    Found Expected Response
    ...    ELSE    FAIL    Object does not exist


#Clean UP ##################################################################

Clean UP 
 
   CLEAN_TC1
   CLEAN_TC2
   CLEAN_TC3
   CLEAN_TC4
   

CLEAN_TC1
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${CP1_objURL}    ${CP1_reqMethod}    ${CP1_payload}    ${CP1_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    IP Unconfigured
    ...    ELSE    FAIL    Object does not exist
    
CLEAN_TC2
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${CP2_objURL}    ${CP2_reqMethod}    ${CP2_payload}    ${CP2_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    IP Unconfigured
    ...    ELSE    FAIL    Object does not exist 
    
CLEAN_TC3
    Run Keyword and continue on Failure    Execute Curl Command     ${DUT1}        ${CP3_objURL}    ${CP3_reqMethod}    ${CP3_payload}    ${CP3_ExpectedResponse}    
    
CLEAN_TC4
    ${result}=    Run Keyword and continue on Failure    execCurlCmd    ${DUT1}    ${CP4_objURL}    ${CP4_reqMethod}    ${CP4_payload}    ${CP4_ExpectedResponse}    
    Run Keyword If    ${result}==False    Log    IP Unconfigured
    ...    ELSE    FAIL    Object does not exist     
 



























