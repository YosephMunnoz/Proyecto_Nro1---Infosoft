<!-- Modal -->
<div class="modal fade" id="ChangePassword_Modal" tabindex="-1" aria-labelledby="ChangePassword_Modal_Label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="ChangePassword_Modal_Label" style="color: #850404;">Change your password</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="">
                <div class="modal-body">
                    <div>
                        <label for="ChangePassword"  class="form-label">
                            <div class="input-group flex-nowrap">
                                <span class="input-group-text" style="background: #850404;">
                                    <i class="fas fa-fw fa-key text-white"></i>
                                </span>
                                <input type="password" class='form-control' id="ChangePassword" placeholder="Current password">
                            </div>
                        </label>
                        <label for="password"  class="form-label">
                            <div class="input-group flex-nowrap pr">
                                <span class="input-group-text" style="background: #850404;">
                                    <i class="fas fa-fw fa-lock text-white"></i>
                                </span>
                                <input type="password" class='form-control' id="password" placeholder="Password">
                            </div>
                        </label>
                        <label for="confirPass"  class="form-label">
                            <div class="input-group flex-nowrap">
                                <span class="input-group-text" style="background: #850404;">
                                    <i class="fas fa-fw fa-lock text-white"></i>
                                </span>
                                <input type="password" class='form-control' id="confirPass" placeholder="Confirm Password">
                            </div>
                        </label>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn text-white" style="background: #850404;">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>