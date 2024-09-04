# UVM_RAL-Based_Register_File_Verification

This repository contains the source files for the "UVM_RAL-Based_Register_File_Verification" project. This project involves the development of a complete top-level UVM environment to verify a Register File module using the UVM Register Abstraction Layer (RAL). 

## Project Overview

The primary objective of this project is to create a robust UVM testbench to verify the functionality of a Register File. The Register File has several registers, each capable of being written to or read from, based on the provided address and control signals. The testbench utilizes the UVM RAL to generate sequences and perform read/write operations on the Register File.

### RTL Description

The Register File RTL code is defined in `RegisterFile.sv`. It consists of several registers (`rxtx0`, `rxtx1`, `rxtx2`, `rxtx3`, `ctrl`, `divider`, and `ss`) which can be accessed using an address. The module uses a simple read/write mechanism based on the input control signals.

### UVM Testbench

The UVM testbench is organized under the `UVM_Testbench` directory and is structured to provide a comprehensive verification environment for the Register File.

#### Key Components:
- **RegisterFile_adapter.sv**: Provides the adapter for mapping between the UVM RAL and the Register File interface.
- **RegisterFile_agent.sv**: Contains the agent that drives and monitors the Register File.
- **RegisterFile_block.sv**: Defines the register block containing all registers in the Register File.
- **RegisterFile_config.sv**: Provides configuration options for the environment.
- **RegisterFile_driver.sv**: Drives the signals to the DUT based on the sequences.
- **RegisterFile_env.sv**: Top-level environment that instantiates and connects all agents, monitors, and other UVM components.
- **RegisterFile_if.sv**: Defines the interface used by the Register File.
- **RegisterFile_monitor.sv**: Monitors the DUT outputs and sends the observations to the scoreboard.
- **RegisterFile_reg_seq.sv**: Defines sequences for register read/write operations.
- **RegisterFile_sequencer.sv**: Handles the sequences and passes them to the driver.
- **RegisterFile_seq_item.sv**: Defines the sequence item for the UVM sequences.
- **RegisterFile_test.sv**: Contains the UVM test that runs the verification.
- **RegisterFile_top.sv**: Top-level module for simulation.
- **RegisterFile_write_sequence.sv**: A specific sequence for writing data to the Register File.
- **Registers.sv**: Defines the registers used in the Register File.
- **shared_pkg.sv**: Shared package containing common parameters and utilities.

### Simulation

The `Simulation` directory contains the simulation setup:
- **run_RegisterFile.do**: Simulation script for running the Register File testbench.
- **src_files.list**: A list of source files to be compiled for the simulation.

## Directory Structure

```
UVM_RAL-Based_Register_File_Verification
├───RTL
│       RegisterFile.sv
│
├───Simulation
│       run_RegisterFile.do
│       src_files.list
│
└───UVM_Testbench
        RegisterFile_adapter.sv
        RegisterFile_agent.sv
        RegisterFile_block.sv
        RegisterFile_config.sv
        RegisterFile_driver.sv
        RegisterFile_env.sv
        RegisterFile_if.sv
        RegisterFile_monitor.sv
        RegisterFile_reg_seq.sv
        RegisterFile_sequencer.sv
        RegisterFile_seq_item.sv
        RegisterFile_test.sv
        RegisterFile_top.sv
        RegisterFile_write_sequence.sv
        Registers.sv
        shared_pkg.sv
```

## Getting Started

### Prerequisites

- ModelSim/QuestaSim for simulation
- Quartus Prime for synthesis, place-and-route, and timing analysis

### Running Simulations

1. Clone the repository by typing the following command in your terminal
```bash
git clone https://github.com/amrelbatarny/UVM_RAL-Based_Register_File_Verification
```
2. Open ModelSim/QuestaSim

3. From the `File` menu, click on `Change directory` and navigate to the `Simulation` directory

4. From the `Transcript` window run the following TCL command to run the script file
```tcl
do run_RegisterFile.do
```

## Contribution

We welcome contributions to this educational project. Feel free to submit pull requests for improvements or additional features.

## Contact

Click on the image below

<a href="https://beacons.ai/amrelbatarny" target="_blank">
  <img align="left" alt="Beacons" width="180px" src="https://www.colormango.com/development/boxshot/beacons-ai_154511.png" />
</a> 
<br>
