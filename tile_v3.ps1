$increment = 2
$tile = 1
$sizeX = 192
$sizeY = 108
$sourceFile = "C:\onedrive\main_projects\render\commercial\butterfly\close_03.jpg"

$resX = 1920
$resY = 1080

$rowCount = [Math]::Floor($resY / $sizeY) + 1
$colCount = [Math]::Floor($resX / $sizeX) + 1

for($row = 0; $row -lt $rowCount; $row++)
{
	for($col = 0; $col -lt $colCount; $col++)
	{
		$outFile = "tile0{0}" -f $tile

		if($tile -gt 9)
		{
			$outFile = "tile{0}" -f $tile
		}

		$cornerX = ($sizeX * ($col)) - ($increment * $col)
		$cornerY = ($sizeY * ($row)) - ($increment * $row)

		$format = "{0}x{1}+{2}+{3}" -f $sizeX, $sizeY, $cornerX, $cornerY

		$dest = "C:\onedrive\main_projects\scenes\gaffer\ml\img\tiledTest\{0}.png" -f $outFile

		oiiotool $sourceFile --cut $format -o $dest

		$tile++
	}

	if($tile -gt $rowCount * $colCount)
	{
		break
	}
}