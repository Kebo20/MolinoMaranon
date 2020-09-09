<%@page import="dao.compraDao"%>
<%@page import="modelo.compra"%>
<%@page import="modelo.trabajador"%>
<%@page import="dao.trabajadorDao"%>
<%@page import="modelo.sueldo"%>
<%@page import="dao.sueldoDao"%>
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
                    <a class="navbar-brand" href=""><b>SISTEMA DE GESTIÓN</b> </a>
                    <a class="navbar-brand" style="font-size: 30px;color:#0e7379">------------------------------------</a>
                    <a class="navbar-brand" style="font-size: 30px;color:#ffffff "><b>Molino "El Marañon" E.I.R.L</b></a>
                </div>
                <div class="collapse navbar-collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">



                        <li class="pull-right"><a href="javascript:void(0);" class="js-right-sidebar" data-close="true" style="font-size: 30px"></a></li>
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
                                <span>Inicio</span>
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
                        <li class="active"  >
                            <a href="javascript:void(0);"  class="menu-toggle">
                                <i class="material-icons"></i>
                                <span style="color: #0e7379">Gastos</span>
                            </a>
                            <ul class="ml-menu">
                                <li>
                                    <a href="servicios.jsp" >
                                        <span>Proveedores</span>
                                    </a>

                                </li>
                                <li>
                                    <a href="sueldos.jsp" >
                                        <span >Sueldos</span>
                                    </a>

                                </li>
                                <li>
                                    <a href="compras.jsp" >
                                        <span style="color: #0e7379">Compras y otros gastos</span>
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
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="overview-wrap">
                                        <h2 class="title-1"></h2>

                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="body">

                                    <button  class="btn bg-teal "   data-toggle="modal" data-target="#mdModal" style="font-size: 15px">
                                        Añadir Compra
                                    </button>

                                </div>           
                            </div>  
                            <br>

                            <div class="table-responsive  table--no-card m-b-40">
                                <table  class="table table-bordered table-striped table-hover dataTable js-exportable  ">
                                    <thead>
                                        <tr>


                                            <th class="text-right">Fecha</th>

                                            <th class="text-right">Tipo de comprobante</th>
                                            <th class="text-right">Comprobante de pago</th>
                                            <th class="text-right">Servicio</th>
                                            <th class="text-right">Monto</th>
                                            <th class="text-right">Observación</th>

                                            <th class="text-center"></th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%for (compra c : compraDao.listar()) {%>

                                        <tr>

                                            <td class="text-right"><%=c.getFecha()%></td>
                                            <td class="text-right"><%=c.getComprobante_tipo()%></td>
                                            <td class="text-right"><%=c.getComprobante_numero()%></td>
                                            <td class="text-right"><%=c.getImporte()%></td>
                                            <td class="text-right"><%=c.getTipo()%></td>
                                            <td class="text-right"><%=c.getDescripcion()%></td>

                                            <td class="text-center"><button onclick="eliminar(<%=c.getId()%>)" class="btn bg-teal btn-lg waves-effect btn-xs">Eliminar</button></td>

                                        </tr>

                                        <% }%>
                                    </tbody>
                                </table>
                            </div>


                        </div>
                    </div>
                </div>
                <!-- END MAIN CONTENT-->
                <!-- END PAGE CONTAINER-->
            </div>




            <div class="modal fade" id="mdModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form action="compraRegistrar" method="post"> 
                            <div class="modal-header">
                                <h4 class="text-center" id="defaultModalLabel" style="color: #0e7379">Registrar Compra</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">   
                                        <div class="section__content section__content--p30">

                                            <div class="body">
                                                <div class="demo-masked-input">


                                                    <div class="row">
                                                        <b>Fecha</b>
                                                        <div class="input-group">

                                                            <div class="form-line">
                                                                <input name="fecha" type="date" required class="form-control date" >
                                                            </div>
                                                        </div>
                                                    </div>  

                                                    <div class="row">
                                                        <b>Comprobante de pago</b>
                                                        <div class="input-group">


                                                            <select class="form-control show-tick"  required name="comprobante_tipo">


                                                                <option value="">Seleccione comprobante</option>
                                                                <option>N°orden</option>
                                                                <option>Factura</option>
                                                                <option>Boleta</option>


                                                            </select>


                                                        </div>
                                                    </div>  

                                                    <div class="row">
                                                        <b>Comprobante de pago</b>
                                                        <div class="input-group">

                                                            <div class="form-line">

                                                                <input  name="comprobante_numero" required onkeypress="return justNumbers();" class="form-control"  maxlength="12" placeholder="N° de comprobante" autocomplete="off">

                                                            </div>
                                                        </div>
                                                    </div>  



                                                    <div class="row">

                                                        <b>Tipo</b>

                                                        <div class="input-group">
                                                            <select class="form-control show-tick" required  name="tipo" data-live-search="true" >

                                                                <option data-subtext="" value="">Seleccione Servicio/Compra</option>
                                                                <option data-subtext="">Agua</option>
                                                                <option data-subtext="">Luz</option>
                                                                <option data-subtext="">Internet</option>

                                                                <option data-subtext="">Útiles de oficina</option>
                                                                <option data-subtext="">Útiles de Limpieza</option>
                                                                <option data-subtext="">IGV</option>
                                                                <option data-subtext="">Otros</option>



                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <b>Importe</b>
                                                        <div class="input-group">

                                                            <div class="form-line">
                                                                <input  name="importe" required onkeypress="return justNumbers()" class="form-control" >

                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="row">
                                                        <b>Observación</b>
                                                        <div class="input-group">

                                                            <div class="form-line">
                                                                <input  type="text" name="descripcion" class="form-control text"   placeholder="" autocomplete="off">

                                                            </div>
                                                        </div>
                                                    </div>  



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-footer">
                                    <button type="submit" class="btn bg-teal waves-effect">Guardar</button>
                                    <button type="button" class="btn bg-teal waves-effect" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!--MODAL ELIMINAR -->                              
            <div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="text-center" id="defaultModalLabel">Eliminar Pago</h4>
                        </div>
                        <div class="modal-body">
                            <p align="left" style="color: #000 "><big>¿Está seguro de eliminar este pago?</big></p>
                        </div>
                        <form action="compraEliminar" method="post">  
                            <div class="modal-footer">
                                <button type="submit" name="compra" id="btneliminar" class="btn  bg-teal waves-effect">Eliminar</button>
                                <button type="button" class="btn  waves-effect" data-dismiss="modal">Cerrar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <script>
                function eliminar(id) {

                    $('#ModalEliminar').modal('show');
                    $('#btneliminar').val(id);


                }
                ;
          
            </script>






        </section>
        <script type="text/javascript" src="js/funciones.js"></script>
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


