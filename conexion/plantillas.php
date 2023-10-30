<?php
include "conexion.php";

if (isset($_GET["servicio"]))
{
	
	$sql = "SELECT DISTINCT(KENC_CRITICAL_LEVEL) FROM ke_nivel_criticidad";
	$var1 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));
		
	$sql = "SELECT DISTINCT(KESA_SERVICE) FROM ke_servicios_asociados";
	$var2 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));
		
	$sql = "SELECT DISTINCT(KECA_CHANNEL) FROM ke_canal_aplicativo";
	$var3 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));
		
	$sql = "SELECT DISTINCT(KEA_AREA) FROM ke_areas";
	$var4 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));
	
	$sql = "SELECT DISTINCT(KESRV_SERVER) FROM ke_servidores";
	$var5 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));
	
	$sql = "SELECT DISTINCT(KEIP_IP) FROM ke_ip";
	$var6 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));
	
	$sql = "SELECT DISTINCT(KEHN_HOSTNAME) FROM ke_hostname";
	$var7 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));
		
	$sql = "SELECT DISTINCT(KESO_OPERATING_SYSTEM) FROM ke_sistemas_operativos";
	$var8 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));
		
	$sql = "SELECT DISTINCT(KEVSOS_VERSION) FROM ke_version_os";
	$var9 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));
		
	$sql = "SELECT DISTINCT(KEIDB_INSTANCE)  FROM ke_instancia_base_de_datos";
	$var10 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));
		
	$sql = "SELECT DISTINCT(KEDBM_GESTOR)  FROM ke_gestores_bases_de_datos";
	$var11 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));

	$sql = "SELECT DISTINCT(KEDBMVS_VERSION)  FROM ke_dbm_version";
	$var12 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));

	$sql = "SELECT DISTINCT(KEB_BUS) FROM ke_bus";
	$var13 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));

	$sql = "SELECT DISTINCT(KECT_CAPA_TUXEDO) FROM ke_capa_tuxedo";
	$var14 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));

	$sql = "SELECT DISTINCT(KEW_WEBLOGIC) FROM ke_weblogic";
	$var15 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));

	$sql = "SELECT DISTINCT(KEFC_F5_COMUNICACIONES) FROM ke_f5_comunicaciones";
	$var16 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));

	$sql = "SELECT DISTINCT(KEIPF_IP_F5) FROM ke_ipf5";
	$var17 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));

	$sql = "SELECT DISTINCT(KEPS_POOLS_VS) FROM ke_pools_vs";
	$var18 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));

	$sql = "SELECT DISTINCT(KEOSA_OTHER_ASSOCIATED_SERVICES) FROM ke_otros_servicios_asociados";
	$var19 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));

	$sql = "SELECT DISTINCT(KEU_LOCATION) FROM ke_ubicacion";
	$var20 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));

	$sql = "SELECT DISTINCT(KER_RACK) FROM ke_rack";
	$var21 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));

	$sql = "SELECT DISTINCT(KEOBG_GENERAL_REMARKS) FROM ke_observaciones_generales";
	$var22 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));

	$sql = "SELECT KES_ID,KES_STATUS FROM ke_status";
	$var23 = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));
			
}

?>