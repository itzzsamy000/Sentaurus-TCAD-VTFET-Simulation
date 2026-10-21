# Sentaurus TCAD VTFET Simulation

> **Vertical Tunnel Field-Effect Transistor (VTFET) simulation using Synopsys Sentaurus TCAD**

---

## 📋 Project Description

This project contains a complete Synopsys Sentaurus TCAD simulation of a **Vertical Tunnel Field-Effect Transistor (VTFET)** — a next-generation transistor architecture that exploits **Band-to-Band Tunneling (BTBT)** as its primary transport mechanism. Unlike conventional MOSFETs, TFETs can achieve sub-60 mV/decade subthreshold swing, making them ideal for ultra-low-power digital applications.

---

## ✨ Features

- 2D VTFET device structure built with Sentaurus Structure Editor (SDE)
- Multi-material heterostructure: Germanium source, Silicon channel, HfO2 gate dielectric, Metal gate
- Precise doping profiles (p+ Ge source, p Si channel, LDD pocket, n+ Si drain)
- High-k gate dielectric (HfO2) with metal gate stack
- Physics models: Fermi-Dirac, Band-gap narrowing, Mobility, SRH + Band-to-Band tunneling (BTBT)
- Transfer characteristics (Ids-Vgs) simulation via quasistationary sweep (0 to 1.2 V)
- SVisual post-processing scripts for result visualization
- Material parameter files for Germanium, Silicon, HfO2, and Metal

---

## 🔧 Technologies Used

| Tool / Technology | Purpose |
|---|---|
| Synopsys Sentaurus SDE | Device geometry & mesh generation |
| Synopsys Sentaurus Device | Electrical simulation solver |
| Synopsys SVisual | Post-processing & visualization |
| Sentaurus Workbench (SWB) | Simulation flow management |
| Scheme (SDE scripting) | Device definition scripts |
| TCAD parameter files (.par) | Material models (Ge, Si, HfO2, Metal) |

---

## 📁 Project Structure

`
VTFET/
│
├── sde_dvs.cmd          # SDE script: device geometry, contacts, doping, meshing
├── pp1_dvs.cmd          # SDE post-processing script
├── sdevice_des.cmd      # Sentaurus Device: physics, solver, Ids-Vgs sweep
├── pp2_des.cmd          # Sentaurus Device post-processing script
├── sdevice.par          # Global sdevice parameter overrides
│
├── Germanium.par        # Germanium material parameters
├── Silicon.par          # Silicon material parameters
├── HfO2.par             # Hafnium Dioxide (gate dielectric) parameters
├── Metal.par            # Metal gate parameters
│
├── Screenshot/          # Simulation result screenshots
│
└── README.md            # Project documentation
`

---

## ⚙️ Prerequisites

- Synopsys Sentaurus TCAD (any recent version supporting SDE + sdevice)
- A valid Synopsys FlexLM license
- Linux/Unix or Windows with Sentaurus installed

---

## 🚀 How to Run

### Step 1 — Build device mesh (SDE)
`ash
sde -e -l sde_dvs.cmd
`
Generates REFERENCE_msh.tdr mesh file.

### Step 2 — Run electrical simulation (sdevice)
`ash
sdevice sdevice_des.cmd
`
Runs Band-to-Band tunneling Vgs sweep; outputs REFERENCE_des.tdr and REFERENCE_des.plt.

### Step 3 — Visualize results
Open REFERENCE_des.plt in SVisual to plot Ids vs Vgs transfer characteristics.

---

## 📖 Key Simulation Parameters

| Parameter | Value |
|---|---|
| Gate dielectric | HfO2 (1 nm) |
| Gate metal thickness | 1 nm |
| Drain bias (Vds) | 0.5 V |
| Gate sweep (Vgs) | 0 to 1.2 V |
| Channel material | Silicon |
| Source material | Germanium |
| Tunneling model | Band-to-Band (BTBT) |

---

## 📄 License

Academic and research use. Please cite appropriately if used in publications.

---

## 👤 Author

**Satish** — VTFET TCAD Simulation  
GitHub: https://github.com/itzzsamy000
