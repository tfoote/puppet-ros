# ros

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with ros](#setup)
    * [What ros affects](#what-ros-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with ros](#beginning-with-ros)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This puppet module provides a simple way to deploy ROS packages onto your system.
For more information on ros visit www.ros.org.

## Module Description

This moddule is designed to install ROS. It should be able to install from
public repositories and be parameterized to use testing or private repositories
as well.

## Setup

### What ros affects

  This will add the ROS apt sources to your list install the standard ros
  toolchain packages as well as a parameterized core package.

  It will also initialize rosdep.


### Beginning with ros

For more information on ROS please visit www.ros.org

## Usage

Standard usage is `include ros`

You can get the latest released version with `puppet module install tfoote/ros`

## Reference

The core element is the `ros` class.

## Limitations

This currently only supports recent Ubuntu distributions.

## Development

Contributions are welcome at https://github.com/tfoote/puppet-ros

## Release Notes/Contributors/Etc

This is a very early stage and active development. All intended features have
not been deployed yet. Do not consider the API stable yet.
