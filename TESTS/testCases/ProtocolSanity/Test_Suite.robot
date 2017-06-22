*** Settings ***
Documentation	        A test suite with tests to perform BGP functional tests on DUT
Metadata 		Version          	 1.0
...	         	More Info         	 For more information about Robot Framework see http://robotframework.org
...               	Author            	 
...               	Date             	   
...	                Executed At  	         ${HOST}
...		        Test Framework           Robot Framework Python

Resource          	Resource.robot

Suite Setup          	Initial Setup

Suite Teardown          CleanUp            

*** Test Cases ***


LLDP
    [Documentation]    Configure LLDP Global and check if all the connected devices are detected and their details are populated.
    Configure LLDP Global
    verify L1 connectivity

ARP
    [Documentation]    Display all the ARP entries and check if the entry is updated once any link goes DOWN.
    Get ARP Entry Table 
    Verify ARP Entry Status After Link is DOWN


BGP  
    [Documentation]    Configure BGP Global, BGP Neighbors and check their neighbor states and Redistribute routes.
    Configure BGP Global
    Configure BGPv4 Neighbors
    Validate BGPv4 Neighbor configuration
    Verify BGP Neighbor state after link flap
    Redistribute connected interfaces and verify routes are present    


