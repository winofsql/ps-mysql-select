$connection = New-Object System.Data.Odbc.OdbcConnection
$command = New-Object System.Data.Odbc.OdbcCommand
$builder = New-Object System.Data.Odbc.OdbcConnectionStringBuilder

$builder.Driver = "MySQL ODBC 8.0 Unicode Driver"
 
# **************************
# 接続用のパラメータを追加
# **************************
$builder.Add("SERVER", "localhost");
$builder.Add("DATABASE", "lightbox");
$builder.Add("UID", "root");
$builder.Add("PWD", "");

# **************************
# 内容表示( 接続文字列 )
# **************************
$builder.ConnectionString

# **************************
# 接続文字列設定
# **************************
$connection.ConnectionString = $builder.ConnectionString

# *********************
# 接続
# *********************
try {
    # 接続文字列を使用して接続
    $connection.Open()
    # コマンドオブジェクトに接続をセット
    $command.Connection = $connection
    # コマンドを通常 SQL用に変更
    $command.CommandType = [System.Data.CommandType]::Text
}
catch [Exception] {

    $error[0] | Format-List * -force
    $connection.Close()

    $command.Dispose()
    $connection.Dispose()
    exit
}

# **************************
# 実行 SQL
# **************************
$command.CommandText = "select * from 社員マスタ"

# **************************
# レコードセット取得
# **************************
try {
    $reader = $command.ExecuteReader()
}
catch [Exception] {

    $error[0] | Format-List * -force
    $connection.Close()

    $command.Dispose()
    $connection.Dispose()
    exit
}

$out_format = "{0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10}"

while($reader.Read()) {

    $array = 0..10
    for($idx=0; $idx -le 10; $idx++) {
        $array[$idx] = $reader.GetValue($idx).ToString()
    }

    $out_format -f 
        $array[0],
        $array[1],
        $array[2],
        $array[3],
        $array[4],
        $array[5],
        $array[6],
        $array[7],
        $array[8],
        $array[9],
        $array[10]

}

$reader.Close()

# 接続解除
$connection.Close()

# 解放
$reader.Dispose()
$command.Dispose()
$connection.Dispose()
