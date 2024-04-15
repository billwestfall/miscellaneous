
BeforeAll {
    function Add-Footer($path, $footer) {
        Add-Content $path -Value $footer
    }
    function GetFullPath {
    Param(
        [string] $Path
    )
    return $Path.Replace('TestDrive:', (Get-PSDrive TestDrive).Root)
}
}

GetFullPath

Describe "Add-Footer" {
    BeforeAll {
        $testPath = "TestDrive:\test.txt"
        Set-Content $testPath -value "my test text."
        Add-Footer $testPath "-Footer"
        $result = Get-Content $testPath
    }

    It "adds a footer" {
        (-join $result) | Should -Be "my test text.-Footer"
    }
}
