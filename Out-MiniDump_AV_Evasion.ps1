function Thanasis-Ekso
{

    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True)]
        [System.Diagnostics.Process]
        $Diergasia,

        [Parameter(Position = 1)]
        [ValidateScript({ Test-Path $_ })]
        [String]
        $SkoupidiMonopati = $PWD
    )

    BEGIN
    {
		Set-Variable -Name "motta" -Value "MiniDumpWriteDump"
        $Nickk = [PSObject].Assembly.GetType('System.Management.Automation.WindowsErrorReporting')
        $NickkMethodoi = $Nickk.GetNestedType('NativeMethods', 'NonPublic')
        $Flags = [Reflection.BindingFlags] 'NonPublic, Static'
        $MikroSkoupidiGrapse = $NickkMethodoi.GetMethod($motta, $Flags)
        $MikroSkoupidi = [UInt32] 2
    }

    PROCESS
    {
        $NickId = $Diergasia.Id
        $NickProcess = $Diergasia.Name
        $DiergasiaXandl = $Diergasia.Handle
        $NickArxeio = "$($NickProcess)_$($NickId).dmp"

        $DiergasiaSkoupidi = Join-Path $SkoupidiMonopati $NickArxeio

        $ArxeioRiaki = New-Object IO.FileStream($DiergasiaSkoupidi, [IO.FileMode]::Create)

        $Apotelesma = $MikroSkoupidiGrapse.Invoke($null, @($DiergasiaXandl,
                                                     $NickId,
                                                     $ArxeioRiaki.SafeFileHandle,
                                                     $MikroSkoupidi,
                                                     [IntPtr]::Zero,
                                                     [IntPtr]::Zero,
                                                     [IntPtr]::Zero))

        $ArxeioRiaki.Close()

        if (-not $Apotelesma)
        {
            $Bla = New-Object ComponentModel.Win32Exception
            $BlaMhnuma = "$($Bla.Message) ($($NickProcess):$($NickId))"


            Remove-Item $DiergasiaSkoupidi -ErrorAction SilentlyContinue

            throw $BlaMhnuma
        }
        else
        {
            Get-ChildItem $DiergasiaSkoupidi
        }
    }

    END {}
}