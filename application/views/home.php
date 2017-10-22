<?php
  //$color = array('yellow','aqua','blue','light-blue','green','navy','teal','olive','lime','orange','fuchsia','purple','maroon');
?>

<div class="row">

  <div class="col-lg-4 col-xs-6">
    <div class="small-box bg-navy">
      <div class="inner price">
        <h3><?php echo 'Rp. '.strrev(implode('.',str_split(strrev(strval($total_price)),3))); ?></h3>
        <p>Total Asset Price</p>
      </div>
      <div class="icon">
        <i class="fa fa-money"></i>
      </div>
      <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>

  <div class="col-lg-4 col-xs-6">
    <div class="small-box bg-navy">
      <div class="inner">        <h3><?php echo $total_staff; ?></h3>
        <p>Staff <?php //echo CI_VERSION; ?></p>
      </div>
      <div class="icon">
        <i class="fa fa-users"></i>
      </div>
      <a href="<?php echo base_url('staff') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
  
  <div class="col-lg-4 col-xs-6">
    <div class="small-box bg-navy">
      <div class="inner">
        <h3><?php echo $total_supplier; ?></h3>
        <p>Supplier</p>
      </div>
      <div class="icon">
        <i class="fa fa-truck"></i>
      </div>
      <a href="<?php echo base_url('supplier') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div> 

  <?php foreach ($category_hw as $menu_hw) { ?>
    <div class="col-lg-4 col-xs-6">
      <div class="small-box bg-navy">
        <div class="inner">
          <h3><?php $total_dev = 'total_'.$menu_hw->name; echo $$total_dev; ?></h3>
          <p><?php echo $menu_hw->label; ?></p>
        </div>
        <div class="icon">
          <i class="fa fa-hdd-o"></i>
        </div>
        <a href="<?php echo base_url('devices/index/category/'.$menu_hw->name) ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
  <?php } ?>

  <div class="col-lg-4 col-xs-6">
    <div class="small-box bg-navy">
      <div class="inner">
        <h3><?php echo $total_software; ?></h3>
        <p>Software License</p>
      </div>
      <div class="icon">
        <i class="fa fa-barcode"></i>
      </div>
      <a href="<?php echo base_url('software') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
  </div>
  
  <?php
  /*
  echo "<pre>";
  print_r($userdata);
  echo "<pre>";
  print_r($page);
  */
  ?>
</div>

