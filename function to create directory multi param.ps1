# function to create directory and create file
<#        
    .SYNOPSIS

    .DESCRIPTION

    .NOTES
    ========================================================================
         Windows PowerShell Source File 
         Created with Love
         
         NAME: 
         
         AUTHOR: Encrapera, Luke 
         DATE  : 0/0/2021
         
         COMMENT:  
         
    ==========================================================================
#>

Function Create-Directory()
{
    # Create multiple parameters
    # Mandatory parameter, set true
    # Optional parameter, set false
    # string data type and parameter name

    Param
    (
        [Parameter(Mandatory = $true)] [string] $FolderName,
        [Parameter(Mandatory = $true)] [string] $FileName,
        [Parameter(Mandatory = $false)] [string] $TempFile
    )

    try 
     {
                    # Check if folder exists

                    if(Get-Item -Path $FolderName -ErrorAction Ignore)
                    {
                            # Check optional parameter value as by default optional parameter has null value
                           if($TempFile)
                           {
                                    # Check if file exists
    
                                    if(Get-Item -Path $TempFile -ErrorAction Ignore){
                                          Write-Host $TempFile "file already exists!"
                                    }
                                    else
                                    {
                                         #Create temp file
                                        New-Item -Verbose $TempFile -ItemType File
                                        Write-Host -f Green $TempFile "file created successfully!"
           
                                    }
                          }
                          else
                          {
                            Write-Host "File name path Parameter is null/optional"
                          }
                    }
                    else
                    {
                        
                        #PowerShell Create directory if not exists
                    
                        New-Item -Verbose $FolderName -ItemType Directory
                        Write-Host -f Green $FolderName "folder created successfully!"

                    
                        New-Item -Verbose $FileName -ItemType File
                         Write-Host -f Green $FileName "file created successfully!" 


                    }

        }
        catch
        {
             $ErrorMsg = $_.Exception.Message + " error raised while creating folder!"
             Write-Host $ErrorMsg -BackgroundColor Red
        }
    
}

#Parameters - Pass multiple parameters to the function
$mypath = $MyInvocation.MyCommand.Path
$parentDir = Split-Path $mypath -Parent

$FolderName="$parentDir\Logs";
$FileName= "$parentDir\Logs\NewFile.txt";
$TempFile= "$parentDir\Logs\Temp.txt";
Create-Directory $FolderName $FileName $TempFile