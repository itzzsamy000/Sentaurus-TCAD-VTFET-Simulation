<div align="center">

<h1>
  <img src="https://img.shields.io/badge/âš¡-VTFET%20TCAD%20Simulation-blueviolet?style=for-the-badge" alt="VTFET"/>
</h1>

<h2>ðŸ”¬ Sentaurus TCAD â€” Vertical Tunnel Field-Effect Transistor</h2>

[![Synopsys](https://img.shields.io/badge/Tool-Synopsys%20Sentaurus-blue?style=flat-square&logo=synopsys)](https://www.synopsys.com/)
[![TCAD](https://img.shields.io/badge/Type-TCAD%20Simulation-green?style=flat-square)](https://github.com/itzzsamy000/Sentaurus-TCAD-VTFET-Simulation)
[![License](https://img.shields.io/badge/License-Academic-orange?style=flat-square)](LICENSE)
[![GitHub](https://img.shields.io/badge/GitHub-itzzsamy000-black?style=flat-square&logo=github)](https://github.com/itzzsamy000)
[![Branch](https://img.shields.io/badge/Branch-main-brightgreen?style=flat-square&logo=git)](https://github.com/itzzsamy000/Sentaurus-TCAD-VTFET-Simulation)

</div>

---

## ðŸ“‹ Project Description

This project contains a complete **Synopsys Sentaurus TCAD** simulation of a **Vertical Tunnel Field-Effect Transistor (VTFET)** â€” a next-generation transistor architecture exploiting **Band-to-Band Tunneling (BTBT)** as its primary transport mechanism.

Unlike conventional MOSFETs, TFETs can achieve **sub-60 mV/decade subthreshold swing**, making them ideal candidates for **ultra-low-power digital applications** in the post-silicon era.

---

## ðŸ”„ Simulation Flow Diagram

```mermaid
flowchart TD
    classDef input   fill:#4A90D9,stroke:#2C5F8A,color:#fff
    classDef tool    fill:#7B2D8B,stroke:#4A1A5C,color:#fff
    classDef process fill:#E67E22,stroke:#A04000,color:#fff
    classDef output  fill:#27AE60,stroke:#1A6B3C,color:#fff

    A1["ðŸ“„ sde_dvs.cmd\nDevice Geometry Script"]:::input
    A2["ðŸ§¬ Material Params\nGe Â· Si Â· HfO2 Â· Metal"]:::input

    B["ðŸ—ï¸ STAGE 1 â€” Sentaurus SDE\nStructure Editor"]:::tool
    B1["ðŸ“ Define 2D Geometry\nGe Source Â· Si Channel Â· HfOâ‚‚ Â· Metal Gate"]:::process
    B2["âš—ï¸ Assign Doping Profiles\np+ Ge Â· p Si Â· LDD Pocket Â· n+ Drain"]:::process
    B3["ðŸ•¸ï¸ Generate Mesh\nsnmesh box method with Refinement"]:::process

    C[("ðŸ’¾ REFERENCE_msh.tdr\nMesh File")]:::output

    D["âš¡ STAGE 2 â€” Sentaurus Device\nElectrical Solver"]:::tool
    D1["ðŸ”‹ Boundary Conditions\nVds = 0.5 V Â· Vgs = 0 V Â· Source GND"]:::process
    D2["ðŸ”¬ Physics Models\nFermi-Dirac Â· BGN Â· BTBT Â· SRH Â· Mobility"]:::process
    D3["ðŸ“Š Quasistationary Sweep\nVgs 0 â†’ 1.2 V Â· Coupled Poisson + e + h"]:::process

    E1[("ðŸ’¾ REFERENCE_des.tdr\n2D Plot Data")]:::output
    E2[("ðŸ’¾ REFERENCE_des.plt\nIds-Vgs Current Data")]:::output

    F["ðŸ“ˆ STAGE 3 â€” Sentaurus Visual\nPost-Processing and Visualization"]:::tool
    F1["ðŸ—ºï¸ 2D Color Maps\nDoping Â· BTBT Â· Band Energy Â· E-Field"]:::process
    F2["ðŸ“‰ Transfer Characteristics\nIds vs Vgs â€” Log and Linear Scale"]:::process
    F3["ðŸŒˆ Band Diagrams\nEc Â· Ev Â· Efn Â· Efp along cut-lines"]:::process

    G1["âœ… Doping Map + Mesh View"]:::output
    G2["âœ… Ids-Vgs Curve\nLog + Linear + Multi-Run"]:::output
    G3["âœ… BTBT Map + Band Diagram"]:::output

    A1 --> B
    A2 --> B
    B --> B1 --> B2 --> B3 --> C
    C --> D
    A2 --> D
    D --> D1 --> D2 --> D3
    D3 --> E1
    D3 --> E2
    E1 --> F
    E2 --> F
    F --> F1 --> G1
    F --> F2 --> G2
    F --> F3 --> G3
```

> ðŸ’¡ **Flow:** Input Scripts & Material Params â†’ **SDE** *(Geometry + Doping + Mesh)* â†’ **sdevice** *(Physics + Sweep)* â†’ **SVisual** *(Plots + Band Diagrams)* â†’ **Results**

---

## âœ¨ Key Features

| Feature | Details |
|:---|:---|
| ðŸ—ï¸ **Device Structure** | 2D VTFET built with Sentaurus SDE |
| ðŸ§ª **Heterostructure** | Ge source / Si channel / HfOâ‚‚ oxide / Metal gate |
| âš—ï¸ **Doping Profiles** | pâº Ge source Â· p Si channel Â· LDD pocket Â· nâº Si drain |
| ðŸ”‹ **Gate Dielectric** | High-k HfOâ‚‚ (1 nm) with metal gate |
| ðŸ“ **Physics Models** | Fermi-Dirac Â· BGN Â· BTBT Â· SRH Â· Mobility |
| ðŸ“ˆ **Simulation** | Idsâ€“Vgs quasistationary sweep (Vgs: 0 â†’ 1.2 V) |
| ðŸ“Š **Post-Processing** | SVisual scripts for result visualization |

---

## ðŸ”§ Technologies Used

<div align="center">

| Tool | Purpose |
|:---:|:---:|
| ![SDE](https://img.shields.io/badge/Sentaurus%20SDE-Device%20Geometry-blue?style=flat-square) | Device geometry & mesh generation |
| ![SDEVICE](https://img.shields.io/badge/Sentaurus%20Device-Electrical%20Solver-red?style=flat-square) | Band-to-Band tunneling simulation |
| ![SVISUAL](https://img.shields.io/badge/SVisual-Post%20Processing-green?style=flat-square) | Result visualization & plotting |
| ![SWB](https://img.shields.io/badge/Sentaurus%20Workbench-Flow%20Management-orange?style=flat-square) | Simulation flow management |
| ![Scheme](https://img.shields.io/badge/Scheme-SDE%20Scripting-purple?style=flat-square) | Device definition scripts |

</div>

---

## ðŸ“ Project Structure

```
Sentaurus-TCAD-VTFET-Simulation/
â”‚
â”œâ”€â”€ ðŸ“„ sde_dvs.cmd          â† SDE: device geometry, contacts, doping, meshing
â”œâ”€â”€ ðŸ“„ pp1_dvs.cmd          â† SDE post-processing script (variant)
â”œâ”€â”€ ðŸ“„ sdevice_des.cmd      â† sdevice: physics, solver, Ids-Vgs sweep
â”œâ”€â”€ ðŸ“„ pp2_des.cmd          â† sdevice post-processing script
â”œâ”€â”€ ðŸ“„ sdevice.par          â† Global sdevice parameter overrides
â”‚
â”œâ”€â”€ ðŸ§¬ Germanium.par        â† Germanium material parameters
â”œâ”€â”€ ðŸ§¬ Silicon.par          â† Silicon material parameters
â”œâ”€â”€ ðŸ§¬ HfO2.par             â† HfOâ‚‚ gate dielectric parameters
â”œâ”€â”€ ðŸ§¬ Metal.par            â† Metal gate parameters
â”‚
â”œâ”€â”€ ðŸ–¼ï¸  Screenshot/          â† Simulation result screenshots (8 images)
â”‚
â””â”€â”€ ðŸ“ README.md            â† Project documentation
```

---

## ðŸ“– Key Simulation Parameters

<div align="center">

| Parameter | Value |
|:---:|:---:|
| Gate Dielectric | HfOâ‚‚ â€” 1 nm |
| Gate Metal | 1 nm |
| Drain Bias (Vds) | 0.5 V |
| Gate Sweep (Vgs) | 0 â†’ 1.2 V |
| Channel Material | Silicon (Si) |
| Source Material | Germanium (Ge) |
| Tunneling Model | Band-to-Band (BTBT) |
| Subthreshold Model | Fermi-Dirac + OldSlotboom BGN |

</div>

---

## ðŸ–¼ï¸ Simulation Results & Screenshots

> All results generated using **Synopsys Sentaurus Visual (SVisual)** post-processor.

---

### ðŸ”µ Device Structure â€” Doping Concentration Map

<div align="center">
<table>
  <tr>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 164918.png" width="100%" alt="Doping Concentration Map"/>
      <br/>
      <b>ðŸ—ºï¸ Doping Concentration Map</b>
      <br/>
      <sub>2D color map of doping profile across the VTFET structure (pâº Ge source â†’ nâº Si drain)</sub>
    </td>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 165025.png" width="100%" alt="Mesh Structure with Doping"/>
      <br/>
      <b>ðŸ•¸ï¸ Mesh Structure + Doping (SDE View)</b>
      <br/>
      <sub>Triangular mesh generated by snmesh with doping concentration overlay</sub>
    </td>
  </tr>
</table>
</div>

---

### ðŸ“ˆ Transfer Characteristics â€” Ids vs Vgs

<div align="center">
<table>
  <tr>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 165922.png" width="100%" alt="Ids-Vgs Log Scale"/>
      <br/>
      <b>ðŸ“‰ Idsâ€“Vgs (Log Scale)</b>
      <br/>
      <sub>Transfer characteristics showing BTBT switching behaviour on logarithmic Y-axis</sub>
    </td>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 171553.png" width="100%" alt="Ids-Vgs Linear Scale"/>
      <br/>
      <b>ðŸ“ˆ Idsâ€“Vgs (Linear Scale)</b>
      <br/>
      <sub>Transfer characteristics on linear scale â€” drain current vs gate voltage sweep</sub>
    </td>
  </tr>
</table>
</div>

---

### ðŸŒˆ Multi-Run Comparison & Band Diagrams

<div align="center">
<table>
  <tr>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 172243.png" width="100%" alt="Multi-Run Ids Comparison"/>
      <br/>
      <b>ðŸ“Š Multi-Run Ids Comparison</b>
      <br/>
      <sub>Overlay of transfer curves from REFERENCE_des, _02_des, and _03_des runs</sub>
    </td>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 172659.png" width="100%" alt="Band Diagram + BTBT Generation"/>
      <br/>
      <b>âš¡ Band-to-Band Generation + Band Diagram</b>
      <br/>
      <sub>2D BTBT generation map (left) and energy band diagram along cut-line (right)</sub>
    </td>
  </tr>
</table>
</div>

---

### ðŸ”¬ Conduction Band & Electric Field Analysis

<div align="center">
<table>
  <tr>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 172754.png" width="100%" alt="Conduction Band + Band Diagram"/>
      <br/>
      <b>ðŸŸ  Conduction Band Energy + Band Diagram</b>
      <br/>
      <sub>ConductionBandEnergy 2D map overlaid with complete energy band diagram</sub>
    </td>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 172807.png" width="100%" alt="Electric Field + Band Diagram"/>
      <br/>
      <b>âš¡ Electric Field + Band Diagram</b>
      <br/>
      <sub>Abs(ElectricField) 2D distribution and corresponding energy band cut-line plot</sub>
    </td>
  </tr>
</table>
</div>

---

## âš™ï¸ Prerequisites

- âœ… **Synopsys Sentaurus TCAD** (version T-2022.03 or later recommended)
- âœ… Valid **Synopsys FlexLM license**
- âœ… Linux/Unix environment (standard for Sentaurus), or Windows with Cygwin

---

## ðŸš€ How to Run

### Step 1 â€” Generate Device Mesh (SDE)
```bash
sde -e -l sde_dvs.cmd
```
> Outputs: `REFERENCE_msh.tdr` â€” the 2D VTFET mesh file

### Step 2 â€” Run Electrical Simulation (sdevice)
```bash
sdevice sdevice_des.cmd
```
> Outputs: `REFERENCE_des.tdr` (2D plots) Â· `REFERENCE_des.plt` (Idsâ€“Vgs data)

### Step 3 â€” Visualize Results (SVisual)
Open `REFERENCE_des.plt` in **SVisual** to plot transfer characteristics.

---

## ðŸ“„ License

This project is for **academic and research purposes**. Please cite appropriately if used in publications.

---

## ðŸ‘¤ Author

<div align="center">

**Satish** â€” VTFET TCAD Simulation  
[![GitHub](https://img.shields.io/badge/GitHub-itzzsamy000-181717?style=for-the-badge&logo=github)](https://github.com/itzzsamy000)

*Simulation performed at IIIT Bhagalpur â€” VLSI Lab*

</div>
