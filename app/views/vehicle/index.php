<?php
   require APPROOT . '/views/includes/head.php';
?>

<div class="navbar dark">
    <?php
       require APPROOT . '/views/includes/navigation.php';
    ?>
</div>
<style>
    .top-nav ul {
    top: 20% !important;
    }
</style>
<div class="m-5">
    <!-- root -->
    <div class="row mb-3">
        <div class="col-xs-12 col-md-6">
            <h2>Search Vehicles</h2>
        </div>
    </div>

    <form action="<?php echo URLROOT."/vehicles/index"?>" role="form" method="POST">
        <div class="d-flex">
            <div class="form-group">
                <label for="id">Id</label>
                <div class="controls">
                    <input type="text" id="id" name="id" class="form-control">
                </div>
            </div>
            <div class="form-group ml-2">
                <label for="name">Name</label>
                <div class="controls">
                    <input type="text" id="name" name="name" class="form-control">
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>

    <div class="my-4">
        <div class="row">
            <?php foreach($data['vehicles'] as $vehicle): ?>
            <div class="col-2 mt-3 p-0 bg-white">
                <!-- item -->
                <div class="col vehicle-inventory-container">
                    <div class="ibox">
                        <div class="ibox-content product-box">
                            <div class="product-imitation vehicle-inventory-item">
                                <a href="<?php echo URLROOT."/vehicles/detail/".$vehicle->id; ?>" title='vehicle detail'>
                                    <img src="<?= $vehicle->image ?>" width="100%" alt="" />
                                    <span
                                        class="product-price-discount"> <?php echo $vehicle->salesPrice ? number_format($vehicle->salesPrice,2): number_format($vehicle->retailPrice,2) ?></span>
                                </a>
                            </div>
                            <div class="product-desc">
                                <small class="text-muted"> <?= $vehicle->type ?></small>
                                <a href="<?php echo URLROOT."/vehicles/detail/".$vehicle->id; ?>" class="product-name"> <?= $vehicle->name ?></a>
                                <div>
                                    <img src="//gcbimages.storage.googleapis.com/vidbtn/video_btn_red.png"
                                        alt="Button for Video" title="Button for Video" style="cursor: pointer" />
                                </div>
                                <div class="small m-t-xs">
                                    <div class="row">
                                        <div class="col">Condition:</div>
                                        <div class="col"><?= $vehicle->condition ?></div>
                                    </div>

                                    <div class="row">
                                        <div class="col">Retail Price:</div>
                                        <div class="col">$ <?= number_format($vehicle->retailPrice,2) ?></div>
                                    </div>
                                    <?php if( $vehicle->salesPrice): ?>
                                    <div class="row">
                                        <div class="col">Savings Up To:</div>
                                        <div class="col">
                                            <?= number_format($vehicle->retailPrice - $vehicle->salesPrice,2) ?>
                                        </div>
                                    </div>
                                    <?php endif; ?>
                                    <div class="row">
                                        <div class="col">Sales Price:</div>
                                        <div class="col">$<?= number_format($vehicle->salesPrice,2)  ?></div>
                                    </div>

                                    <div class="row">
                                        <div class="col">Stock #:</div>
                                        <div class="col"><?= $vehicle->stock ?></div>
                                    </div>

                                    <div class="row">
                                        <div class="col">Mileage:</div>
                                        <div class="col"><?= $vehicle->mileage ?></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end item -->
            </div>
            <?php endforeach; ?>
            <?php if(empty($data['vehicles'])): ?>
                No vehicle types are recorded
            <?php endif; ?>
        </div>
    </div>

    <!-- end root -->
</div>