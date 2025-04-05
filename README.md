# windows-firewall-rule-audit

[![Issues](https://img.shields.io/github/issues/perch-arch/windows-firewall-rule-audit.svg)](https://github.com/perch-arch/windows-firewall-rule-audit/issues)
[![Forks](https://img.shields.io/github/forks/perch-arch/windows-firewall-rule-audit.svg)](https://github.com/perch-arch/windows-firewall-rule-audit/network/members)
[![Stars](https://img.shields.io/github/stars/perch-arch/windows-firewall-rule-audit.svg)](https://github.com/perch-arch/windows-firewall-rule-audit/stargazers)
[![License](https://img.shields.io/badge/license-Unlicense-lightgrey.svg)](https://choosealicense.com/licenses/unlicense/)

## 📌 About The Project

This PowerShell tool compares two Windows firewall configuration files (in `.csv` format):  
- A **baseline** configuration (expected or secure settings)
- A **current** configuration (from a system you want to audit)

It highlights differences in user-specified rule properties such as `DisplayName`, `Enabled`, `Action`, `Direction`, etc.

### 🔑 Key Features
- Interactive prompts allow flexible selection of properties to compare
- Supports comparing as many properties as needed
- Designed to support routine firewall audits and baselining in SOC/IT operations

## 🚀 Built With

- PowerShell

## 🛠️ Getting Started

### Prerequisites

- PowerShell (available by default on Windows)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/perch-arch/windows-firewall-rule-audit.git

2. Run the script:

    ./audit-firewall.ps1


💡 Note: You may need to set your PowerShell execution policy to allow script execution:

    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass


💡 Usage

When the script runs:

    You’ll be prompted to enter the rule properties to compare — one at a time.

    After entering all the desired properties, press Enter on an empty prompt to move to the next mandatory input.

    Enter the file path for:

        The baseline configuration .csv

        The current configuration .csv

    The script will compare both files and output any discrepancies based on the chosen properties.



🧪 Example

If both CSVs contain the columns:

    DisplayName

    Enabled

    Action

    Direction

Then input each of these when prompted. The script will return differences in any of the specified fields.


🛣️ Roadmap

No specific roadmap yet, but potential features may include:

    Logging of audit results

    Export of comparison report to file

    GUI


🤝 Contributing

Contributions are welcome! Feel free to fork the repo and submit a pull request with improvements, bug fixes, or feature suggestions.


📝 License

This project is currently shared without an official license. I may apply an open license (like MIT or Unlicense) in the future.


📬 Contact

perch-arch
GitHub: @perch-arch


🙏 Acknowledgements

Thanks to everyone who supports PowerShell scripting and encourages homegrown tooling in cybersecurity.
