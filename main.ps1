#Properties must match in baseline rules and current rules
#For the baselineconfig and currentconfig parameters, enter path to csv file

Function RuleAudit {
    [CmdletBinding()]
    Param([Parameter(Mandatory, Position = 0)][String[]]$Properties,
          [Parameter(Mandatory, Position = 1)][String]$BaselineConfigFile,
          [Parameter(Mandatory, Position = 2)][String]$CurrentConfigFile
    )
    
    
    $properties = @($Properties)
    
    $baselineconfig = Import-Csv -Path $BaselineConfigFile
    $currentconfig = Import-Csv -Path $CurrentConfigFile
    
    $differences = Compare-Object  -ReferenceObject $baselineconfig  -DifferenceObject $currentconfig -Property $properties | Format-Table -AutoSize
    $baseline = $differences | Where-Object {$_.SideIndicator -eq "=>"} | Format-Table -AutoSize
    $current = $differences | Where-Object {$_.SideIndicator -eq "<="} | Format-Table -AutoSize
    
    if ($differences) {
        Write-Host "Firewall rules do not match:"
        $baseline
        $current
    }
    else {
        Write-Host "No differences found. The rules match"
    }
    
    }


RuleAudit
