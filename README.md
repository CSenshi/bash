# bash
Useful Bash commands collection

* Aliases in `~/.bash_aliases` file
  ```bash
  alias update='sudo apt update -y'
  alias upgrade='sudo apt upgrade -y'
  alias up='update && upgrade'

  alias autoc='sudo apt auto-clean -y'
  alias autor='sudo apt auto-remove -y'
  alias auto-rc='autor && autoc'

  alias full-up='auto-rc && up && auto-rc'

  alias term='gnome-terminal'

  alias open='xdg-open'
  ```
  
