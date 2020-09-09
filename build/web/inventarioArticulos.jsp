<%@page import="modelo.proveedor"%>
<%@page import="dao.proveedorDao"%>
<%@page import="dao.inventarioDao"%>
<%@page import="modelo.inventario"%>
<%@page import="dao.trabajadorDao"%>
<%@page import="modelo.trabajador"%>
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



                        <li class="pull-right"><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"></a></li>
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
                                <span >Trabajadores</span>
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
                                        <span style="color:  #0e7379">Materiales</span>
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

                                    <h2 class="title-1 m-b-25">Inventario
                                        <button   class="btn bg-teal  waves-effect"  data-toggle="modal" data-target="#ModalRegistrar"   >  Añadir</button>       
                                    </h2>

                                    <div class="table-responsive table--no-card m-b-40">

                                        <table class="table table-bordered table-striped table-hover js-exportable dataTable">
                                            <thead>
                                                <tr>



                                                    <th class="text-center">Nombre</th>

                                                    <th class="text-center">Ubicación</th>
                                                    <th class="text-center">Marca</th>
                                                    <th class="text-center">Cantidad</th>
                                                    <th class="text-center">Precio</th>
                                                    <th class="text-center">Valor de inventario</th>
                                                    <th class="text-center">Descripción</th>
                                                    <th class="text-center">Proveedor</th>
                                                    <th class="text-center"></th>
                                                    <th class="text-center"></th>




                                                </tr>
                                            </thead>
                                            <tbody>
                                                <% for (inventario i : inventarioDao.listar()) {%>
                                                <tr>



                                                    <td style="width: 25%" class="text-left"><%=i.getNombre()%></td>
                                                    <td style="width: 10%" class="text-left"><%=i.getUbicacion()%></td>
                                                    <td style="width: 10%" class="text-left"><%=i.getMarca()%></td>
                                                    <td style="width: 10%" class="text-left"><%=i.getCantidad()%></td>
                                                    <td style="width: 10%" class="text-left"><%=i.getPrecio()%></td>
                                                    <td style="width: 10%" class="text-left"><%=i.getValor_inventario()%></td>
                                                    <td style="width: 10%" class="text-left"><%=i.getDescripcion()%></td>
                                                    <td style="width: 10%" class="text-left"><%=proveedorDao.empresa(i.getId_proveedori())%></td>



                                                    <td style="width: 5%"  class="text-center"><button onclick="editar('<%=i.getId()%>', '<%=i.getNombre()%>', '<%=i.getUbicacion()%>', '<%=i.getMarca()%>', '<%=i.getCantidad()%>', '<%=i.getPrecio()%>', '<%=i.getValor_inventario()%>', '<%=i.getDescripcion()%>', <%=i.getId_proveedori()%>)" class="btn bg-teal btn-lg waves-effect btn-xs">Editar</button></td>
                                                    <td style="width: 5%" class="text-center"><button     onclick='eliminar(<%=i.getId()%>)'  class="btn bg-teal btn-lg waves-effect btn-xs">Eliminar</button></td>
                                                </tr>

                                                <% }%>


                                            </tbody>
                                        </table>



                                    </div>  
                                    <script>
                                        function eliminar(id) {

                                            $('#ModalEliminar').modal('show');
                                            $('#btneliminar').val(id);


                                        }
                                        ;

                                        function editar(id, nombre, ubicacion, marca, cantidad, precio, valor, descripcion, proveedor) {
                                            $('#ModalEditar').modal('show');
                                            $('#idE').val(id);

                                            $('#ubicacionE').val(ubicacion);
                                            $('#nombreE').val(nombre);
                                            $('#marcaE').val(marca);
                                            $('#cantidadE').val(cantidad);
                                            $('#precioE').val(precio);
                                            $('#valorE').val(valor);
                                            $('#descripcionE').val(descripcion);
                                            $('#proveedorE').val(proveedor);
                                            $('#proveedorE').trigger('change');


                                        }

                                      



                                    </script>





                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">

                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="copyright">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END MAIN CONTENT-->
                <!-- END PAGE CONTAINER-->


            </div>

            <!--MODAL ELIMINAR -->                              
            <div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="text-center" id="defaultModalLabel">Eliminar artículo</h4>
                        </div>
                        <div class="modal-body">
                            <p align="left" style="color: #000 "><big>¿Está seguro de eliminar este artículo?</big></p>
                        </div>
                        <form action="inventarioEliminar" method="post">  
                            <div class="modal-footer">
                                <button type="submit" name="inventario" id="btneliminar" class="btn  bg-teal waves-effect">Eliminar</button>
                                <button type="button" class="btn  waves-effect" data-dismiss="modal">Cerrar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!--MODAL EDITAR -->                             
            <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form action="inventarioEditar" method="post"> 
                            <div class="modal-header">
                                <h4 class="text-center"  >Editar artículo</h4>
                            </div>
                            <div class="modal-body">

                                <div class="row clearfix">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">   
                                        <div class="section__content section__content--p30">

                                            <div class="body">
                                                <input type="hidden" id="idE" name="id">   



                                                <div class="row">
                                                    <b>Nombres del artículo</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-book"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input  type="text" id="nombreE" name="nombre" class="form-control text"  placeholder="Nombres del artículo en inventario" autocomplete="off" required>

                                                        </div>
                                                    </div>
                                                </div>  


                                                <div class="row">
                                                    <b>Ubicación</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-phone"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input   class="form-control" id="ubicacionE" name="ubicacion"  placeholder="" >

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <b>Marca</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-phone"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input   class="form-control" id="marcaE" name="marca"  placeholder="" >

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <b>Descripción</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-phone"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input   class="form-control" id="descripcionE" name="descripcion"  placeholder="" >

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <b>Cantidad</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-phone"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input   class="form-control" id="cantidadE" name="cantidad" required onkeypress="return justNumbers();" placeholder="" autocomplete="off">

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <b>Precio</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-phone"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input   class="form-control" id="precioE" name="precio"  onkeypress="return justNumbers();" placeholder="" autocomplete="off">

                                                        </div>
                                                    </div>
                                                </div>
                                        
                                                <div class="row">
                                                    <p>
                                                        <b>Proveedor</b>
                                                    </p>
                                                    <select id="proveedorE" name="proveedor" class="form-control show-tick"  data-live-search="true" >
                                                        <option value="" >Seleccione proveedor</option>
                                                        <%for (proveedor p : proveedorDao.listar()) {%>
                                                        <option value="<%=p.getId()%>" ><%=p.getEmpresa()%></option>
                                                        <% }%>
                                                    </select>
                                                </div> 
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="modal-footer">
                                <input  type="submit" class="btn bg-teal  waves-effect" value="Guardar" >
                                <button type="button" class="btn  waves-effect" data-dismiss="modal">Cerrar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="ModalRegistrar" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form action="inventarioRegistrar" method="post"> 
                            <div class="modal-header">
                                <h4 class="text-center"  >Registrar artículo</h4>
                            </div>
                            <div class="modal-body">

                                <div class="row clearfix">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">   
                                        <div class="section__content section__content--p30">

                                            <div class="body">
                                                <div class="row">
                                                    <b>Nombres del artículo</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-book"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input  type="text" id="nombre" name="nombre" class="form-control text"  placeholder="Nombres del artículo en inventario" autocomplete="off" required>

                                                        </div>
                                                    </div>
                                                </div>  


                                                <div class="row">
                                                    <b>Ubicación</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-phone"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input   class="form-control" id="ubicacion" name="ubicacion" required placeholder="" >

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <b>Marca</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-phone"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input   class="form-control" id="marca" name="marca"  placeholder="" >

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <b>Descripción</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-phone"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input   class="form-control" id="descripcion" name="descripcion"  placeholder="" >

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <b>Cantidad</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-phone"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input   class="form-control" id="cantidad" name="cantidad"  required onkeypress="return justNumbers();" placeholder="" autocomplete="off">

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <b>Precio</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-phone"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input   class="form-control" id="precio" name="precio"  onkeypress="return justNumbers();" placeholder="" autocomplete="off">

                                                        </div>
                                                    </div>
                                                </div>
                                        
                                                <div class="row">
                                                    <p>
                                                        <b>Proveedor</b>
                                                    </p>
                                                    <select id="proveedor" name="proveedor" class="form-control show-tick"  data-live-search="true" >
                                                        <option value="" >Seleccione proveedor</option>
                                                        <%for (proveedor p : proveedorDao.listar()) {%>
                                                        <option value="<%=p.getId()%>" ><%=p.getEmpresa()%></option>
                                                        <% }%>
                                                    </select>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>

                            <div class="modal-footer">
                                <input  type="submit" class="btn bg-teal  waves-effect" value="Guardar" >
                                <button type="button" class="btn  waves-effect" data-dismiss="modal">Cerrar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>









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

