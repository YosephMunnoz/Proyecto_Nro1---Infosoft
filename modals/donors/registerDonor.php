<!-- Modal -->
<div class="modal fade" id="registerDonationModal" tabindex="-1" aria-labelledby="registerDonationModal_Label" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered small">
    <div class="modal-content">
      <div class="modal-header btn-light">
        <h5 class="modal-title fw-bold" id="registerDonationModal_Label" style="color: #850404;">Register Donors</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="">
            <div class="row g-2">
                <div class="mb-2 col-2">
                    <label for="nationalityUser" style="color: #850404;">Nationality</label>
                    <select class="form-select form-select-sm text-muted" name="nationality" id="nationalityUser">
                        <option value="1">V-</option>
                        <option value="2">E-</option>
                    </select>
                </div>
                <div class="mb-2 col-4">
                    <label for="identityCardUser text-left" style="color: #850404;">.</label>
                    <input type="number" class="form-control form-control-sm" id="identityCardUser">
                </div>      
            </div>
            <div class="row g-2">
                <div class="mb-2 col-6">
                    <label for="nameUser" style="color: #850404;">Name</label>
                    <input type="text" class="form-control form-control-sm" id="nameUser">
                </div>
                <div class="mb-2 col-6">
                    <label for="lasNameUser" style="color: #850404;">Last Name</label>
                    <input type="text" class="form-control form-control-sm" id="lastNameUser">
                </div>
            </div>
            <div class="row g-3">
                <div class="mb-2 col-6">
                    <label for="Sexo" style="color: #850404;">Sexo</label>
                    <select class="form-select form-select-sm text-muted" id="Sexo">
                        <option value="">Masculino</option>
                        <option value="">Femenino</option>
                    </select>
                </div>
                <div class="mb-2 col-4">
                    <label for="dateOfBirth" style="color: #850404;">Date of Birth</label>
                    <input type="date" class="form-control form-control-sm" id="fechaNacimiento">
                </div>
                <div class="mb-2 col-2">
                    <label for="edad" style="color: #850404;">Age</label>
                    <input type="text" class="form-control form-control-sm" value="" id="edad" disabled readonly>
                </div>  
            </div>
            <div class="row g-2">
                <div class="mb-2 col-6">
                    <label for="mailUser" style="color: #850404;">Mail</label>
                    <input type="text" class="form-control form-control-sm" id="mailUser">
                </div>
                <div class="mb-2 col-6">
                    <label for="phoneUser" style="color: #850404;">Phone</label>
                    <input type="tel" class="form-control form-control-sm" id="phoneUser">
                </div>
            </div>
            <div class="row g-2">
                <div class="mb-2 col-12">
                    <label for="directionUser" style="color: #850404;">Direction</label>
                    <textarea name="" id="directionUser" class="form-control"></textarea>
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