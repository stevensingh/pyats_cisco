#!/bin/bash
scl enable rh-python36 'cd pyats/robot_compare_snapshot/ && robot --outputdir clean/ robot_compare_snapshot.robot'

