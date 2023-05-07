<!-- Modal -->
<div class="modal fade" id="CreateUserModal" tabindex="-1" aria-labelledby="CreateUserModal_Label" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered small">
    <div class="modal-content">
      <div class="modal-header btn-light">
        <h5 class="modal-title fw-bold" id="CreateUserModal_Label" style="color: #850404;">User Creation</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="">
            <div class="row g-3">
                <div class="mb-2 col-6 ">
                    <label for="aliasUser" style="color: #850404;">User Alias</label>
                    <input type="text" class="form-control form-control-sm" id="aliasuser">
                </div>
                <div class="mb-2 col-2">
                    <label for="nationalityUser" style="color: #850404;">Nationality</label>
                    <select class="form-select form-select-sm text-muted" name="nationality" id="nationalityUser">
                        <option value="1">V-</option>
                        <option value="2">E-</option>
                        <option value="3-">M-</option>
                    </select>
                </div>
                <div class="mb-2 col-4">
                    <label for="identityCardUser text-left" style="color: #850404;">.</label>
                    <input type="number" class="form-control form-control-sm" id="identityCardUser">
                </div>  
            </div>
            <div class="row g-2">
                <div class="mb-2 col-6">
                    <label for="nameUser" style="color: #850404;">User Name</label>
                    <input type="text" class="form-control form-control-sm" id="nameUser">
                </div>
                <div class="mb-2 col-6">
                    <label for="lasNameUser" style="color: #850404;">User Last Name</label>
                    <input type="text" class="form-control form-control-sm" id="lastNameUser">
                </div>
            </div>
            <div class="row g-2">
                <div class="mb-2 col-6">
                    <label for="mailUser" style="color: #850404;">User Mail</label>
                    <input type="text" class="form-control form-control-sm" id="mailUser">
                </div>
                <div class="mb-2 col-6">
                    <label for="phoneUser" style="color: #850404;">User Phone</label>
                    <input type="tel" class="form-control form-control-sm" id="phoneUser">
                </div>
            </div>
            <div class="row g-2">
                <div class="mb-2 col-12">
                    <label for="directionUser" style="color: #850404;">Direction</label>
                    <textarea name="" id="directionUser" class="form-control"></textarea>
                </div>
            </div> 
            <div class="row g-2">
                <div class="mb-2 col-6">
                    <label for="password" style="color: #850404;">Password</label>
                    <input type="password" class="form-control form-control-sm" id="password">
                </div>
                <div class="mb-2 col-6">
                    <label for="confirmPassword" style="color: #850404;">Confirm Password</label>
                    <input type="password" class="form-control form-control-sm" id="confirmPassword">
                </div>
            </div>
            <div class="row g-3">
                <div class="mb-2 col-6">
                    <label for="typeUser" style="color: #850404;">Type User</label>
                    <select class="form-select form-select-sm text-muted" name="typeUser" id="typeUser">
                        <option selected>Select and Option</option>
                        <option value="1">Super User</option>
                        <option value="2">Bioanalyst</option>
                        <option value="3">Hemtherapist</option>
                        <option value="3">Attendee</option>
                    </select>
                </div>
                <div class="mb-2 col-6">
                    <label for="profileUser" style="color: #850404;">Profile User</label>
                    <select class="form-select form-select-sm text-muted" name="profileUser" id="profileUser">
                        <option selected>Select and Option</option>
                        <option value="1">Super User</option>
                        <option value="2">Bioanalyst</option>
                        <option value="3">Hemtherapist</option>
                        <option value="3">Attendee</option>
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