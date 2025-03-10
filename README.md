## **Analysis of the Morris-Lecar Model**

### **Authors**

- Andrea F. Campos Pérez

---

### **Languages Used**

![Julia](https://img.shields.io/badge/Language-Julia-purple?style=for-the-badge&logo=julia)

---

### **Overview**

This repository contains a **Julia-based computational analysis** of the **Morris-Lecar (ML) model**, a biophysically inspired neuronal model used to describe the electrical activity of excitable cells. The model captures key neuronal dynamics and serves as a bridge between integrate-and-fire and Hodgkin-Huxley-type models.

The repository includes:

- A Jupyter Notebook (`.ipynb`) with code for simulating the Morris-Lecar model under different parameter conditions.
- A Julia script (`MLfunctions.jl`) defining core functions for model simulation.
- Both files have explanations mainly in English with some comments in Spanish.

---

### **Background**

The **Morris-Lecar (ML) model** describes the electrical activity of neurons and muscle cells using a two-dimensional system of differential equations. The system consists of:

1. **Membrane potential equation**
   ```math
   C_M \frac{dV}{dt} = I_{app} - I_{ion}
   ```
2. **Gating variable equation**
   ```math
   \frac{dn}{dt} = \frac{\phi}{\tau_n(V)} (n_{\infty}(V) - n)
   ```

where:

- **V** represents the membrane potential,
- **n** is a recovery variable associated with potassium channel dynamics,
- **I<sub>ion</sub>** is the total ionic current,
- **C<sub>M</sub>** is the membrane capacitance,
- **ϕ** controls the timescale of the gating variable.

The total ionic current **I<sub>ion</sub>** is given by:

```math
I_{ion} = g_L (V - E_L) + g_K n (V - E_K) + g_{Ca} m_{\infty}(V) (V - E_{Ca})
```

where:

- **g<sub>L</sub>, g<sub>K</sub>, g<sub>Ca</sub>** are the conductances for leak, potassium, and calcium currents.
- **E<sub>L</sub>, E<sub>K</sub>, E<sub>Ca</sub>** are the reversal potentials.
- **m<sub>∞</sub>(V)** and **n<sub>∞</sub>(V)** are steady-state activation functions.

This model exhibits behaviors such as **bistability, limit cycles, and neuronal excitability**, making it valuable for studying neuronal dynamics and oscillatory behavior.

---

### **Files in This Repository**

| File                       | Description                                                        |
| -------------------------- | ------------------------------------------------------------------ |
| `Morris-Lecar_Model.ipynb` | Jupyter Notebook implementing and analyzing the Morris-Lecar model |
| `MLfunctions.jl`           | Julia script containing function definitions for the model         |

---

### **Simulation Details**

The notebook explores:

- **Phase-plane analysis** of the ML system.
- **Time-series simulations** for different values of applied current **I<sub>app</sub>**.
- **Bifurcation analysis**, showing how varying parameters impact neuronal activity.
- **Numerical integration techniques** used to solve the differential equations.

---

### **How to Run the Notebook**

1. Install **Julia** (version 1.6 or later).
2. Install Jupyter Notebook and required Julia packages:
   ```sh
   using Pkg
   Pkg.add(["DifferentialEquations", "Plots", "PyPlot", "IJulia"])
   ```
3. Clone this repository:
   ```sh
   git clone https://github.com/andreaf-campos/Morris-Lecar-Model.git
   cd Morris-Lecar-Model
   ```
4. Launch the Jupyter Notebook:
   ```sh
   jupyter notebook Morris-Lecar-Model.ipynb
   ```
5. Run the notebook cells to visualize different simulations.

---

### **Future Directions**

- Extend the model to **spatially coupled Morris-Lecar systems** to study wave propagation.
- Investigate the impact of **stochastic inputs** on neuronal excitability.
- Implement **alternative numerical solvers** for improved performance.

---

### **References**

- Morris, C., & Lecar, H. (1981). *Voltage oscillations in the barnacle giant muscle fiber*. Biophysical Journal, 35(1), 193-213.
- Izhikevich, E. M. (2007). *Dynamical Systems in Neuroscience: The Geometry of Excitability and Bursting*. MIT Press.

---

### **License**

This project is licensed under the MIT License.

If you use this work in academic research, please cite the original authors and provide a link to this repository.