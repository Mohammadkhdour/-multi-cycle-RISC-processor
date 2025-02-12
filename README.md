# 🔥 Multi-Cycle RISC Processor - Computer Architecture Project

## 📌 Project Overview
This project focuses on designing and implementing a **multi-cycle RISC processor**, integrating control logic, instruction memory, data memory, and functional units such as the **ALU, register file, multiplexers, and PC control unit**. The multi-cycle execution model ensures efficient instruction handling by breaking down execution into multiple stages: **Instruction Fetch, Decode, Execute, Memory Access, and Write-Back**.

## 🎯 Objectives
- ✅ Design and implement a **multi-cycle RISC processor**.
- ✅ Develop an **RTL architecture** using Verilog.
- ✅ Simulate and test various instruction types (R-Type, I-Type, J-Type, Load/Store operations).
- ✅ Verify the processor’s functionality through waveform analysis.
- ✅ Optimize performance by structuring execution across multiple cycles.

---

## ⚙️ Architecture Components

### **1️⃣ Instruction Memory**
- Stores the instructions to be executed by the processor.
- Fetches instructions in multiple cycles to allow sequential execution.

### **2️⃣ Register File**
- Contains small, high-speed storage locations (registers) accessible by the processor.
- Supports register-based operations to enhance execution speed.

### **3️⃣ ALU (Arithmetic Logic Unit)**
- Performs arithmetic and logical operations (e.g., ADD, SUB, AND, OR).
- Used during the **execution phase** of the pipeline.

### **4️⃣ Data Memory**
- Stores and retrieves data required by load and store instructions.
- Handles memory access stages within the processor cycle.

### **5️⃣ Multiplexers & Sign Extenders**
- Direct control signals within the processor to select appropriate data paths.
- Sign extenders extend smaller bit-width values for proper execution.

### **6️⃣ PC (Program Counter) Control**
- Manages instruction sequencing and branching logic.
- Updates the program counter based on instruction execution results.

### **7️⃣ Main Control Unit**
- Generates control signals to regulate data flow and execution sequencing.
- Ensures proper coordination between different processor components.

---

## 🚀 Instruction Set & RTL Design
The processor supports multiple instruction types categorized as:

### ✅ **R-Type Instructions** (Arithmetic & Logical)
- ADD, SUB, AND, OR
- Uses register-based operands and ALU computations.

### ✅ **I-Type Instructions** (Immediate & Memory Operations)
- ADDI, ANDI, LW, SW, LBs, LBu
- Supports immediate values and memory interactions.

### ✅ **J-Type Instructions** (Jump & Branching)
- JMP, CALL, RET
- Alters the program counter for function calls and returns.

### ✅ **Branching Instructions**
- BEQ, BEQZ, BNE, BNEZ, BGT, BGTZ, BLT, BLTZ
- Implements conditional execution based on comparisons.

---

## 🏗️ Implementation Details
### **State Diagram**
- Defines the **multi-cycle execution states** for each instruction.
- Created using Lucidchart for visual representation.

### **Control Logic Equations**
- Defines logic conditions to generate control signals.
- Controls ALU operations, memory access, and register updates.

### **Data Path Implementation**
- Designed and simulated using **EDA Playground** and **Active-HDL**.
- Comprises **fetch, decode, execute, memory, and write-back** stages.

### **Verilog Implementation**
- Written in Verilog with modular components for clarity and efficiency.
- Includes a **testbench** to verify functionality.

---

## 📊 Testing & Results
- ✅ **Waveform Analysis**: Validates execution correctness through test cases.
- ✅ **Instruction Execution Validation**: Ensures each instruction type functions correctly.
- ✅ **Performance Optimization**: Reduces cycle latency for improved efficiency.

---

## 🚀 Getting Started

### 🔧 Prerequisites
Ensure you have the following installed:
- **Verilog Compiler (EDA Playground, Active-HDL, ModelSim)**
- **Lucidchart (for diagrams)**
- **Git for version control**

### 📂 Cloning the Repository
```sh
git clone https://github.com/yourusername/Multi-Cycle-RISC-Processor.git
cd Multi-Cycle-RISC-Processor
```

### ▶️ Running the Simulation
1. Open **EDA Playground** or **Active-HDL**.
2. Load the **Verilog files**.
3. Compile and simulate the processor.
4. Observe the **waveform output** for validation.

---

## 🤝 Contributing
Contributions are welcome! Fork this repository and submit a **Pull Request**.

---

## 📜 License
This project is licensed under the **MIT License**.


