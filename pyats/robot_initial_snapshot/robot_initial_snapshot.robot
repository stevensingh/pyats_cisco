# Take initial snapshot of the operational state of the device
# and save the output to a file

*** Settings ***
# Importing test libraries, resource files and variable files.
Library        ats.robot.pyATSRobot
Library        genie.libs.robot.GenieRobot


*** Variables ***
# Define the pyATS testbed file to use for this run

${testbed}     ../redi_vlab.yaml

*** Test Cases ***
# Creating test cases from available keywords.

Connect
    # Initializes the pyATS/Genie Testbed
    use genie testbed "${testbed}"

    # Connect to both device
    connect to device "N9K1"
    connect to device "N9K2"
    connect to device "N9K3"
    connect to device "N9K4"
    connect to device "N9K5"
    connect to device "N9K6"
    connect to device "N9K7"

Profile the devices
    Profile the system for "config;interface;platform;ospf;arp;routing;vrf;vlan;bgp;vxlan" on devices "N9K1;N9K2;N9K3;N9K4;N9K5;N9K6:N9K7" as "./good_snapshot"
