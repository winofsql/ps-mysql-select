$connection = New-Object System.Data.Odbc.OdbcConnection
$command = New-Object System.Data.Odbc.OdbcCommand
$builder = New-Object System.Data.Odbc.OdbcConnectionStringBuilder

$builder.Driver = "MySQL ODBC 8.0 Unicode Driver"
 
# **************************
# �ڑ��p�̃p�����[�^��ǉ�
# **************************
$builder.Add("SERVER", "localhost");
$builder.Add("DATABASE", "lightbox");
$builder.Add("UID", "root");
$builder.Add("PWD", "");

# **************************
# ���e�\��( �ڑ������� )
# **************************
$builder.ConnectionString

# **************************
# �ڑ�������ݒ�
# **************************
$connection.ConnectionString = $builder.ConnectionString

# *********************
# �ڑ�
# *********************
try {
    # �ڑ���������g�p���Đڑ�
    $connection.Open()
    # �R�}���h�I�u�W�F�N�g�ɐڑ����Z�b�g
    $command.Connection = $connection
    # �R�}���h��ʏ� SQL�p�ɕύX
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
# ���s SQL
# **************************
$command.CommandText = "select * from �Ј��}�X�^"

# **************************
# ���R�[�h�Z�b�g�擾
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

# �ڑ�����
$connection.Close()

# ���
$reader.Dispose()
$command.Dispose()
$connection.Dispose()
