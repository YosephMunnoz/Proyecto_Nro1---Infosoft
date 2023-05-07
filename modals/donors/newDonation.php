<!-- Modal -->
<div class="modal fade" id="newDonationModal" tabindex="-1" aria-labelledby="newDonationModal_Label" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered small">
    <div class="modal-content">
      <div class="modal-header btn-light">
        <h5 class="modal-title fw-bold" id="newDonationModal_Label" style="color: #850404;">New Donation</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="">
            <div class="row g-2">
              <div class="mb-2 col-6">
                <label for="Document" class="form-label" style="color: #850404;">Document</label>
                <div class="input-group">
                  <button class="btn btn-outline btn-sm" type="button" id="button-addon1" style="background: #850404;">
                    <i class="fas fa-search text-white" ></i>
                  </button>
                  <input type="number" class="form-control form-control-sm" id="identityCardUser">
                </div>
              </div>
              <div class="mb-2 col-6">
                <label for="Status" style="color: #850404;">Status</label>
                <input type="text" class="form-control form-control-sm" id="Status" aria-label="Disabled input" disabled readonly>
              </div>  
            </div>
            <div class="row g-2">
                <div class="mb-2 col-6">
                    <label for="nameUser" style="color: #850404;">Name</label>
                    <input type="text" class="form-control form-control-sm" id="nameUser" disabled readonly>
                </div>
                <div class="mb-2 col-6">
                    <label for="lasNameUser" style="color: #850404;">Last Name</label>
                    <input type="text" class="form-control form-control-sm" id="lastNameUser" disabled readonly>
                </div>
            </div>
            <div class="row g-2">
                <div class="mb-2 col-6">
                    <label for="TypeDonation" style="color: #850404;">Type Donation</label>
                    <select class="form-select form-select-sm text-muted" id="TypeDonation">
                        <option selected>----- Selected -----</option>
                        <option value="1">Donación de sangre</option>
                        <option value="2">Donación de plaquetas</option>
                        <option value="3">Donación de plasma</option>
                        <option value="4">Donación Plasma- Convaleciente</option>
                        <option value="5">Donación de glóbulos rojos</option>
                    </select>
                </div>
                <div class="mb-2 col-6">
                    <label for="TypeDonor" style="color: #850404;">Type Donor</label>
                    <select class="form-select form-select-sm text-muted" id="TypeDonor">
                        <option selected>----- Selected -----</option>
                        <option value="1">volunteer</option>
                        <option value="2">Referred</option>
                        <option value="3">Family</option>
                        <option value="4">Relative</option>
                        <option value="5">Remunerated</option>
                    </select>
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