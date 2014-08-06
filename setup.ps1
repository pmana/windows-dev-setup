function Install-ChocolateyAndPackages() {
    iex (new-object net.webclient).DownloadString('http://bit.ly/psChocInstall')

    choco install Firefox GoogleChrome
    choco install dropbox skype spotify
    choco install autohotkey everything launchy
    choco install notepadplusplus sumatrapdf.install
    choco install pgadmin3 mysql.workbench
    choco install appfabric
    choco install virtualbox
}

function Install-ScoopAndPackages() {
    iex (new-object net.webclient).DownloadString('https://get.scoop.sh')
    
    scoop install sudo
    sudo scoop install 7zip git mercurial --global
    scoop install coreutils findutils
    scoop install curl grep less ln touch wget
    scoop install vim
    scoop install tar unzip zip
    scoop install nodejs.install perl python python27 ruby scriptcs
    scoop install pshazz
}

function Install-Babun() {
    mkdir -p c:\tmp
    cd c:\tmp
    wget http://projects.reficio.org/babun/babun-dist.zip
    unzip babun-dist.zip
    cd babun-dist
    mkdir c:\babun
    install.bat using %USER_HOME% as c:\babun
}

function Pin-ToTaskbar {
    param([string]$FilePath)
    $verb = "Pin to Taskbar"
    $path = Split-Path $FilePath
    $shell = New-Object -com "Shell.Application"
    $folder = $shell.Namespace($path)
    $item = $folder.Parsename((Split-Path $FilePath -leaf))
    $itemVerb = $item.Verbs() | ? { $_.Name.Replace("&","") -eq $verb }
    
    if ($itemVerb -eq $null) {
        Throw "Verb $verb not found."
    } else {
        $itemVerb.DoIt()
    }
}

Set-ExecutionPolicy Unrestricted -s cu
Install-ChocolateyAndPackages
Install-ScoopAndPackages
Install-Babun
Set-ExecutionPolicy RemoteSigned

# install office including outlook

# install visual studio
# install mvc5
# install extensions:
# editor guidelines
# vs color theme editor
# install resharper plugin for angularjs
# apply colorscheme, settings etc

# how to automatically set up jump lists?
Pin-ToTaskbar "c:\Program Files (x86)\Notepad++\notepad++.exe"
# explorer
# outlook
# chrome
# firefox
# iexplore
# visual studio
# sql server management studio
# pgadmin3
# mysql workbench
# fiddler
# services.msc
# iis
# spotify
# notepad++
# powershell ise
# conemu with scoop
# babun

# install autohotkey script
# install incosolata-dz font