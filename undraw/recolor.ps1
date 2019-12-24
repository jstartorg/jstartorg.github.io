$list = gci -name *.svg
$pwd = [String]$(pwd) + "\"
$list | % {
    $content = [System.IO.File]::ReadAllText($pwd + $_)
    $content = $content.Replace("#6c63ff","#D52B1E") # red
    $content = $content.Replace("#a36468","#5E6A71") # slate
    $content = $content.Replace("#b07473","#99BFC2") # teal
    $content = $content.Replace("#5f5d7e","#007C92") # blue
    $content = $content.Replace("#474157","#D1D4D3") # gray
    $content = $content.Replace("#67647e","#5E6A71") # slate
    
    [System.IO.File]::WriteAllText($pwd + $_, $content)
}