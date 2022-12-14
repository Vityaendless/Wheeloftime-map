<?php
class DB_CONFIG {
   public $q;
 
    function connectDataBase () {
        $this->q = new mysqli(
            "127.0.0.1",
            "root",
            "",
            "wot");
        return $this->q;
    }
}

class Event {
    public $id, $name, $image, $desc, $x, $y;

    function events_info($id){
        $db = new DB_CONFIG();
        $connect = $db->connectDataBase();
        if ($connect->connect_error) {
            die("Error: " . $connect->connect_error);
        } else {
            $sql="select
            event_name,
            event_image,
            event_desc
            from 
            main
            WHERE event_status=1
            and
            id=".$id;

        $result = $connect->query($sql);
        $res = $result->fetch_assoc();
        
        $this->name = $res['event_name'];
        $this->image = $res['event_image'];
        $this->desc = $res['event_desc'];

        echo "<h1>There was a ".$this->name."</h1><br>";
        echo "<p>".$this->desc."</p><br>";
        echo "<img src='$this->image'><br>";
        $connect->close();
    }
}

function events_coord(){
    $db = new DB_CONFIG();
    $connect = $db->connectDataBase();
    if ($connect->connect_error) {
        die("Error: " . $connect->connect_error);
    } else {
        $sql="select
          id,
          event_x,
          event_y
          from 
          main
          WHERE event_status=1";

          $result = $connect->query($sql);

          while ($row = $result->fetch_assoc()){
            $this->id = $row['id'];
            $this->x = $row['event_x'];
            $this->y = $row['event_y'];

            echo "<a href=\"index.php?number=".$this->id."#view_info\"><circle cx=".$this->x." cy=".$this->y." r='5' value=".$this->id." id=\"event_point\" name=\"event_point\"></circle></a>";  
        }
        $connect->close();
    }
}

function add_event($name, $image, $desc, $x, $y){
    $db = new DB_CONFIG();
    $connect = $db->connectDataBase();
    if ($connect->connect_error) {
        die("Error: " . $connect->connect_error);
    } else {
    $sql="INSERT INTO `main`(`event_name`,
                             `event_image`,
                             `event_desc`,
                             `event_x`,
                             `event_y`,
                             `event_status`)
                             VALUES 
                             ('$name',
                              '$image',
                              '$desc',
                              '$x',
                              '$y',
                               0)";

    $result = $connect->query($sql);
    $connect->close();
    }
}
}
?>