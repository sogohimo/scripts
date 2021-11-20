With New RegExp
   .Pattern = "(^|\n)ad\.anynet\.id=(\d+)": Echo .Execute(CreateObject("Scripting.FileSystemObject")._
   OpenTextFile(CreateObject("WScript.Shell").SpecialFolders(5) & "\AnyDesk\system.conf").ReadAll)(0).Submatches(1)
End With