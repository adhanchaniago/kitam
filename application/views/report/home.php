<div class="row">
  <div class="col-md-12">
    <div class="nav-tabs-custom">

      <ul class="nav nav-tabs">
        <li class="active"><a href="#itasset-tab" data-toggle="tab">IT Asset</a></li>
        <li><a href="#staff-tab" data-toggle="tab">Staff</a></li>
        <li><a href="#supplier-tab" data-toggle="tab">Supplier</a></li>
      </ul>

      <div class="tab-content">

        <div class="active tab-pane" id="itasset-tab">
          <form class="form-horizontal">
            <div class="form-group">
              <label for="category" class="col-sm-2 control-label">Category</label>
              <div class="col-sm-3">
                <select class="it-asset-category form-control" name="category">
		          <?php foreach ($category_hw as $menu_hw) { ?>
		          	<option value="<?php echo $menu_hw->name; ?>"><?php echo $menu_hw->label; ?></option>
		          <?php } ?>
		          	<option value="software">Software</option>
		        </select>
              </div>
            </div>
            <div class="form-group">
              <label for="saveas" class="col-sm-2 control-label">Save as</label>
              <div class="col-sm-3">
                <select class="form-control" name="saveas">
		          <option value="xlsx">Excel</option>
		        </select>
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
              	<!--
                <button type="submit" class="btn btn-danger">Download</button>
            	-->
                <a href="#" class="btn btn-danger btn-download">Download</a>
              </div>
            </div>
          </form>
        </div>

        <div class="tab-pane" id="staff-tab">
          <form class="form-horizontal" action="#" enctype="multipart/form-data">
            <div class="form-group">
              <label for="saveas" class="col-sm-2 control-label">Save as</label>
              <div class="col-sm-3">
                <select class="form-control" name="saveas">
		          <option value="xlsx">Excel</option>
		        </select>
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <a href="<?php echo base_url('staff/export'); ?>" class="btn btn-danger">Download</a>
              </div>
            </div>
          </form>
        </div>

        <div class="tab-pane" id="supplier-tab">
          <form class="form-horizontal" action="#" enctype="multipart/form-data">
            <div class="form-group">
              <label for="saveas" class="col-sm-2 control-label">Save as</label>
              <div class="col-sm-3">
                <select class="form-control" name="saveas">
		          <option value="xlsx">Excel</option>
		        </select>
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <a href="<?php echo base_url('supplier/export'); ?>" class="btn btn-danger">Download</a>
              </div>
            </div>
          </form>
        </div>

      </div>
    </div>

    <div class="msg" style="display:none;">
      <?php echo $this->session->flashdata('msg'); ?>
    </div>
  </div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
	    $("#itasset-tab .btn-download").click(function(){
	    	var itaUrl;
	    	var itaCat = $('#itasset-tab .it-asset-category').val();

	    	if(itaCat !== 'software') {
	    		itaUrl = "<?php echo base_url('devices/export/category/'); ?>"+itaCat;
	    		window.location.href = itaUrl;
	    	}
	    	else {
	    		itaUrl = "<?php echo base_url('software/export'); ?>";
	    		window.location.href = itaUrl;
	    	}
	        console.log("Helo : "+itaUrl);
	    });
	});
</script>