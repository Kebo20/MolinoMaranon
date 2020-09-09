
<%@page import="dao.sacoDao"%>
<%@page import="dao.agricultorDao"%>
<%@page import="modelo.agricultor"%>
<%@page import="modelo.campaña"%>
<%@page import="modelo.saco"%>
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

    <body class="theme-red" >
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
                        <li class="active">
                            <a href="javascript:void(0);"  class="menu-toggle">
                                <i class="material-icons"></i>
                                <span  style="color: #0e7379">Ventas</span>
                            </a>
                            <ul class="ml-menu">
                                <li>
                                    <a href="ventas.jsp" >
                                        <span  style="color: #0e7379">Registrar</span>
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
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="overview-wrap">
                                        <h2 class="title-1"></h2>

                                    </div>
                                </div>
                            </div>

                            <script>


                                function produccion() {

                                    var producto = $('#producto').val();
                                    var campana = $('#campaña').val();

                                    $.ajax({
                                        url: "produccionCantidad",
                                        data: {
                                            producto: producto,
                                            campana: campana




                                        },
                                        success: function (result) {


                                            $('#cantidad_disponible').val(result);
                                        }
                                    })
                                }
                                ;


                                function campañas_agricultor() {
                                    var agricultor = $('#agricultor').val();
                                    $('#producto').val("");
                                    $('#producto').trigger('change');

                                    $.ajax({
                                        url: "campanaAgricultor",
                                        data: {
                                            agricultor: agricultor





                                        },
                                        success: function (result) {


                                            $('#campañas_agricultor').html(result);
                                            $('#productos_campaña').html("<select id='producto' name='producto' class='form-control' onclick='produccion()' required > </select>");
                                        }
                                    });
                                }

                                function productos_campaña() {
                                    var campaña = $('#campaña').val();


                                    $.ajax({
                                        url: "productosCampana",
                                        data: {
                                            campana: campaña





                                        },
                                        success: function (result) {


                                            $('#productos_campaña').html(result);
                                        }
                                    });
                                }

                                function agregarV() {

                                    var producto = $('#producto').val();
                                    var numero_orden = $('#numero_orden').val();


                                    var total = $('#total').val();
                                    var fecha = $('#fecha').val();
                                    var saco = $('#saco').val();
                                    var campaña = $('#campaña').val();
                                    var cantidad = $('#cantidad').val();
                                    var cantidad_disponible = $('#cantidad_disponible').val();
                                    var precio = $('#precio').val();


                                    if (numero_orden == "" || producto == "" || fecha == "" || cantidad == "" || precio == "" || campaña == "" || producto == "" || total == "") {

                                        $('#btnform').click();


                                    } else
                                    if (cantidad > cantidad_disponible) {
                                        $('#btnnotificacionC').click();
                                    } else {
                                        $.ajax({
                                            url: "ventaRegistrar",
                                            data: {
                                                numero_orden: numero_orden,
                                                fecha: fecha,
                                                producto: producto,
                                                saco: saco,
                                                precio: precio,
                                                cantidad: cantidad,
                                                total: precio * cantidad,
                                                campana: campaña


                                            },
                                            success: function (result) {
                                                if (result == "") {

                                                    $('#btnnotificacionRn').click();


                                                } else {

                                                    $('#btnnotificacionR').click();
                                                    $('#producto').val("");
                                                    $('#producto').trigger('change');
                                                    $('#agricultor').val("");
                                                    $('#agricultor').trigger('change');
                                                    $('#saco').val("");
                                                    $('#saco').trigger('change');
                                                    $('#total').val("");

                                                    $('#cantidad_disponible').val(" ");
                                                    $('#cantidad').val("");
                                                    $('#precio').val("");
                                                }

                                            }
                                        });
                                    }


                                }
                                ;

                                function justNumbers(e)
                                {
                                    var keynum = window.event ? window.event.keyCode : e.which;
                                    if ((keynum == 8) || (keynum == 46))
                                        return true;

                                    return /\d/.test(String.fromCharCode(keynum));
                                }
                                ;






                            </script>   

                            <!-- Masked Input -->
                            <div class="row clearfix">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="card">
                                        <div class="header">
                                            <h2>
                                                Registrar Venta
                                            </h2>

                                        </div>
                                        <div class="body">

                                            <form>  
                                                <button style="border: 0px"  id="btnform" type="submit">

                                                </button>
                                                <div class="demo-masked-input">

                                                    <div class="row clearfix">


                                                        <div class="col-md-3">
                                                            <p>
                                                                <b>Agricultor</b>
                                                            </p>

                                                            <select id="agricultor" onchange="campañas_agricultor()"   class="form-control show-tick" data-live-search="true"  required>

                                                                <option value="">Seleccione Agricultor</option>
                                                                <%for (agricultor a : agricultorDao.listar()) {%>
                                                                <option    value="<%=a.getId()%>"><%=a.getNombre()%></option>
                                                                <%}%>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-3">  
                                                            <p>
                                                                <b>Campaña</b>
                                                            </p>
                                                            <div  id="campañas_agricultor"  >
                                                                <select id='campaña' name='campana' class="form-control"  data-live-search="true" required>
                                                                    <option value="">Seleccione campaña</option>

                                                                </select>
                                                            </div>




                                                        </div>
                                                        <div class="col-md-3">
                                                            <p>
                                                                <b>Producto</b>
                                                            </p>


                                                            <select id='producto' name='producto' class="form-control" onchange="produccion()" required>
                                                                <option value="">Seleccione producto</option>
                                                                <option value="1">Arroz</option>
                                                                <option value="2">Arrocillo</option>
                                                                <option value="3">Descarte</option>
                                                                <option value="4">Polvillo</option>
                                                                <option value="5">Ñelen</option>
                                                            </select>


                                                        </div>  
                                                        <div class="col-md-3">
                                                            <b>Cantidad disponible</b>
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-shopping-cart"></i>
                                                                </span>
                                                                <div class="form-line">
                                                                    <input  id="cantidad_disponible" class="form-control  btn-default "   readonly>

                                                                </div>
                                                            </div>
                                                        </div>  




                                                        <div class="col-md-3">
                                                            <b>Número de orden</b>
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-file"></i>
                                                                </span>
                                                                <div class="form-line">
                                                                    <input  id='numero_orden' onkeypress="return justNumbers();" class="form-control"  placeholder="" autocomplete="off" required="">

                                                                </div>
                                                            </div>
                                                        </div>  
                                                        <div class="col-md-3">
                                                            <b>Fecha</b>
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-calendar-plus"></i>
                                                                </span>
                                                                <div class="form-line">
                                                                    <input id='fecha' type="date" class="form-control " required="">
                                                                </div>
                                                            </div>
                                                        </div>




                                                        <div class="col-md-3">
                                                            <p>
                                                                <b>Saco</b>
                                                            </p>
                                                            <select  id='saco' class="form-control" data-show-subtext="true" required="">
                                                                
                                                                <option value="">Seleccione saco</option>
                                                                <%for (saco s :  sacoDao.listar()) {  %>
                                                                <option value="<%=s.getId() %>" ><%=s.getNombre()%></option>
                                                                <% }%>
                                                            </select>
                                                        </div>


                                                        <div class="col-md-3">
                                                            <b>Cantidad</b>
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-calculator"></i>
                                                                </span>
                                                                <div class="form-line">
                                                                    <input   class="form-control"  id='cantidad'    onload="total()" onkeypress="return justNumbers(event);" placeholder="Cantidad" required="" autocomplete="off">

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <b>Precio (S/.)</b>
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-dollar"></i>
                                                                </span>
                                                                <div class="form-line">
                                                                    <input  id='precio'  class="form-control"  required="" onkeyup="total()" onkeypress="return justNumbers();" placeholder="Precio" autocomplete="off">

                                                                </div>
                                                            </div>
                                                        </div> 





                                                    </div>
                                                </div>


                                            </form>   

                                        </div>

                                        <div style="text-align: center">

                                            <button  onclick="agregarV()" class="btn bg-teal  btn-lg waves-effect" >
                                                GUARDAR
                                            </button>
                                            <a id="btnnotificacionR"  onclick="showNotification('bg-teal', 'Se registró correctamente', 'bottom', 'right', 'animated lightSpeedIn', 'animated lightSpeedOut')" ></a>
                                            <a id="btnnotificacionRn"  onclick="showNotification('bg-black', 'No se puede registrar la venta', 'bottom', 'right', 'animated lightSpeedIn', 'animated lightSpeedOut')" ></a>
                                            <a id="btnnotificacionC"  onclick="showNotification('bg-black', 'La cantidad seleccionada excede el stock', 'top', 'right', 'animated lightSpeedIn', 'animated lightSpeedOut')" ></a>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- #END# Masked Input -->

                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->









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
        <script src="plugins/bootstrap-notify/bootstrap-notify.js"></script>
        <!-- Custom Js -->
        <script src="js/admin.js"></script>
        <script src="js/pages/tables/jquery-datatable.js"></script>

        <!-- Demo Js -->
        <script src="js/demo.js"></script>
        <script src="js/pages/ui/notifications.js"></script>
        <script src="js/pages/ui/modals.js"></script>


    </body>

</html>

