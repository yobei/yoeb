@echo off
timeout /t 5 /nobreak >nul

:: 1. 建立 Windows 電話簿檔案 (rasphone.pbk)
set "PBK_DIR=%APPDATA%\Microsoft\Network\Connections\Pbk"
set "PBK_FILE=%PBK_DIR%\rasphone.pbk"

if not exist "%PBK_DIR%" mkdir "%PBK_DIR%"

findstr /c:"[HiNet]" "%PBK_FILE%" >nul 2>&1
if errorlevel 1 (
    (
        echo [HiNet]
        echo Encoding=1
        echo Type=5
        echo AutoLogon=0
        echo UseRasCredentials=1
        echo DialParamsUID=10000001
        echo Guid=12345678123412341234123456789012
        echo BaseProtocol=1
        echo VpnStrategy=0
        echo ExcludedProtocols=0
        echo LcpExtensions=1
        echo DataEncryption=8
        echo SwCompression=1
        echo NegotiateMultilinkAlways=0
        echo SkipNwcWarning=0
        echo SkipDownLevelDialog=0
        echo SkipDoubleDialDialog=0
        echo DialMode=0
        echo OverridePref=15
        echo RedialAttempts=3
        echo RedialSeconds=60
        echo IdleDisconnectSeconds=0
        echo RedialOnLinkFailure=1
        echo CallbackMode=0
        echo CustomDialDll=
        echo CustomDialFunc=
        echo CustomRasDialDll=
        echo ForceSecureCompartment=0
        echo DisableIKENameEkuCheck=0
        echo AuthenticateServer=0
        echo ShareMsFilePrint=0
        echo BindMsNetClient=0
        echo SharedPhoneNumbers=0
        echo GlobalDeviceSettings=0
        echo PrerequisiteEntry=
        echo PrerequisitePbk=
        echo PreferredPort=PPPoE4-0
        echo PreferredDevice=WAN Miniport ^(PPPOE^)
        echo PreferredBps=0
        echo PreferredHwFlow=0
        echo PreferredProtocol=0
        echo PreferredCompression=0
        echo PreferredSpeaker=0
        echo PreferredMdmProtocol=0
        echo PreviewUserPw=0
        echo PreviewDomain=0
        echo PreviewPhoneNumber=0
        echo ShowDialingProgress=0
        echo ShowMonitorIconInTaskBar=1
        echo CustomAuthKey=0
        echo AuthRestrictions=552
        echo IpPrioritizeRemote=1
        echo IpInterfaceMetric=0
        echo IpHeaderCompression=0
        echo IpAddress=0.0.0.0
        echo IpDnsAddress=0.0.0.0
        echo IpDns2Address=0.0.0.0
        echo IpWinsAddress=0.0.0.0
        echo IpWins2Address=0.0.0.0
        echo IpAssign=1
        echo IpNameAssign=1
        echo IpDnsFlags=0
        echo IpNBTFlags=0
        echo TcpWindowSize=0
        echo UseFlags=3
        echo IpSecFlags=0
        echo IpDnsSuffix=
        echo Ipv6Assign=1
        echo Ipv6Address=::
        echo Ipv6PrefixLength=0
        echo Ipv6PrioritizeRemote=1
        echo Ipv6InterfaceMetric=0
        echo Ipv6NameAssign=1
        echo Ipv6DnsAddress=::
        echo Ipv6Dns2Address=::
        echo Ipv6Prefix=0000000000000000
        echo Ipv6InterfaceId=0000000000000000
        echo DisableClassBasedDefaultRoute=0
        echo DisableMobility=0
        echo NetworkOutageTime=0
        echo ProvisionType=0
        echo PreSharedKey=
        echo CacheCredentials=1
        echo NumCustomPolicy=0
        echo NumEapProtocols=0
        echo NumMedia=1
        echo NETCOMPONENTS=
        echo ms_msclient=0
        echo ms_server=0
        echo MEDIA=rastapi
        echo Port=PPPoE4-0
        echo Device=WAN Miniport ^(PPPOE^)
        echo ConnectBPS=0
    )>>"%PBK_FILE%"
)

:: 2. 透過單行 PowerShell 呼叫原生 rasapi32.dll 進行撥號（無換行轉義問題）
powershell -NoProfile -ExecutionPolicy Bypass -Command "Add-Type -TypeDefinition 'using System;using System.Runtime.InteropServices;public class R{[StructLayout(LayoutKind.Sequential,CharSet=CharSet.Unicode)]public struct P{public int s;[MarshalAs(UnmanagedType.ByValTStr,SizeConst=257)]public string e;[MarshalAs(UnmanagedType.ByValTStr,SizeConst=129)]public string p;[MarshalAs(UnmanagedType.ByValTStr,SizeConst=129)]public string c;[MarshalAs(UnmanagedType.ByValTStr,SizeConst=257)]public string u;[MarshalAs(UnmanagedType.ByValTStr,SizeConst=257)]public string w;[MarshalAs(UnmanagedType.ByValTStr,SizeConst=16)]public string d;public int sub;public IntPtr id;public int idx;}[DllImport(\"rasapi32.dll\",CharSet=CharSet.Unicode)]public static extern uint RasDial(IntPtr ext,string pbk,ref P param,uint type,IntPtr not,out IntPtr conn);public static uint Go(string pbk,string e,string u,string w){P p=new P();p.s=Marshal.SizeOf(typeof(P));p.e=e;p.u=u;p.w=w;IntPtr h;return RasDial(IntPtr.Zero,pbk,ref p,0,IntPtr.Zero,out h);}}'; $r=[R]::Go('%PBK_FILE%','HiNet','79539365@hinet.net','yuyo0117'); Write-Host 'Result:' $r"
