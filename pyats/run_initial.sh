#!/bin/bash
scl enable rh-python36 'cd pyats/robot_initial_snapshot/ && robot --outputdir compare/ robot_initial_snapshot.robot'
