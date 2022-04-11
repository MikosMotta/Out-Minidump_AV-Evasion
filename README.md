# Out-Minidump_AV-Evasion

Just a very simple way of bypassing the majority of AVs

Steps followed: <br />
  -> Delete all comments <br /n>
  -> Changed all variables to random names <br /n>
  -> Put a dangerous function inside a new variable and called variable instead of the function. <br />
      -> Set-Variable -Name "motta" -Value "MiniDumpWriteDump" <br /n>

Nothing fancy, quick and dirty!
