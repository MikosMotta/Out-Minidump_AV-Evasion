# Out-Minidump_AV-Evasion

Just a very simple way of bypassing the majority of AVs

Steps followed:
  -> Delete all comments 
  -> Changed all variables to random names 
  -> Put a dangerous function inside a new variable and called variable instead of the function.
      -> Set-Variable -Name "motta" -Value "MiniDumpWriteDump"

Nothing fancy, quick and dirty!
