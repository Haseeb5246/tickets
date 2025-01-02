<?php
require_once '../private/config.php';

header('Content-Type: application/json');

$search = $_GET['search'] ?? '';
$search = $conn->real_escape_string($search);

// Enhanced query with better duplicate handling
$query = "SELECT DISTINCT location FROM (
    SELECT from_location as location FROM available_flights 
    WHERE LOWER(from_location) LIKE LOWER(?)
    UNION 
    SELECT to_location as location FROM available_flights 
    WHERE LOWER(to_location) LIKE LOWER(?)
) as locations 
ORDER BY 
    CASE 
        WHEN LOWER(location) = LOWER(?) THEN 1
        WHEN LOWER(location) LIKE CONCAT(LOWER(?), '%') THEN 2
        ELSE 3
    END,
    length(location),
    location ASC 
LIMIT 10";

$stmt = $conn->prepare($query);
$searchPattern = '%' . $search . '%';
$stmt->bind_param('ssss', $searchPattern, $searchPattern, $search, $search);

$stmt->execute();
$result = $stmt->get_result();

$locations = [];
if ($result) {
    while ($row = $result->fetch_assoc()) {
        $location = trim($row['location']);
        $locationUpper = strtoupper($location);
        if (!isset($locations[$locationUpper])) {
            $locations[$locationUpper] = $location;
        }
    }
}

echo json_encode(array_values($locations));
$stmt->close();
