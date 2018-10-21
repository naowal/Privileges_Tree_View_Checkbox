<?php
require_once './connectionClass.php';
class checkboxClass extends connectionClass{
    public function addtoDatabase($value){
        $insert="Insert into save_selected_roles (Pvalues) values ('$value')";
        $result=$this->query($insert) or die($this->error);
        if($result){
            return "<h2 class='text-success'>Updated</h2>";
        }
        else
        {
            return "<h2 class='text-danger'>Not updated</h2>";
        }
    }
    
    public function listCheckbox($query){
        $list="select * from save_selected_roles $query";
        $result=  $this->query($list);
        $count=  $result->num_rows;
        if($count < 1){}else{
            while($row= $result->fetch_array(MYSQLI_BOTH)){
                $arr[]= $row;
            }
            return $arr;
        }
    }
    
    public function updateCheckbox($value,$id){
        $update="update save_selected_roles set Pvalues='$value' Where Id='$id'";
        $result=$this->query($update);
        if($result){
            return "Updated";
        }
 else {
     return "Error";
 }
    }
}
