<?php
require_once "config.php";

$result = $conn->query("
    SELECT 
        s.cow_id,
        s.nama,
        s.suhu_celsius,
        s.status AS status_suhu,
        d.detak_jantung_bpm,
        d.status AS status_jantung,
        a.nilai_gerakan,
        a.level_stress,
        s.timestamp
    FROM sensor_suhu s
    JOIN sensor_detak_jantung d ON s.cow_id = d.cow_id
    JOIN sensor_aktivitas a ON s.cow_id = a.cow_id
    ORDER BY s.cow_id ASC
");

$data = [];
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

echo json_encode(["success" => true, "data" => $data]);
$conn->close();
?>