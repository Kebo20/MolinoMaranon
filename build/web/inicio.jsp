<%@page import="dao.agricultorDao"%>
<%@page import="modelo.agricultor"%>
<%@page import="modelo.campaña"%>
<%@page import="dao.campañaDao"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>El Marañon E.I.R.l</title>
    <!-- Favicon-->
    <link rel="icon" href="images/logo marañon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- JQuery DataTable Css -->
    <link href="plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">

    <!-- Custom Css -->
    <link href="css/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="css/themes/all-themes.css" rel="stylesheet" />
    <!-- Bootstrap Select Css -->
    <link href="plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />
</head>

<body class="theme-red">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Cargando...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->
   
    <!-- Top Bar -->
    <nav class="navbar">
        <div class="container-fluid" style="background-color:#0e7379">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand" href=""><b></b> </a>
                <a class="navbar-brand" style="font-size: 30px;color:#0e7379">-----------------------------------</a>
                <a class="navbar-brand" style="font-size: 30px;color:#ffffff "><b>SISTEMA DE GESTIÓN ADMINISTRATIVA</b></a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                  
                    
                    
                    <li class="pull-right"><a href="javascript:void(0);" class="js-right-sidebar" data-close="true" style="font-size: 30px">...</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
   
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="header">Menú</li>
                    <li>
                        <a href="inicio.jsp">
                            <i class="material-icons"></i>
                            <span style="color: #0e7379">Inicio</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);"  class="menu-toggle">
                            <i class="material-icons"></i>
                            <span>Ventas</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="ventas.jsp" >
                                    <span>Registrar</span>
                                </a>
                             
                            </li>
                            <li>
                                <a href="listarVentas.jsp" >
                                    <span>Listar Ventas</span>
                                </a>
                             
                            </li>
                          
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);"  class="menu-toggle">
                            <i class="material-icons"></i>
                            <span>Gastos</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="servicios.jsp" >
                                    <span>Proveedores</span>
                                </a>
                             
                            </li>
                            <li>
                                <a href="sueldos.jsp" >
                                    <span>Sueldos</span>
                                </a>
                             
                            </li>
                            <li>
                                <a href="compras.jsp" >
                                    <span>Compras y otros gastos</span>
                                </a>
                             
                            </li>
                          
                        </ul>
                    </li>
                    <li>
                        <a href="listarAgricultores.jsp"  >
                            <i class="material-icons"></i>
                            <span>Agricultores</span>
                        </a>
                    
                    </li>
                    <li>
                        <a href="listarAgricultorProduccion.jsp"  >
                            <i class="material-icons"></i>
                            <span>Producción</span>
                        </a>
                           
                    </li>
                    <li>
                        <a href="trabajadores.jsp" >
                            <i class="material-icons"></i>
                            <span>Trabajadores</span>
                        </a>
                    
                    </li>
                    <li>
                        <a href="proveedores.jsp" >
                            <i class="material-icons"></i>
                            <span>Proveedores</span>
                        </a>
                    
                    </li>
                                            <li>
                            <a href="javascript:void(0);"  class="menu-toggle">
                                <i class="material-icons"></i>
                                <span>Inventarios</span>
                            </a>
                            <ul class="ml-menu">
                                <li>
                                    <a href="inventarioArticulos.jsp" >
                                        <span>Materiales</span>
                                    </a>

                                </li>
                                <li>
                                    <a href="inventarioSacos.jsp" >
                                        <span>Sacos</span>
                                    </a>

                                </li>
                              

                            </ul>
                        </li>
                  
                    <li class="header"></li>
                    <li>
                        <a href="ReportesDiarios.jsp">
                            <i class="material-icons col-red"></i>
                            <span>Reportes Diarios</span>
                        </a>
                    </li>
                    <li>
                        <a href="ReportesMensuales.jsp">
                            <i class="material-icons col-amber"></i>
                            <span>Reportes Mensuales</span>
                        </a>
                    </li>
                  
                </ul>
            </div>
            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal">
                <div class="copyright" style="color:#ffffff ">
                    &copy; 2019 - Sistema de Gestión - Molino
                </div>
                <div class="version" style="color:#ffffff "> 
                    <b>Version: </b> 1.0
                </div>
            </div>
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->
        <!-- Right Sidebar -->
        <aside id="rightsidebar" class="right-sidebar">
            <ul class="nav nav-tabs tab-nav-right" role="tablist">
                
                <li role="presentation"><a href="#settings" data-toggle="tab">Kevin Alberca Cubas</a></li>
            </ul>
            <div class="tab-content">
               
                <div role="tabpanel" class="tab-pane fade" id="settings">
                    <div class="demo-settings">
                        
                        <ul class="setting-list">
                            <li>
                                <span>Cerrar sesión</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                        
                        </ul>

                    </div>
                </div>
            </div>
        </aside>
        <!-- #END# Right Sidebar -->
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>
                    
                </h2>
            </div>
            
          
         
             <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        
                         
                                <img src="images/logo.PNG" class="center " height="500"  width="800">
                 
                       
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>

 
    
                   
                                           
                                           
                                           

    
            
           
        
    </section>

    <!-- Jquery Core Js -->
    <script src="plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="plugins/node-waves/waves.js"></script>

    <!-- Jquery DataTable Plugin Js -->
    <script src="plugins/jquery-datatable/jquery.dataTables.js"></script>
    <script src="plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
    <script src="plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>

    <!-- Custom Js -->
    <script src="js/admin.js"></script>
    <script src="js/pages/tables/jquery-datatable.js"></script>

    <!-- Demo Js -->
    <script src="js/demo.js"></script>
    <script src="js/pages/ui/notifications.js"></script>
      <script src="js/pages/ui/modals.js"></script>
    
</body>

</html>

