$default_pass_for_users   = "Password1"
$names_of_users_list = Get-Content .\names.txt

$password = ConvertTo-SecureString $default_pass_for_users -AsPlainText -Force #This line converts the default password ($default_pass_for_users) into a secure string format, which is required for setting the password of Active Directory user accounts.
New-ADOrganizationalUnit -Name _USERS -ProtectedFromAccidentalDeletion $false #This line creates an Active Directory Organizational Unit (OU) with the name "_USERS." 

#This loop iterates through each name in the list provided by $names_of_users_list. It then creates a new Active Directory user account using the New-AdUser cmdlet with various attributes and properties.
foreach ($n in $names_of_users_list) {
    $first_name = $n.Split(" ")[0].ToLower()
    $last_name = $n.Split(" ")[1].ToLower()
    $username = "$($first.Substring(0,1))$($last_name)".ToLower()
    Write-Host "Creating user: $($username)" -BackgroundColor Black -ForegroundColor Cyan
    
    New-AdUser -AccountPassword $password `
               -GivenName $first_name `
               -Surname $last_name `
               -DisplayName $username `
               -Name $username `
               -EmployeeID $username `
               -PasswordNeverExpires $true `
               -Path "ou=_USERS,$(([ADSI]`"").distinguishedName)" `
               -Enabled $true
}
