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
                    <label for="Donor_No" style="color: #850404;">Donor Nº</label>
                    <input type="text" class="form-control form-control-sm" id="Donor_No" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="Donation_No" style="color: #850404;">Donation Nº</label>
                    <input type="text" class="form-control form-control-sm" id="Donation_No" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2" >
                    <label for="donationDate" style="color: #850404;">Donation Date</label>
                    <input type="text" class="form-control form-control-sm" id="donationDate" aria-label="Disabled input" disabled readonly> 
                </div>
                <div class="mb-2 col-2">
                    <label for="donationTime" style="color: #850404;">Donation Time</label>
                    <input type="text" class="form-control form-control-sm" id="donationTime" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-4">
                    <label for="document" style="color: #850404;">Document</label>
                    <input type="text" class="form-control form-control-sm" id="document" aria-label="Disabled input" disabled readonly>
                </div>
            </div>
            <div class="row g-4">
                <div class="mb-2 col-6">
                    <label for="nameUser" style="color: #850404;">Name</label>
                    <input type="text" class="form-control form-control-sm" id="nameUser" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="Sexo" style="color: #850404;">Sexo</label>
                    <input type="text" class="form-control form-control-sm" id="Sexo" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="dateOfBirth" style="color: #850404;">Date of Birth</label>
                    <input type="text" class="form-control form-control-sm" id="dateOfBirth" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="age" style="color: #850404;">Age</label>
                    <input type="text" class="form-control form-control-sm" id="age" aria-label="Disabled input" disabled readonly>
                </div>
            </div>
            <div class="row g-3">
                <div class="mb-2 col-4">
                    <label for="mailUser" style="color: #850404;">Mail</label>
                    <input type="text" class="form-control form-control-sm" id="mailUser" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-4">
                    <label for="phoneUser" style="color: #850404;">Phone</label>
                    <input type="text" class="form-control form-control-sm" id="phoneUser" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-4">
                    <label for="Suitable" style="color: #850404;">Suitable</label>
                    <input type="text" class="form-control form-control-sm" id="Suitable" aria-label="Disabled input" disabled readonly>
                </div>  
            </div>
            <div class="row g-1">
                <div class="mb-2 col-12">
                    <label for="directionUser" style="color: #850404;">Direction</label>
                    <textarea name="" id="directionUser" class="form-control form-control-sm" aria-label="Disabled input" disabled readonly></textarea>
                </div>
            </div>
            <div class="row g-4">
                <div class= "mb-2 col-2">
                    <label for="typeBlood" style="color: #850404;">Type Blood</label>
                        <input class="form-control form-control-sm" type="text" id="typeBlood" aria-label="Disabled input" disabled readonly>
                </div>
                <div class= "mb-2 col-2">
                <label for="subTypeBlood" style="color: #850404;">Sub Type Blood</label>
                        <input class="form-control form-control-sm" type="text" id="suTypeBlood" aria-label="Disabled input" disabled readonly>
                </div>
                <div class= "mb-2 col-4">
                    <label for="typeDonation" style="color: #850404;">Type Donation</label>
                    <input type="text" class="form-control form-control-sm" id="typeDonation" aria-label="Disabled input" disabled readonly>
                </div>
                <div class= "mb-2 col-4">
                <label for="typeDonor" style="color: #850404;">Type Donor</label>
                    <input type="text" class="form-control form-control-sm" id="typeDonor" aria-label="Disabled input" disabled readonly>
                </div>
            </div>
            <div class="row g-6">
                    <div class= "mb-2 col-2">
                        <label for="Height" style="color: #850404;">Height</label>
                        <input type="text" class="form-control form-control-sm" id="Height" aria-label="Disabled input" disabled readonly>
                    </div>
                    <div class= "mb-2 col-2">
                        <label for="Weight" style="color: #850404;">Weight</label>
                        <input type="text" class="form-control form-control-sm" id="Weight" aria-label="Disabled input" disabled readonly>
                    </div>
                    <div class= "mb-2 col-2">
                        <label for="Pulse" style="color: #850404;">Pulse</label>
                        <input type="text" class="form-control form-control-sm" id="Pulse" aria-label="Disabled input" disabled readonly>
                    </div>
                    <div class= "mb-2 col-2">
                        <label for="diastolic" style="color: #850404;">Diastolic</label>
                        <input type="text" class="form-control form-control-sm" id="diastolic" aria-label="Disabled input" disabled readonly>
                    </div>
                    <div class= "mb-2 col-2">
                        <label for="systolic" style="color: #850404;">Systolic</label>
                        <input type="text" class="form-control form-control-sm" id="systolic" aria-label="Disabled input" disabled readonly>
                    </div>
                    <div class= "mb-2 col-2">
                        <label for="Hemoglobin" style="color: #850404;">Hemoglobin</label>
                        <input type="text" class="form-control form-control-sm" id="Hemoglobin" aria-label="Disabled input" disabled readonly>
                    </div>
                </div>
                <div class="row g-2">
                    <div class="mb-2 col-6">
                        <label for="Diagnosis" style="color: #850404;">Diagnosis</label>
                        <input type="text" class="form-control form-control-sm" id="Diagnosis" aria-label="Disabled input" disabled readonly>
                    </div>
                    <div class="mb-2 col-6">
                        <label for="Treatment" style="color: #850404;">Treatment</label>
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