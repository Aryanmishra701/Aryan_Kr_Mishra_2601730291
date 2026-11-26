# System Profile

Fill in the hardware and OS specifications from the Linux workstation used for evaluation. Do not guess these values.

| Component | Specification |
|---|---|
| CPU model and number of cores | TODO — `lscpu` |
| Total RAM | TODO — `free -h` |
| Available RAM | TODO — `free -h` |
| Primary storage size and type (SSD/HDD) | TODO — `lsblk -o NAME,SIZE,ROTA,TYPE,MODEL` |
| Operating system name | TODO — `cat /etc/os-release` |
| Kernel version | TODO — `uname -r` |

## Binary Number Representation

### Decimal 75 to binary — repeated division by 2

| Division | Quotient | Remainder |
|---|---:|---:|
| 75 ÷ 2 | 37 | 1 |
| 37 ÷ 2 | 18 | 1 |
| 18 ÷ 2 | 9 | 0 |
| 9 ÷ 2 | 4 | 1 |
| 4 ÷ 2 | 2 | 0 |
| 2 ÷ 2 | 1 | 0 |
| 1 ÷ 2 | 0 | 1 |

Read remainders from bottom to top: **75₁₀ = 1001011₂**.

### Binary 110101 to decimal — positional weight method

`110101₂ = (1×2⁵) + (1×2⁴) + (0×2³) + (1×2²) + (0×2¹) + (1×2⁰)`

`= 32 + 16 + 0 + 4 + 0 + 1 = 53₁₀`

### Why computers use binary

Computers use binary internally because digital electronic circuits can reliably represent two states, such as low and high voltage, as 0 and 1.

See `commands_output.txt` for actual command output collected on your workstation.
