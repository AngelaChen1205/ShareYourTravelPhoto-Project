         <div class="panel panel-default">
           <div class="panel-heading">Search</div>
           <div class="panel-body">
             <form>
               <div class="input-group">
                  <input type="text" class="form-control" placeholder="search ...">
                  <span class="input-group-btn">
                    <button class="btn btn-warning" type="button"><span class="glyphicon glyphicon-search"></span>          
                    </button>
                  </span>
               </div>  
             </form>
           </div>
         </div>  <!-- end search panel -->       
      
         <div class="panel panel-info">
           <div class="panel-heading">Continents</div>
           <ul class="list-group">
           <?php while($row = mysqli_fetch_assoc($continents_table)) { ?>
            
          <a class="list-group-item" href="browse-images.php?continents=<?php echo $row['ContinentCode']; ?>"> <?php echo $row['ContinentName']; 
          ?> </a>
            
            <?php } ?>
          
           </ul>
         </div>  <!-- end continents panel -->  
         <div class="panel panel-info">
           <div class="panel-heading">Popular Countries</div>
           <ul class="list-group">  
           <?php while($row = mysqli_fetch_assoc($popularcountries_table)){ ?>

          <a class="list-group-item" href="browse-images.php?countries=<?php echo $row['ISO']; ?>"><?php echo $row['Countries']; ?> </a>
            
            <?php } ?>

  
           </ul>
         </div>  <!-- end countries panel -->    