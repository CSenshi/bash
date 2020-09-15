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
*  [.bashrc](`~/.bashrc`)

*  [.vimrc](`~/.vimrc`)

* Find and replace all occurance of given string in all files of directory (recursively).

   * str1 - to replace

   * str2 - to be replaces with
    ```bash
    find . -type f -name "*" -print0 | xargs -0 sed -i '' -e 's/str1/str2/g'
    ```

* Count lines of all files in directory (recursively)
  ```bash
  find . -name '*' | xargs wc -l
  ```
  *Note: git can make project bigger, grep ames that wont have git in it*
  ```bash
  find . -name '*' | grep -v git | xargs wc -l
  ```
