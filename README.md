# 🧠 PIC24 Microprocessor — Minimal CPU with Branch & ALU Support

This project implements a small **PIC24-like CPU datapath and control** that fetches 24-bit instructions from ROM, executes ALU ops, updates flags, performs conditional branches, and reads/writes a tiny data memory. It was developed around a fixed set of instructions and control signals mapped from a milestone table.

---

## 🔎 What’s Inside

- **9 core blocks** wired into a classic fetch–decode–execute datapath:
  - `PC_Update` (PC + 2, or PC + 2 + offset×2 for branches)  
  - `Program Counter` (edge-triggered register)  
  - `ROM32x24` (32×24b instruction memory)  
  - Two `MUX2V4` (select base & destination register bit fields)  
  - `Ctrl` (derives ALUOP, flag enables, Mem/Reg control, branch, field selects)  
  - `ALU` (LSR, ZE, BTST.Z, INC plus flag writes)  
  - `File_Regs` (16 × 16-bit W registers, with read/write ports)  
  - `DataMem` (16 × 16 RAM; I/O mapped addresses 0x1020/0x1022 in, 0x1024 out)  
  - `MUX2V16` (select ALU vs DataMem to write back)  :contentReference[oaicite:0]{index=0}

---

## 🧩 Supported Instructions (selection)

Non-jump (flag semantics handled by `Ctrl` & ALU):
- `LSR Wb, #lit4, Wnd` — logical right shift by literal into `Wnd` (sets N/Z)  
- `ZE Ws, Wnd` — zero-extend byte from `Ws` to word in `Wnd` (sets N/Z/C)  
- `BTST.Z Ws, #bit4` — test bit in `Ws`; write **negated** tested bit into Z  
- `INC Ws, Wd` — increment `Ws` into `Wd` (updates DC/N/OV/Z/C)  :contentReference[oaicite:1]{index=1}

Branches:
- `BRA Expr` and conditional branches `BRA OV/C/N/Z, Expr` with **offset<<1** applied in `PC_Update`.  :contentReference[oaicite:2]{index=2}

Also present in the encoding/control tables (for completeness): `ADD`, `SUB`, `AND`, `IOR`, `MOV f,wnd`, `MOV wns,f`.  :contentReference[oaicite:3]{index=3}

---

## 🛠️ Control/Decode Highlights

`Ctrl` drives:
- **Flag enables** `CE_NF, CE_OVF, CE_ZF, CE_CF`
- **ALUOP** (3-bit op select)
- **MemWr / Mem2Reg / RegWr**
- **Branch** (enables PC offset path)
- **RegBase / RegDest** (select register field slices in the 24-bit instruction)  :contentReference[oaicite:4]{index=4}

**Instruction field selection** via two 4-bit muxes:
- Base register from bits **[18..15]** or **[14..11]**  
- Dest register from bits **[10..7]** or **[3..0]**.  :contentReference[oaicite:5]{index=5}

---

## 🧮 Datapath Timing & Memory Map

- **PC** updates on the **rising clock edge**; sequential = `PC+2`, branch = `PC+2+(offset<<1)`.  
- **ROM32×24** indexed by **PC[4:0]** delivers one 24-bit instruction.  
- **DataMem 16×16**: reads from **0x1020/0x1022**, writes result to **0x1024** through `Mem2Reg`.  :contentReference[oaicite:6]{index=6}

---

## 📜 Encodings & Control Matrix

The documentation includes full **binary encodings** for the implemented ops and a **Milestone-2 control table** mapping opcode → (`CE_*`, `ALUOP`, `MemWr`, `Mem2Reg`, `RegWr`, `Branch`, `RegDest`, `RegBase`). Use it as the source of truth when wiring or testing the controller.  :contentReference[oaicite:7]{index=7}

<img width="1676" height="719" alt="image" src="https://github.com/user-attachments/assets/c4b38a7d-9612-4e62-87a8-c8a07f33f5e4" />
