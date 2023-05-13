<!-- Modal -->
<div class="modal fade" id="detalles<?= $r['id']?>" tabindex="-1" aria-labelledby="detalles_label" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered small">
    <div class="modal-content">
      <div class="modal-header btn-light">
        <h5 class="modal-title fw-bold titulo-modal" id="detalles_label">Detalles de: <span class="h6"><?= $_GET["servicio"]?></span> - Canal: <span class="h6"><?php if (isset($link)){ echo $link; }else{ echo "Todos"; } ?></span> - ID:<span class="h6"> <?= $r['id']?></span></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="">
            <div class="row g-5">
                <div class="mb-2 col-2">
                    <label for="nivel_criticidad" class="titulo-modal ">Nivel de Criticidad</label>
                    <input type="text" class="form-control form-control-sm" value="<?=$r['nivel_criticidad'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="Área" class="titulo-modal fs-5">Área</label>
                    <input type="text" class="form-control form-control-sm" value="<?=$r['area'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2" >
                    <label for="donationDate" class="titulo-modal fs-5">Donation Date</label>
                    <input type="text" class="form-control form-control-sm" id="donationDate" aria-label="Disabled input" disabled readonly> 
                </div>
                <div class="mb-2 col-2">
                    <label for="donationTime" class="titulo-modal fs-5">Donation Time</label>
                    <input type="text" class="form-control form-control-sm" id="donationTime" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="donationTime" class="titulo-modal fs-5">Donation Time</label>
                    <input type="text" class="form-control form-control-sm" id="donationTime" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="donationTime" class="titulo-modal fs-5">Donation Time</label>
                    <input type="text" class="form-control form-control-sm" id="donationTime" aria-label="Disabled input" disabled readonly>
                </div>
            </div>
            <div class="row g-5">
                <div class="mb-2 col-6">
                    <label for="nameUser" class="titulo-modal fs-5">Name</label>
                    <input type="text" class="form-control form-control-sm" id="nameUser" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="Sexo" class="titulo-modal fs-5">Sexo</label>
                    <input type="text" class="form-control form-control-sm" id="Sexo" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="dateOfBirth" class="titulo-modal fs-5">Date of Birth</label>
                    <input type="text" class="form-control form-control-sm" id="dateOfBirth" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="age" class="titulo-modal fs-5">Age</label>
                    <input type="text" class="form-control form-control-sm" id="age" aria-label="Disabled input" disabled readonly>
                </div>
            </div>
            <div class="row g-5">
                <div class="mb-2 col-4">
                    <label for="mailUser" class="titulo-modal fs-5">Mail</label>
                    <input type="text" class="form-control form-control-sm" id="mailUser" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-4">
                    <label for="phoneUser" class="titulo-modal fs-5">Phone</label>
                    <input type="text" class="form-control form-control-sm" id="phoneUser" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-4">
                    <label for="Suitable" class="titulo-modal fs-5">Suitable</label>
                    <input type="text" class="form-control form-control-sm" id="Suitable" aria-label="Disabled input" disabled readonly>
                </div>  
            </div>
            <div class="row g-5">
                <div class= "mb-2 col-2">
                    <label for="typeBlood" class="titulo-modal fs-5">Type Blood</label>
                        <input class="form-control form-control-sm" type="text" id="typeBlood" aria-label="Disabled input" disabled readonly>
                </div>
                <div class= "mb-2 col-2">
                <label for="subTypeBlood" class="titulo-modal fs-5">Sub Type Blood</label>
                        <input class="form-control form-control-sm" type="text" id="suTypeBlood" aria-label="Disabled input" disabled readonly>
                </div>
                <div class= "mb-2 col-4">
                    <label for="typeDonation" class="titulo-modal fs-5">Type Donation</label>
                    <input type="text" class="form-control form-control-sm" id="typeDonation" aria-label="Disabled input" disabled readonly>
                </div>
                <div class= "mb-2 col-4">
                <label for="typeDonor" class="titulo-modal fs-5">Type Donor</label>
                    <input type="text" class="form-control form-control-sm" id="typeDonor" aria-label="Disabled input" disabled readonly>
                </div>
            </div>
            <div class="row g-5">
                    <div class= "mb-2 col-2">
                        <label for="Height" class="titulo-modal fs-5">Height</label>
                        <input type="text" class="form-control form-control-sm" id="Height" aria-label="Disabled input" disabled readonly>
                    </div>
                    <div class= "mb-2 col-2">
                        <label for="Weight" class="titulo-modal fs-5">Weight</label>
                        <input type="text" class="form-control form-control-sm" id="Weight" aria-label="Disabled input" disabled readonly>
                    </div>
                    <div class= "mb-2 col-2">
                        <label for="Pulse" class="titulo-modal fs-5">Pulse</label>
                        <input type="text" class="form-control form-control-sm" id="Pulse" aria-label="Disabled input" disabled readonly>
                    </div>
                    <div class= "mb-2 col-2">
                        <label for="diastolic" class="titulo-modal fs-5">Diastolic</label>
                        <input type="text" class="form-control form-control-sm" id="diastolic" aria-label="Disabled input" disabled readonly>
                    </div>
                    <div class= "mb-2 col-2">
                        <label for="systolic" class="titulo-modal fs-5">Systolic</label>
                        <input type="text" class="form-control form-control-sm" id="systolic" aria-label="Disabled input" disabled readonly>
                    </div>
                    <div class= "mb-2 col-2">
                        <label for="Hemoglobin" class="titulo-modal fs-5">Hemoglobin</label>
                        <input type="text" class="form-control form-control-sm" id="Hemoglobin" aria-label="Disabled input" disabled readonly>
                    </div>
                </div>
                <div class="row g-5">
                    <div class="mb-2 col-6">
                        <label for="Diagnosis" class="titulo-modal fs-5">Diagnosis</label>
                        <input type="text" class="form-control form-control-sm" id="Diagnosis" aria-label="Disabled input" disabled readonly>
                    </div>
                    <div class="mb-2 col-6">
                        <label for="Treatment" class="titulo-modal fs-5">Treatment</label>
                        <input type="text" class="form-control form-control-sm" id="Treatment" aria-label="Disabled input" disabled readonly>
                    </div>
                </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary btn-sm" data-bs-dismiss="modal">Close</button>
        <label for="">
            <input type="submit" class="btn btn-sm text-white" value="Save" style="background: #850404;">
        </label>
        <input type="hidden">
      </div>
    </div>
  </div>
</div>