<div align="center">

<h1>
  <img src="https://img.shields.io/badge/⚡-VTFET%20TCAD%20Simulation-blueviolet?style=for-the-badge" alt="VTFET"/>
</h1>

<h2>🔬 Sentaurus TCAD — Vertical Tunnel Field-Effect Transistor</h2>

[![Synopsys](https://img.shields.io/badge/Tool-Synopsys%20Sentaurus-blue?style=flat-square&logo=synopsys)](https://www.synopsys.com/)
[![TCAD](https://img.shields.io/badge/Type-TCAD%20Simulation-green?style=flat-square)](https://github.com/itzzsamy000/Sentaurus-TCAD-VTFET-Simulation)
[![License](https://img.shields.io/badge/License-Academic-orange?style=flat-square)](LICENSE)
[![GitHub](https://img.shields.io/badge/GitHub-itzzsamy000-black?style=flat-square&logo=github)](https://github.com/itzzsamy000)
[![Branch](https://img.shields.io/badge/Branch-main-brightgreen?style=flat-square&logo=git)](https://github.com/itzzsamy000/Sentaurus-TCAD-VTFET-Simulation)

</div>

---

## 📋 Project Description

This project contains a complete **Synopsys Sentaurus TCAD** simulation of a **Vertical Tunnel Field-Effect Transistor (VTFET)** — a next-generation transistor architecture exploiting **Band-to-Band Tunneling (BTBT)** as its primary transport mechanism.

Unlike conventional MOSFETs, TFETs can achieve **sub-60 mV/decade subthreshold swing**, making them ideal candidates for **ultra-low-power digital applications** in the post-silicon era.

---

## 🔄 Simulation Flow Diagram

```mermaid
flowchart TD
    classDef input   fill:#4A90D9,stroke:#2C5F8A,color:#fff
    classDef tool    fill:#7B2D8B,stroke:#4A1A5C,color:#fff
    classDef process fill:#E67E22,stroke:#A04000,color:#fff
    classDef output  fill:#27AE60,stroke:#1A6B3C,color:#fff

    A1["📄 sde_dvs.cmd\nDevice Geometry Script"]:::input
    A2["🧬 Material Params\nGe · Si · HfO2 · Metal"]:::input

    B["🏗️ STAGE 1 — Sentaurus SDE\nStructure Editor"]:::tool
    B1["📐 Define 2D Geometry\nGe Source · Si Channel · HfO₂ · Metal Gate"]:::process
    B2["⚗️ Assign Doping Profiles\np+ Ge · p Si · LDD Pocket · n+ Drain"]:::process
    B3["🕸️ Generate Mesh\nsnmesh box method with Refinement"]:::process

    C[("💾 REFERENCE_msh.tdr\nMesh File")]:::output

    D["⚡ STAGE 2 — Sentaurus Device\nElectrical Solver"]:::tool
    D1["🔋 Boundary Conditions\nVds = 0.5 V · Vgs = 0 V · Source GND"]:::process
    D2["🔬 Physics Models\nFermi-Dirac · BGN · BTBT · SRH · Mobility"]:::process
    D3["📊 Quasistationary Sweep\nVgs 0 → 1.2 V · Coupled Poisson + e + h"]:::process

    E1[("💾 REFERENCE_des.tdr\n2D Plot Data")]:::output
    E2[("💾 REFERENCE_des.plt\nIds-Vgs Current Data")]:::output

    F["📈 STAGE 3 — Sentaurus Visual\nPost-Processing and Visualization"]:::tool
    F1["🗺️ 2D Color Maps\nDoping · BTBT · Band Energy · E-Field"]:::process
    F2["📉 Transfer Characteristics\nIds vs Vgs — Log and Linear Scale"]:::process
    F3["🌈 Band Diagrams\nEc · Ev · Efn · Efp along cut-lines"]:::process

    G1["✅ Doping Map + Mesh View"]:::output
    G2["✅ Ids-Vgs Curve\nLog + Linear + Multi-Run"]:::output
    G3["✅ BTBT Map + Band Diagram"]:::output

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

> 💡 **Flow:** Input Scripts & Material Params → **SDE** *(Geometry + Doping + Mesh)* → **sdevice** *(Physics + Sweep)* → **SVisual** *(Plots + Band Diagrams)* → **Results**

---

## ✨ Key Features

| Feature | Details |
|:---|:---|
| 🏗️ **Device Structure** | 2D VTFET built with Sentaurus SDE |
| 🧪 **Heterostructure** | Ge source / Si channel / HfO₂ oxide / Metal gate |
| ⚗️ **Doping Profiles** | p⁺ Ge source · p Si channel · LDD pocket · n⁺ Si drain |
| 🔋 **Gate Dielectric** | High-k HfO₂ (1 nm) with metal gate |
| 📐 **Physics Models** | Fermi-Dirac · BGN · BTBT · SRH · Mobility |
| 📈 **Simulation** | Ids–Vgs quasistationary sweep (Vgs: 0 → 1.2 V) |
| 📊 **Post-Processing** | SVisual scripts for result visualization |

---

## 🔧 Technologies Used

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

## 📁 Project Structure

```
Sentaurus-TCAD-VTFET-Simulation/
│
├── 📄 sde_dvs.cmd          ← SDE: device geometry, contacts, doping, meshing
├── 📄 pp1_dvs.cmd          ← SDE post-processing script (variant)
├── 📄 sdevice_des.cmd      ← sdevice: physics, solver, Ids-Vgs sweep
├── 📄 pp2_des.cmd          ← sdevice post-processing script
├── 📄 sdevice.par          ← Global sdevice parameter overrides
│
├── 🧬 Germanium.par        ← Germanium material parameters
├── 🧬 Silicon.par          ← Silicon material parameters
├── 🧬 HfO2.par             ← HfO₂ gate dielectric parameters
├── 🧬 Metal.par            ← Metal gate parameters
│
├── 🖼️  Screenshot/          ← Simulation result screenshots (8 images)
│
└── 📝 README.md            ← Project documentation
```

---

## 📖 Key Simulation Parameters

<div align="center">

| Parameter | Value |
|:---:|:---:|
| Gate Dielectric | HfO₂ — 1 nm |
| Gate Metal | 1 nm |
| Drain Bias (Vds) | 0.5 V |
| Gate Sweep (Vgs) | 0 → 1.2 V |
| Channel Material | Silicon (Si) |
| Source Material | Germanium (Ge) |
| Tunneling Model | Band-to-Band (BTBT) |
| Subthreshold Model | Fermi-Dirac + OldSlotboom BGN |

</div>

---

## 🖼️ Simulation Results & Screenshots

> All results generated using **Synopsys Sentaurus Visual (SVisual)** post-processor.

---

### 🔵 Device Structure — Doping Concentration Map

<div align="center">
<table>
  <tr>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 164918.png" width="100%" alt="Doping Concentration Map"/>
      <br/>
      <b>🗺️ Doping Concentration Map</b>
      <br/>
      <sub>2D color map of doping profile across the VTFET structure (p⁺ Ge source → n⁺ Si drain)</sub>
    </td>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 165025.png" width="100%" alt="Mesh Structure with Doping"/>
      <br/>
      <b>🕸️ Mesh Structure + Doping (SDE View)</b>
      <br/>
      <sub>Triangular mesh generated by snmesh with doping concentration overlay</sub>
    </td>
  </tr>
</table>
</div>

---

### 📈 Transfer Characteristics — Ids vs Vgs

<div align="center">
<table>
  <tr>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 165922.png" width="100%" alt="Ids-Vgs Log Scale"/>
      <br/>
      <b>📉 Ids–Vgs (Log Scale)</b>
      <br/>
      <sub>Transfer characteristics showing BTBT switching behaviour on logarithmic Y-axis</sub>
    </td>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 171553.png" width="100%" alt="Ids-Vgs Linear Scale"/>
      <br/>
      <b>📈 Ids–Vgs (Linear Scale)</b>
      <br/>
      <sub>Transfer characteristics on linear scale — drain current vs gate voltage sweep</sub>
    </td>
  </tr>
</table>
</div>

---

### 🌈 Multi-Run Comparison & Band Diagrams

<div align="center">
<table>
  <tr>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 172243.png" width="100%" alt="Multi-Run Ids Comparison"/>
      <br/>
      <b>📊 Multi-Run Ids Comparison</b>
      <br/>
      <sub>Overlay of transfer curves from REFERENCE_des, _02_des, and _03_des runs</sub>
    </td>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 172659.png" width="100%" alt="Band Diagram + BTBT Generation"/>
      <br/>
      <b>⚡ Band-to-Band Generation + Band Diagram</b>
      <br/>
      <sub>2D BTBT generation map (left) and energy band diagram along cut-line (right)</sub>
    </td>
  </tr>
</table>
</div>

---

### 🔬 Conduction Band & Electric Field Analysis

<div align="center">
<table>
  <tr>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 172754.png" width="100%" alt="Conduction Band + Band Diagram"/>
      <br/>
      <b>🟠 Conduction Band Energy + Band Diagram</b>
      <br/>
      <sub>ConductionBandEnergy 2D map overlaid with complete energy band diagram</sub>
    </td>
    <td align="center" width="50%">
      <img src="Screenshot/Screenshot 2026-10-21 172807.png" width="100%" alt="Electric Field + Band Diagram"/>
      <br/>
      <b>⚡ Electric Field + Band Diagram</b>
      <br/>
      <sub>Abs(ElectricField) 2D distribution and corresponding energy band cut-line plot</sub>
    </td>
  </tr>
</table>
</div>

---

## ⚙️ Prerequisites

- ✅ **Synopsys Sentaurus TCAD** (version T-2022.03 or later recommended)
- ✅ Valid **Synopsys FlexLM license**
- ✅ Linux/Unix environment (standard for Sentaurus), or Windows with Cygwin

---

## 🚀 How to Run

### Step 1 — Generate Device Mesh (SDE)
```bash
sde -e -l sde_dvs.cmd
```
> Outputs: `REFERENCE_msh.tdr` — the 2D VTFET mesh file

### Step 2 — Run Electrical Simulation (sdevice)
```bash
sdevice sdevice_des.cmd
```
> Outputs: `REFERENCE_des.tdr` (2D plots) · `REFERENCE_des.plt` (Ids–Vgs data)

### Step 3 — Visualize Results (SVisual)
Open `REFERENCE_des.plt` in **SVisual** to plot transfer characteristics.

---

## 📄 License

This project is for **academic and research purposes**. Please cite appropriately if used in publications.

---

## 👤 Author

<div align="center">

**Satish** — VTFET TCAD Simulation  
[![GitHub](https://img.shields.io/badge/GitHub-itzzsamy000-181717?style=for-the-badge&logo=github)](https://github.com/itzzsamy000)

*Simulation performed at IIIT Bhopal — VLSI Lab*

</div>
