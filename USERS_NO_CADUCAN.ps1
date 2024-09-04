# Ejecutar como administrador
# Deshabilitar el caducamiento de contraseñas para todos los usuarios

# Obtener todos los usuarios locales
$users = Get-LocalUser

foreach ($user in $users) {
    # Cambiar la configuración de caducidad de contraseña a "nunca expira"
    Set-LocalUser -Name $user.Name -PasswordNeverExpires $true
    Write-Host "La contraseña para el usuario $($user.Name) ahora nunca caducará."
}

Write-Host "Se ha deshabilitado el caducamiento de contraseñas para todos los usuarios locales."
