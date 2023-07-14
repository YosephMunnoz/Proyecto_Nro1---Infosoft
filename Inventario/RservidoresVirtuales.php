<div class="col-12" id="virtuales">
    <div class="card border-left-danger shadow">
        <div class="card-body">
            <div class="row align-items-center">
                <div class="col">
                    <div class="text-xs font-weight-bold mb-1">
                        <div class="row justify-content-centar">
                            <div class="col-1">
                                <i class="fas fa-desktop fa-6x text-gray-300"></i>
                            </div>
                            <div class="col-11">
                                <div class="text-xs font-weight-bold text-primary mb-1">
                                    <h3 class="text-danger text-start"><strong>Servidores Virtuales</strong></h3>
                                    <h4 class="text-gray-800 text-start">Canaima:</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="align-items-center">
                        <div class="">
                            <table class="table table-sm table-hover text-center" width="100%" cellspacing="0">
                                <thead class="table-danger">
                                    <tr>
                                        <th scope="col">Producción</th>
                                        <th scope="col">Testing</th>
                                        <th scope="col">Desarrollo</th>
                                        <th scope="col">implementacion</th>
                                        <th scope="col">Apagados</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <?php foreach ($result_1 as $r) {?><?= $r['Canaima_produccion'];?><?php } ?>
                                        </td>
                                        <td class="celda-td">
                                            <?php foreach ($result_1 as $r) {?><?= $r['Canaima_testing'];?><?php } ?>
                                        </td>
                                        <td class="celda-td">
                                            <?php foreach ($result_1 as $r) {?><?= $r['Canaima_desarrollo'];?><?php } ?>
                                        </td>
                                        <td class="celda-td">
                                            <?php foreach ($result_1 as $r) {?><?= $r['Canaima_implementacion'];?><?php } ?>
                                        </td>
                                        <td class="celda-td">
                                            <?php foreach ($result_1 as $r) {?><?= $r['Canaima_apagados'];?><?php } ?>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="text-xs font-weight-bold mb-1">
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-11">
                                <h4 class="text-gray-800 text-start">Colgate:</h4>
                            </div>
                        </div>
                    </div>
                    <div class="align-items-center">
                        <table class="table table-hover text-center table-sm">
                            <thead class="table-danger">
                                <tr>
                                    <th scope="col">Producción</th>
                                    <th scope="col">Testing</th>
                                    <th scope="col">Desarrollo</th>
                                    <th scope="col">implementacion</th>
                                    <th scope="col">Apagados</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Colgate_produccion'];?><?php } ?>
                                    </td>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Colgate_testing'];?><?php } ?>
                                    </td>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Colgate_desarrollo'];?><?php } ?>
                                    </td>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Colgate_implementacion'];?><?php } ?>
                                    </td>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Colgate_apagados'];?><?php } ?>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="text-xs font-weight-bold text-primary mb-1">
                    <div class="row">
                            <div class="col-1"></div>
                            <div class="col-11">
                                <h4 class="text-gray-800 text-start">Maracay:</h4>
                            </div>
                        </div>
                    </div>
                    <div class="align-items-center">
                        <table class="table table-hover text-center table-sm">
                            <thead class="table-danger">
                                <tr>
                                    <th scope="col">Producción</th>
                                    <th scope="col">Testing</th>
                                    <th scope="col">Desarrollo</th>
                                    <th scope="col">implementacion</th>
                                    <th scope="col">Apagados</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Maracay_produccion'];?><?php } ?>
                                    </td>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Maracay_testing'];?><?php } ?>
                                    </td>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Maracay_desarrollo'];?><?php } ?>
                                    </td>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Maracay_implementacion'];?><?php } ?>
                                    </td>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Maracay_apagados'];?><?php } ?>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="text-xs font-weight-bold text-primary mb-1">
                    <div class="row">
                            <div class="col-1"></div>
                            <div class="col-11">
                                <h4 class="text-gray-800 text-start">Total:</h4>
                            </div>
                        </div>
                    </div>
                    <div class="align-items-center">
                        <table class="table table-hover text-center table-sm">
                            <thead class="table-danger">
                                <tr>
                                    <th scope="col">Producción</th>
                                    <th scope="col">Testing</th>
                                    <th scope="col">Desarrollo</th>
                                    <th scope="col">implementacion</th>
                                    <th scope="col">Apagados</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Total_produccion'];?><?php } ?>
                                    </td>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Total_testing'];?><?php } ?>
                                    </td>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Total_desarrollo'];?><?php } ?>
                                    </td>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Total_implementacion'];?><?php } ?>
                                    </td>
                                    <td>
                                        <?php foreach ($result_1 as $r) {?><?= $r['Total_apagados'];?><?php } ?>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="col" colspan="2" class="table-danger">Totales Servidores Virtuales:</th>
                                    <td colspan="4">
                                        <?php foreach ($result_1 as $r) {?>
                                            <?= $r['Total_produccion'] + $r['Total_testing'] + $r['Total_desarrollo']+ $r['Total_implementacion'] + $r['Total_apagados'];;?>
                                        <?php } ?>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>