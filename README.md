# 130nm Dickson Charge Pump for PLL applications  
In this repository, the design of a Dickson Charge Pump in 130nm tech node - which is suitable for PLL applications is presented. The design was strictly done using open source tools, and the device modeling was done using Sky130 PDK from Google Skywater. The design specs can be viewed [here](https://drive.google.com/file/d/1UTvbswT-GWP-INxl1nJZeUJVQ8TjLF_6/view?usp=sharing).

# Introduction  
The Dickson Charge Pump is a DC-DC converter that produces a higher voltage than the supply voltage. Unlike the boost switching DC-DC converters which require large inductors, the Dickson Charge pump is designed using MOSFETs as switches, and they utilize energy-transfer capacitors instead of inductors, therefore the size, non-linearity, and interference issues related to the usage of inductors in ICs are being eliminated. This circuit is widely implemented in various IC applications especially in non-volatile memories like the Flash and EEPROM.

## Dickson Charge Pump in PLLs  
That being said, there is yet another interesting application of Dickson Charge Pump and that is - Dickson Charge Pumps being used in Phase Locked Loops. Charge Pump based Phase Locked Loops (PLL) are widely used as a clock generator in a variety of applications including microprocessor, wireless receivers, and disk drive electronics. The charge pump circuit is the heart of PLL. The chare pump (CP) based PLL is the most popular architecture. The CP-PLL derives its name from the fact that the phase detector (PD) output is a current source as opposed to a voltage source and "pumps" current into and out of the loop-filter. This form of PLL is popular because it is adaptable to integration in microcircuit devices. This type of the CPLL consists of a phase frequency detector (PFD), a CP, a passive loop filter (LF), and a voltage controlled oscillator (VCO). In a PLL the phase difference between the reference signal (often from a crystal oscillator) and the output signal is translated into two signals – UP and DN. The output of the PFD is fed to a charge pump circuit to get a constant and 'pumped' output. The charge pump output is passed through a low pass filter to generate the control voltage for the VCO circuit. The block diagram of a charge pump based PLL is shown below.  

![PLL based Charge pump block diagram](https://github.com/Charaan27/avsddac_1v8_sky130/blob/main/screenshots/pll_block_dig.PNG)

While there are many types of charge pumps available out there - this design attempts to design a Dickson Charge Pump which is suitable for PLL applications, due to the aforementioned advantages of Dickson Charge Pump.  

The block diagram of the proposed Dickson Charge Pump can be found below  

![Dickson block diagram](https://github.com/Charaan27/avsddac_1v8_sky130/blob/main/screenshots/dcp_block_dig.PNG)  

# Specifications  
The specifications of the designed Charge Pump can be found below:  

| Parameter                   | Symbol | Min Value | Typical Value | Max Value | Unit |
|-----------------------------|--------|-----------|---------------|-----------|------|
| Supply Voltage              | Vcc    | 1.7       | 1.8           | 3.5       | V    |
| Operating Temperature Range | T      | -40       | +27           | +85       | °C   |
| Reference Frequency         | Fref   | 0.32      | 2             | 10        | MHz  |
| Input logic-level high      | Vih    | 0.7Vcc    | -             | Vcc+0.3   | V    |
| Rise Time                   | Trise  | 10        | 15            | 150       | us   |
| Output voltage              | CP_OUT | 4.3       | 4.7           | 5.5       | V    |  


# Configurations and Open Souce Tools used:  
- **Operating System** : Windows 10 and/or [Ubuntu 18.04](https://releases.ubuntu.com/18.04.5/)  

> NOTE : Windows 10 can be used only to simulate pre_layout files. Whereas Ubuntu can be used to execute all the files of this project. So it is generally preferred to use Ubuntu for executing this repo. Ubuntu can be installed in three ways.  
> 1. Using Oracle's Virtual Box or VMWare
> 2. By installing Windows Subsystem for Linux (WSL)
> 3. By Dual Booting the PC with Ubuntu  
> To execute this repo, we can go with the first method as it is easy to install and operate. Virtualbox can be downloaded through this [link](https://www.virtualbox.org/wiki/Downloads).  

- [Ngspice](http://ngspice.sourceforge.net/) for circuit simulation :- Ngspice is a general-purpose, open-source circuit simulation program for nonlinear and linear analyses. Circuits may contain resistors, capacitors, inductors, mutual inductors, independent or dependent voltage and current sources, loss-less and lossy transmission lines, switches, uniform distributed RC lines, and the five most common semiconductor devices: diodes, BJTs, JFETs, MESFETs, and MOSFETs.  

- [eSim](https://esim.fossee.in/home) for circuit design :- eSim (previously known as Oscad / FreeEDA) is a free/libre and open source EDA tool for circuit design, simulation, analysis and PCB design. It is an integrated tool built using free/libre and open source software such as KiCad, Ngspice and GHDL.  

- [Sky130 PDK](https://github.com/google/skywater-pdk) for device modeling :- Sky130 PDK is an open-source Process Design Kit developed by Google Skywater. It is a 130nm technology node that can be used for modeling the components of the circuitry in 130nm. This can be used to create manufacturable designs at SkyWater’s facility.  

- [Magic](http://opencircuitdesign.com/magic/magic_docs.html) for circuit layout design :- Magic is an interactive system for creating and modifying VLSI circuit layouts. With Magic, you use a color graphics display and a mouse to design basic cells and to combine them hierarchically into large structures. Magic is different from other layout editors you may have used. The most important difference is that Magic is more than just a color painting tool: it understands quite a bit about the nature of circuits and uses this information to provide you with additional operations. For example, Magic has built-in knowledge of layout rules; as you are editing, it continuously checks for rule violations. Magic also knows about connectivity and transistors, and contains a built-in hierarchical circuit extractor. Magic also has a plow operation that you can use to stretch or compact cells. Magic has (simple) routing tools that you can use to make the global interconnections in your circuits.  

# Installation:  

## Pre Layout:  

- ### eSim ###
  - **Linux**
    - Download eSim installer for Linux from this [link](http://esim.fossee.in/downloads) to a local directory and unpack it. You can also unpack the installer through the terminal. Open the terminal and navigate to the directory where this INSTALL file is located. Use the following command to unpack:  
  
      ```
      $ unzip eSim-2.1.zip
      ```
    - To install eSim and other dependencies run the following command:  
  
      ```
      $ cd eSim-2.1
      $ chmod +x install-eSim.sh
      $ ./install-eSim.sh --install
      ```
    - To run eSim from the terminal, type:  

      ```
      $ esim
      ```
      or you can double click on eSim icon created on the Desktop after installation.  
    
  - **Windows**
    - Download the latest eSim release for Windows OS from this [link](https://esim.fossee.in/downloads)
    - Locate the installer file in the folder where your downloaded files are kept.
    - Double click on the file.
    - If a pop-up window appears asking *"Do you want to allow the following program from an unknown publisher to make changes to this computer?"*, click **YES**.
    - Then in the ”License Agreement” window, select the **I Agree** option.
    - Click **Next** when the program asks for you to ”Choose Install Location”. We have taken care to auto-select the destination folder path.
    - In the next window that appears, select **Install**.
    - A progress bar will appear; once it reaches 100%, ”Installation Complete” message will be shown at the top of the eSim setup window. Click on **Close**. eSim shortcut icon will be  on your Desktop.  

- ### Ngspice ###
  - **Linux**
    - To make sure that the package is up to date, run the command below in the terminal:  
  
      ```
      $ sudo apt-get update -y
      ```  
    - Now, install ngspice using the command below:  
    
      ```
      $ sudo apt-get install -y ngspice  
      ```  
  - **Windows**
    - The eSim installer also installs Ngspice, so one can access ngspice by running the **ngspice.exe** file present in the eSim installation folder.  

- ### Sky130 PDK ###:  
  - **Windows**
    - Download ZIP file or clone this [repository](https://github.com/google/skywater-pdk)  

## Layout and Post-Layout (Only on Linux - NOT POSSIBLE ON WINDOWS OS):  

- First, let us run a check on the versions, using the command below:  

  ```
  $ sudo apt-get update
  ```  
  
- ### Git and Make ### *(Ignore if already installed)*
  - Install Git and Make using the commands below:  

    ```
    $ sudo apt install git
    $ sudo apt install make
    ```  

- ### Magic VLSI ###
  - Navigate to the current working directory and download Magic using the command below:  

    ```
    $ git clone git://opencircuitdesign.com/magic
    ```  
  
  - Now, navigate to the Magic Folder:  

    ```
    $ cd magic
    ```  
  
  - Compile and Install:  

    ```
    $ sudo ./configure
    $ sudo make
    $ sudo make install
    ```  
  
  - Exit Magic Directory:  

    ```
    $ cd ..
    ```  
  
- ### Sky130 PDK and Magic Integration ###  

  - First, let us download Sky130 PDK using the followinf command:  

    ```
    $ git clone https://github.com/google/skywater-pdk
    ```  
  
  - Next, we we will need OpenPDK to install & generate the required tech files for magic vlsi:  

    ```
    $ git clone git://opencircuitdesign.com/open_pdks
    $ cd open_pdks
    $ git checkout open_pdks-1.0
    ```  
  
  - Now, we have to configure sky130 PDK:  

    ```
    $ mkdir sky130_target
    $ sudo ./configure --enable-sky130-pdk=<skywater_root_dir>/skywater-pdk/libraries --with-sky130-local-path=<your_target_install_dir>
    ```  
  
  > NOTE: For those using home directory, do NOT use ~/<your_dir>, please use the full directory: /home/<username>/<your_dir>  
  
  - Next, run the following commands, inside the open_pdks root directory:  
  
    ```
    cd sky130
    sudo make
    sudo make install
    ```
  
  - Integrate Sky130 PDK with Magic. As the skywater tech files are not installed in magic’s library, we need to create a symbolic link in order to use the tech files for drawing layout. This can be done using:  
  
    ```
    $ sudo ln -s <sky130A_install_root_dir>/sky130A/libs.tech/magic/* /usr/local/lib/magic/sys/
    ```  
  
  - Now, come back to the current working directory, and check whether the files are properly installed using the command below:  
  
    ```
    $ tcsh
    $ sudo magic -T sky130A
    ```  
  
# Pre Layout:  
## Tools used:  
The tools used in this stage were:  
- eSim
- ngspice
- sky130 pdk  

First, the above tools are required to be installed in the machine, before proceeding further. The respective tools can be installed by referring the manuals whose links have been given in the open source tools section. Instead of cloning the entire Sky130 repo, one can also clone the library file **sky130_fd_pr** alone, as the corners present in this library file are only going to be used. This can be done by running the following command ```$ git clone https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_pr``` in the terminal.  

## Circuit:  
The Dickson Charge Pump consists of the pumping capacitors which are arranged in a parallel fashion, which reduces the output impedance and increases the voltage gain as the number of stages increases. A diode-connected NMOS transistor is used for the construction of this CP. Here Vdd is the power supply voltage, NMOS transistor acts as switches, and V1 is the node voltage at the upper plate of the capacitor. Two clock sources UP and DN which have the same peak voltage, complementary phase, and are non-overlapping are applied to each stage in an alternative manner. When UP is low, DN will be high due to the complementary phase and subsequently, the switch MD1 is turned ON and the first capacitor is charged by the voltage source Vdd to the maximum voltage of Vdd - Vt at node V1. In the next half clock, MD1 turns OFF, and the voltage Vdd provided by UP, gets added to the voltage Vdd - Vt which is already present, and as a result, the voltage at node V2 becomes 2Vdd - Vt. At the same period, the switch MD2 becomes ON and the next capacitor is charged through MD2 by the voltage 2Vdd- Vt, to a maximum voltage of 2Vdd - 2Vt. In this way, the charge gets pumped from one stage to another and the node voltages at pumping capacitors of higher stages increase continuously. The final capacitor doesn’t add any voltage as it is grounded and it smoothens the output. The designed circuit can be found below.  

![Dickson Circuit](https://github.com/Charaan27/avsddac_1v8_sky130/blob/main/screenshots/dcp_ckt.PNG)  

## Clock signal from PFD:  
The pulses coming from the PFD operate the Charge Pump. According to the target specs, we get pulses of 2MHz frequency and with Vin of 2.1V. This voltage is on par with standard conventions as defined in Semiconductor IP cores - which state that the Vih of PFD pulses is an excess of 30% of Vdd (i.e.) Vih = Vdd + 0.3V. In this case, Vdd is taken as 1.8V hence we expect a Vin of 2.1V. The simulation of the same can be found below. Please note that, the two signals coming from the PFD are complementry to each other in terms of phase are are obtained during the PLL mode.  

![UP and DN](https://github.com/Charaan27/avsddac_1v8_sky130/blob/main/screenshots/pre_lay_updn.jpg)  

## Pre-Layout Output  
Now we look into the output of the charge pump for 1.8V Vdd and 2.1V Vih. We get a 'pumped' voltage which saturates at 5.3V. We now calculate the rise time which is:  

> Rise Time = (Time taken to reach 90% of output) - (Time taken to reach 10% of output)  

The Rise time is found out to be **143us**.  

> Note: The output of the Charge Pump also depends on the Frequency of the PFD pulses. Changing the frequency will in turn affect the output of the Charge Pump. It is advisable to stick to the standard convention (i.e.) 2MHz.  

The Pre-Layout output image can be found below:  

![CP_OUT](https://github.com/Charaan27/avsddac_1v8_sky130/blob/main/screenshots/pre_lay_cp_output.jpg)  

# Layout:  
## Tools used:  
- Magic
- Sky130 PDK
- ngspice
- Open_pdk (for integrating magic with sky130)  

> NOTE : Magic layout tool cannot be used on Windows OS, so one has to install Ubuntu (preferebly Ubuntu 18.04), to perform the simulation. Ubuntu can be installed either by installing [Oracle's Virtualbox](https://www.virtualbox.org/wiki/Downloads), or by using Windows Subsystem Linux (WSL) on Windows or by Dual - Booting Windows with Ubuntu. Installing Ubuntu with VirtualBox is preferred. For more info one can refer this [Udemy Couse](https://www.udemy.com/course/vsd-a-complete-guide-to-install-open-source-eda-tools/) by Mr. Kunal Ghosh.  

Utmost care should be given during the installation of the tools, especially during the Magic + Sky130 integration part. One can refer this [blog](https://lootr5858.wordpress.com/2020/10/06/magic-vlsi-skywater-pdk-local-installation-guide/) to perform the installation.  

After the installation, create a new directory to perform the layout. This directory can be created anywhere as per the users wish, by entering the following command ```mkdir dir_name``` in the terminal.  

> NOTE : Your newly created directory must contain the sky130_fd_pr folder. Copy that folder into this new directory.  

The tech file that is used in this design is sky130A.tech. This can be obtained throught this [link](https://github.com/vsdip/avsddac_3v3_sky130_v2/blob/main/Layout%20files/sky130A.tech). The contents of this file are required to be present inside the newly created directory with the ext .tech.  

The magic layout with the tech file can be launched using the command ```magic -T sky130A.tech```  

## Capacitor:  
A total of five capacitors are used for a four stage Dickson Charge Pump. The Magic Layout of the capacitor used in our design is shown below.  

![magic_cap](https://github.com/Charaan27/avsddac_1v8_sky130/blob/main/screenshots/magic_cap_layout.PNG)  

## NMOS:  
A total of five NMOS transistors are used for a four Stage Dickson Charge Pump. The Magic Layout of the capacitor used in our design is shown below.  

![magic_nmos](https://github.com/Charaan27/avsddac_1v8_sky130/blob/main/screenshots/magic_nmos_layout.PNG)  

> NOTE: Substrate of the NMOS layout is not covered in the above image, and can be found in the overall circuit layout. It is to be noted that the substrate is common to all the NMOS transistors used.  

## Circuit:  
The overall layout of the circuit can be found below.  

![magic_circuit_layout](https://github.com/Charaan27/avsddac_1v8_sky130/blob/main/screenshots/magic_circuit_layout.PNG)  

> NOTE: The magic layout of the circuit, was carefully made in a way such that no DRC errors would pop up. Based on the DRC errors that came with the consideration of initial model parameters, the model parameters (mainly w and l) were altered such that no DRC errors would appear.  

# Post - Layout:  

## Resistor:  

Normally, a Dickson Charge Pump would not require a load resistor, but for simulation purposes, a load resistor of approximately 5Mohms was connected, across which the output voltage was taken. The resistance of the resistor can be found below.  

![resistor_op](https://github.com/Charaan27/avsddac_1v8_sky130/blob/main/screenshots/resistor_output.PNG)  

## Charge Pump output:  
The output of the charge pump, is taken across the 5Mohm load resistor. The difference with pre-layout output arises due to the change in model parameters after due consideration of DRC errors. The output voltage saturates around 4.6 - 4.7V. The rise time taken is 14.53us which has huge difference from the pre-layout simulation. This indicates that after layout, the design rises up to output voltage in lesser time.  

![post_lay_cp_out](https://github.com/Charaan27/avsddac_1v8_sky130/blob/main/screenshots/post_lay_cp_output.PNG)  

# Aknowledgements:  
- Kunal Ghosh, Co-Founder of VLSI System Design (VSD) Corp. Pvt. Ltd. - kunalghosh@gmail.com  

# References:  
- [Design of Charge Pump Circuit for PLL Application: A review](https://www.ijert.org/research/design-of-charge-pump-circuit-for-pll-application-a-review-IJERTV4IS050415.pdf)
- [Dynamic gate and substrate control charge pump circuits: a review](https://www.researchgate.net/publication/275247649_Dynamic_gate_and_substrate_control_charge_pump_circuits_a_review)
- [Design and analysis of different type of charge pump using CMOS technology](https://ieeexplore.ieee.org/document/7732062)
- [Analysis and design of dickson charge pump for EEPROM in 180nm CMOS technology](https://ieeexplore.ieee.org/document/8354067)
