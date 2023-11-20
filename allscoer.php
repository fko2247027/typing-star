<?php
try {
    // データベースへの接続
    $pdo = new PDO('mysql:host=localhost;dbname=typingstar;charset=utf8', 'user', 'password');
    
    // エラーモードを例外に設定
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // 今日の日付を取得
    $today = date("Y-m-d");
    
    // SQLクエリを作成して実行
    $sql = "SELECT mixed_name, total_score
            FROM (
                SELECT CONCAT(student_table.student_name, ' (Student)') AS mixed_name,
                       COALESCE(student_table.student_score, 0) AS total_score
                FROM student_table
                
                UNION ALL
                
                SELECT CONCAT(teacher_table.teacher_name, ' (Teacher)') AS mixed_name,
                       COALESCE(teacher_table.teacher_score, 0) AS total_score
                FROM teacher_table
            ) AS combined
            ORDER BY total_score DESC";
    
    $stmt = $pdo->query($sql);
    
    // 結果を表示
    if ($stmt->rowCount() > 0) {
        echo "<h2>Scores as of ".$today."</h2>";
        echo "<table><tr><th>Rank</th><th>Name</th><th>Score</th></tr>";
        $rank = 1;
        // データを出力
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            echo "<tr><td>".$rank."</td><td>".$row["mixed_name"]."</td><td>".$row["total_score"]."</td></tr>";
            $rank++;
        }
        echo "</table>";
    } else {
        echo "0 results";
    }
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>
